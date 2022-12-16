+++
date = "16 Dec 2022"
draft = false
title = "Dissecting Distribution Inference"
author = "Anshuman Suri"
categories = ["conferences", "research"]
tags = ["property inference", "distribution inference", "Anshuman Suri", "Yifu Lu", "Yanjin Chen", "privacy-preserving machine learning"]
math = true
+++

(Cross-post by [Anshuman Suri](https://www.anshumansuri.me/post/dissecting))

Distribution inference attacks aims to infer statistical properties of data used to train machine learning models.
These attacks are sometimes surprisingly potent, as we demonstrated in
[previous work](https://uvasrg.github.io/on-the-risks-of-distribution-inference/).

<!-- However, the factors that impact this inference risk are not well understood, and demonstrated attacks often
rely on strong and unrealistic assumptions such as full knowledge of training environments
even in supposedly black-box threat scenarios. -->

<!-- In this work, we develop a new black-box attack, the KL Divergence Attack (KL), and use it to evaluate inference risk while relaxing
a number of implicit assumptions based on the adversary's knowledge in black-box scenarios. We also evaluate several noise-based defenses, a
standard approach while trying to preserve privacy in machine learning, along with some intuitive defenses based on resampling. -->

## KL Divergence Attack

Most attacks against distribution inference involve training a meta-classifier, either using model parameters in white-box settings (Ganju et al., [Property Inference Attacks on Fully Connected Neural Networks using Permutation Invariant Representations](https://dl.acm.org/doi/pdf/10.1145/3243734.3243834), CCS 2018), or using model
predictions in black-box scenarios (Zhang et al., [Leakage of Dataset Properties in Multi-Party Machine Learning](https://www.usenix.org/system/files/sec21-zhang-wanrong.pdf), USENIX 2021). While other black-box were proposed in our prior work, they are not as accurate as meta-classifier-based methods, and require training shadow models nonetheless (Suri and Evans, [Formalizing and Estimating Distribution Inference Risks](https://arxiv.org/pdf/2109.06024.pdf), PETS 2022).

We propose a new attack: the KL Divergence Attack. Using some sample of data, the adversary computes predictions on local models from both distributions as well as the victim's model. Then, it uses the prediction probabilities to compute KL divergence between the victim's models and the local models to make its predictions. Our attack outperforms even the current state-of-the-art white-box attacks.
<!-- In fact, we show that using as few as five local models for training it can still to achieve significant inference leakage. -->
<!-- also relies on training auxiliary models, but does not require more than API access to the target model and -->

<br>
We observe several interesting trends across our experiments. One striking example is that with varying task-property correlation.
While intuition suggests increasing inference leakage with increasing correlation between the classifier's task and the property being inferred, we observe
no such trend:

<center>
<a href="/images/distributioninference2022/correlation_box.png"><img style="width: 65%" src="/images/distributioninference2022/correlation_box.png" alt="Graph of accuracy for properties with different correlation"/></a>
</center>
<div class="caption">
Distinguishing accuracy for different task-property pairs for Celeb-A dataset for varying correlation. Task-property correlations are: $\approx 0$ (Mouth Slightly Open-Wavy Hair), $\approx 0.14$ (Smiling-Female), $\approx 0.28$ (Female-Young), and $\approx 0.42$ (Mouth Slightly Open-High Cheekbones).
</div>

</br>

## Impact of adversary's knowledge

We evaluate inference risk while relaxing a variety of implicit assumptions of the adversary;s knowledge in black-box setups. Concretely, we evaluate label-only API access settings, different victim-adversary feature extractors, and different victim-adversary model architectures.

<table>
<tr>
    <th rowspan="2"> Victim Model </th>
    <th colspan="4"> Adversary Model </th>
</tr>
<tr>
    <th> RF </th>
    <th> LR </th>
    <th> MLP$_2$ </th>
    <th> MLP$_3$ </th>
</tr>
  <tr>
    <td>Random Forest (RF)</td>
    <td> 12.0 </td>
    <td> 1.7 </td>
    <td> 5.4 </td>
    <td> 4.9 </td>
  </tr>
  <tr>
    <td>Linear Regression (LR)</td>
    <td> 13.5 </td>
    <td> 25.9 </td>
    <td> 3.7 </td>
    <td> 5.4 </td>
  </tr>
  <tr>
    <td>Two-layer perceptron (MLP$_2$)</td>
    <td> 0.9 </td>
    <td> 0.3 </td>
    <td> 4.2 </td>
    <td> 4.3 </td>
  </tr>
  <tr>
    <td>Three-layer perceptron (MLP$_3$)</td>
    <td> 0.2 </td>
    <td> 0.3 </td>
    <td> 4.0 </td>
    <td> 3.8 </td>
  </tr>
</table>

Consider inference leakage for the Census19 dataset (table above with mean $n_{leaked}$ values) as an example. Inference risk is significantly higher when the adversary uses models with learning capacity similar to the victim, like both using one of (MLP$_2$, MLP$_3$) or (RF, MLP). Interestingly though, we also observe a sharp increase in inference risk when the victim uses models with low capacity, like LR and RF instead of multi-layer perceptrons.
<!-- These trends hint at possible connections between distribution inference risk and model learning capacity. -->

## Defenses

Finally, we evaluate the effectiveness of some empirical defenses, most of which add noise to the training process.

For instance while inference leakage reduces when the victim utilizes DP, most of the drop in effectiveness comes from a mismatch in the victim's and adversary's training environments:

<center>
<A href="/images/distributioninference2022/dp_box.png"><img style="width: 65%" src="/images/distributioninference2022/dp_box.png" /></a>
</center>
<div class="caption">
Distinguishing accuracy for different for Census19 (Sex). Attack accuracy drops with stronger DP guarantees i.e. decreasing privacy budget $\epsilon$.
</div>
<br>

Compared to an adversary that does not use DP, there is a clear increase in inference risk (mean $n_{leaked}$ increases to 2.9 for $\epsilon=1.0$, and 4.8 for $\epsilon=0.12$ compared to 4.2 without any DP noise).
<!-- in  Since noise-based mechanisms for Differential Privacy (DP) provide membership inference privacy, we evaluate them as a defense against distribution inference attacks to see if the same technique of adding noise can be helpful in this setting. -->
<br>
Our exploration of potential defenses also reveals a strong connection between model generalization and inference risk (as apparent below, for the case of Celeb-A), suggesting that the defenses that do seem to work are attributable to poor model performance, and not something special about the defense itself (like adversarial training or label noise).


<center>
<img style="width: 80%" src="/images/distributioninference2022/generalization_curve.png" />
</center>
<div class="caption">
Mean distinguishing accuracy on Celeb-A (Sex), for varying number of training epochs for victim models. Shaded regions correspond to error bars. Distribution inference risk increases as the model trains, and then starts to decrease as the model starts to overfit.
</div>

</br>


## Summary

The general approach to achieve security and privacy for machine-learning models is to add noise, but our evaluations suggest this approach is not a principled or effective defense against distribution inference. The main reductions in inference accuracy that result from these defenses seem to be due to the way they disrupt the model from learning the distribution well.

<b>Paper</b>: [Anshuman Suri](http://anshumansuri.me/), Yifu Lu, Yanjin Chen, [David Evans](http://www.cs.virginia.edu/~evans/). [_Dissecting Distribution Inference_](https://arxiv.org/abs/2212.07591).
In <a href="https://satml.org/"><em>IEEE Conference on Secure and Trustworthy Machine Learning</em> (SaTML), 8-10 February 2023.

<b>Code</b>: [https://github.com/iamgroot42/dissecting_distribution_inference](https://github.com/iamgroot42/dissecting_distribution_inference)
