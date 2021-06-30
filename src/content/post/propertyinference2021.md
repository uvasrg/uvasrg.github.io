+++
date = "24 Jun 2021"
draft = false
title = "On the Risks of Distribution Inference"
author = "Anshuman Suri"
categories = ["conferences"]
tags = ["property inference", "distribution inference", "Anshuman Suri"]
math = true
+++

(Cross-post by [Anshuman Suri](https://www.anshumansuri.me/post/distr_infer))

Inference attacks seek to infer sensitive information about the training process of a revealed machine-learned model, most often about the training data.

Standard inference attacks (which we call “dataset inference attacks”)
aim to learn something about a particular record that may have been in
that training data. For example, in a membership inference attack
(Reza Shokri et al., [_Membership Inference Attacks Against Machine
Learning
Models_](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=7958568), IEEE S&amp;P 2017),
the adversary aims to infer whether or not a particular record was
included in the training data.

Differential Privacy provides a theoretical notion of privacy that
maps well to membership inference attacks. However, it provides
privacy at the dataset level. Thus, it doesn’t capture attacks that
violate privacy at the distribution level. This is where property
inference comes in. Property inference, a different kind of inference
risk, involves an adversary that aims to infer some statistical
property of the training distribution.

We illustrate the kind of risks introduced by property inference via a
fictional example. Skynet, an (imaginary) organization that handles
private data, releases a machine learning model $M$ trained on their
network flow graphs to predict faulty nodes in a network of
servers. However, an adversary ($\mathcal{A}$) that wishes to launch a
bot-net into this cluster of servers sees an opportunity in this
model. They seek to infer whether the effective diameter ($90^{th}$
percentile of all pair-wise shortest paths) of the network is below 6
($\mathcal{D}_0$) or not ($\mathcal{D}_1$). 

<center>
{{< figure src="/images/propertyinference2021/example.png">}}
</center>
<div class="caption">
<b>Illustration of a property inference attack.</b> The adversary infers the effective diameter of the underlying network from the model trained to predict an unrelated property.
</div>

<br>

We picked this property as an example based on useful properties cited
in the traffic classification literature (e.g., <a
href="http://www.eecs.harvard.edu/~michaelm/postscripts/GI2009.pdf">Iliofotou,
et al.</a>). Learning this property might be useful for the adversary
in crafting a bot-net that would not be detected by Skynet's
bot-detection software. The main point of the illustration is to
convey that an adversary can infer properties of the underlying data
distribution that a model producer would not expect and that might be
valuable to the adversary.


## Formalizing Property Inference

To formalize property inference attacks, we adapt the cryptographic game for membership inference proposed by Yeom et al. ([_Privacy Risk in Machine Learning: Analyzing the Connection to Overfitting_](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=8429311), CSF 2018):

<center>
{{< figure src="/images/propertyinference2021/yeom.png" >}}
</center>

In this game, the victim samples a dataset S from the distribution $\mathcal{D}$ and trains a model $M$ on it. It then samples some data-point $z$ from either $S$ or $\mathcal{D}$, based on $b \xleftarrow{R}${0,1}. The adversary then tries to infer $b$ using algorithm $H$, given access to ($z$, $\mathcal{D}$, $M$). This cryptographic game captures the intuitive notion of membership inference. It focuses on a particular dataset and sample: inferring whether a given data point was part of training data.

In contrast, property inference focuses on properties of the underlying distribution ($\mathcal{D}$), not the dataset ($S$) itself. To capture property inference, we propose a similar cryptographic game. Instead of differentiating between the sources of a specific data point ($S$ or $\mathcal{D}$), we propose distinguishing between two distributions, $\mathcal{D}_0$ and $\mathcal{D}_1$.

<center>
{{< figure src="/images/propertyinference2021/distr.png" >}}
</center>

A model trainer $\mathcal{B}$ samples a dataset $D$ from either of the distributions $\mathcal{D}_0$, $\mathcal{D}_1$. These distributions can be obtained from the publicly know distribution $\mathcal{D}$ by applying functions $\mathcal{G}_0$, $\mathcal{G}_1$ respectively, that transform distributions (and represent the "property" an adversary might care about). So, we formalize distribution inference with this question: 

<div class="indented">
<em>Given a model trained on this dataset $D$ drawn from either distribution $\mathcal{D}_0$ or $\mathcal{D}_1$, can an adversary infer from which of $\mathcal{D}_0$, $\mathcal{D}_1$ the dataset was sampled?</em>
</div>
<br>

Frameworks like Differential Privacy do not apply here: the adversary
here cares about statistical properties of the distribution the model
was trained on, not details about a particular sampled dataset.

## Evaluating Risk of Property Inference

Most often in the literature, the adversary considers the ratio of members  in a dataset satisfying a particular Boolean function $f$ as the "property." It then aims to distinguish between models trained on datasets with different proportions.

However, these experiments often test with arbitrary ratios, making it
hard to understand the relative risk of different properties. Some
examples are Melissa Chase et al., [_Property Inference From
Poisoning_](https://arxiv.org/abs/2101.11073) (which considers 0.1 v/s
0.25) and Wanrong Zhang et al., [_Leakage of Dataset Properties in
Multi-Party Machine Learning_](https://arxiv.org/pdf/2006.07267.pdf)
(which considers 0.33 v/s 0.67).

To better understand how well an intuitive notion of divergence in properties aligns with observed inference risk, we execute property inference attacks with increasing diverging properties. We fix one property (ratio=0.5) and vary the other ($\alpha$). We perform these experiments for three datasets: focusing on the ratio of females for the [US Census](https://dl.acm.org/doi/pdf/10.1145/380995.381030) and [RSNA BoneAge](https://pubs.rsna.org/doi/pdf/10.1148/radiol.2018180736) datasets, and the average node-degree for the [OGBN arXiv](https://direct.mit.edu/qss/article/1/1/396/15572/Microsoft-Academic-Graph-When-experts-are-not) dataset.

The state-of-the-art method for property inference attacks involves meta-classifiers, usually using Permutation Invariant Networks (Karan Ganju et al., [Property Inference Attacks on Fully Connected Neural Networks using Permutation Invariant Representations](https://dl.acm.org/doi/pdf/10.1145/3243734.3243834)). After training hundreds or thousands of models locally, the adversary trains a meta-classifier on model parameters.

<center>
<video loop type="video/mp4" autoplay="yes" allowfullscreen="no" src="/images/propertyinference2021/PIM-Animation.mp4" style="width:100%;"> </video>
</center>
<div class="caption">

Illustration of the functioning of a [Permutation Invariant Network](https://dl.acm.org/doi/pdf/10.1145/3243734.3243834). The process of model-parameter extraction involves constructing permutation-invariant representations of neurons per layer $h_i$ using learnable parameters ($\phi_i$). These representations are then joined together for all layers with another learnable transform $\rho$, yielding the meta-classifier’s predictions.
</div>

<br>

We use two simple attacks (using only model outputs) as baselines:

- **Loss Test**: predict the property based on its performance on data from the same distribution it was trained, compared to the other distribution being analyzed.
- **Threshold Test**: extends the loss test by calibrating performance trends on a small set of models and arriving at a threshold based on model performance.

## Experimental Results

Our results demonstrate how a meta-classifier can differentiate between models with ratios as similar as 0.5 and 0.6:

<table>
<tr>
    <td style="width: 50%"> <img src="/images/propertyinference2021/census_meta.png"/></td>
    <td style="width: 50%"> <img src="/images/propertyinference2021/rsna_meta.png"/> </td>
</tr>
</table>
<div class="caption" id="figure1">
<b>Differentiating between models trained on datasets trained with 50% females v/s  females.</b> Orange crosses are for the Loss Test; green with error bars are the Threshold Test; the blue box-plots are the meta-classifiers.
</div>

<sub></sub>

The meta-classifier attacks provide the best predictions, but the loss-test and threshold-test can serve as valuable baselines &mdash; even these simple attacks provide accuracies significantly better than random-guessing.

### Inferring Graph Properties

Our proposed definitions allow the property to hold over the whole dataset, not just aggregate statistics like mean ratio. Thus, we focus on node-classification for a graph: differentiating between versions of the graph with varying mean node-degrees as the property. We fix one property (mean node-degree 13) and vary the other ($\alpha$). Inferring the mean node-degree is a novel property inference task since the property here holds over the entirety of training data- no such property has been explored in the literature yet.

<table>
<tr>
    <td> <img src="/images/propertyinference2021/arxiv.png"/></td>
    <td style="width:53.5%;"> <img src="/images/propertyinference2021/arxiv_degree.png"/> </td>
</tr>
<tr>
    <td>
        <div class="caption" id="figure2">
            Figure 2: Differentiating between models trained on datasets trained with mean node-degree 13 v/s  on the OGBN arXiv dataset.
        </div>
    </td>
    <td>
        <div class="caption" id="figure3">
            Figure 3: Predicting the mean node-degree of training data graphs directly with a meta-classifier on the OGBN arXiv dataset.
        </div>
    </td>
</tr>
</table>

Our results demonstrate how a meta-classifier can also be trained to directly infer the mean-node degree of graphs ([Figure 2](#figure2)). Encouraged by the success of meta-classifiers for this task, we also tried a meta-classifier variant to predict the mean-node degree of training graphs ([Figure 3](#figure3)). The resulting meta-classifier even generalizes well, accurately predicting mean node-degrees for distributions ($\alpha$={12.5, 13.5}) that it hasn't seen.

### Summary

Our work on distribution inference formalizes and shows how property inference attacks can indeed infer distribution-level properties. Our ongoing work is focused on quantifying and studying this ‘privacy leakage’ of properties and its implications.

Pre-print: [Anshuman Suri](http://anshumansuri.me/), [David Evans](http://www.cs.virginia.edu/~evans/). [_Formalizing Distribution Inference Risks_](/publication/distribution-inference/) (arXiv).

Code: [https://github.com/iamgroot42/distribution_inference](https://github.com/iamgroot42/distribution_inference)