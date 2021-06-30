+++
date = "29 Jun 2021"
draft = false
author = "Sean Miller"
title = "Model-Targeted Poisoning Attacks with Provable Convergence"
categories = ["publications"]
tags = ["adversarial machine learning", "model-targeted poisoning attacks", "Fnu Suya", "Saeed Mahloujifar", "Anshuman Suri", "David Evans", "Yuan Tian", "ICML 2021"]
+++

(Post by Sean Miller, using images adapted from Suya's talk slides)

## Data Poisoning Attacks

Machine learning models are often trained using data from untrusted
sources, leaving them open to poisoning attacks where adversaries use
their control over a small fraction of that training data to poison
the model in a particular way.

Most work on poisoning attacks is directly driven by an attacker's
objective, where the adversary chooses poisoning points that maximize
some target objective. Our work focuses on _model-targeted_ poisoning
attacks, where the adversary splits the attack into choosing a target
model that satisfies the objective and then choosing poisoning points
that induce the target model.

<center>
<a href="/images/model-targeted-poisoning/difference-between-model-types.png"><img src="/images/model-targeted-poisoning/difference-between-model-types.png" width="80%" align="center"></a>
</center><br/>


The advantage of the model-targeted approach is that while
objective-driven attacks must be designed for a specific objective and
tend to result in difficult optimization problems for complex
objectives, model-targeted attacks only depend on the target
model. That model can be selected to incorporate any attacker
objective, allowing the same attack to be easily applied to many
different objectives.

## The Attack

Our attack requires the desired target model and the clean training
data. We sequentially train a model on the mixture of the clean
training points and the poisoning points found so far (which at the
start is none) in order to generate an intermediate model. We then
find a point that maximizes the loss difference between the
intermediate model and the target model, and then add that point to
the poisoning data for the next iteration.  The process repeats until
some stopping condition is met (such as the maximum loss difference
between the intermediate and target models being smaller than a
threshold value).

<center>
<a href="/images/model-targeted-poisoning/attack-diagram.png"><img src="/images/model-targeted-poisoning/attack-diagram.png" width="80%" align="center"></a>
</center><br/>


We prove two important features of our attack:

1. If our loss function is Lipschitz continuous and strongly convex, the induced model converges to the target model. _This is the first model-targeted attack with provable convergence_.

2. For any loss function, we can empirically find a lower bound on the
number of poisoning points required to produce the target
classifier. This allows us to check the optimality of any
model-targeted attack.

## Experimental Results

To test our attack, we use subpopulation and indiscriminate attack scenarios on SVM and linear regression models for the Adult, MNIST 1-7, and Dogfish datasets. We compare our attack to the state-of-the-art model targeted KKT attack from Pang Wei Koh, Jacob Steinhardt, and Percy Liang, [_Stronger data poisoning attacks break data sanitation defenses_](https://arxiv.org/abs/1811.00741), 2018.

Our attack steadily reduces the Euclidean distance to the target
model, indicating convergence, while the KKT attack does not reliably
converge to the target even as more poisoning points are used:

<center>
<a href="/images/model-targeted-poisoning/attack-convergence.png"><img src="/images/model-targeted-poisoning/attack-convergence.png" width="50%" align="center"></a>
</center><br/>


Next, we compare our attack to the KKT attack based on attack
success. For the subpopulation attack on the left, where the attacker
aims to reduce model accuracy only on a subpopulation of the data, our
attack is significantly more successful in increasing error on the
subpopulation than the KKT attack for the same number of poisoning
points. In the indiscriminate setting (right side of figure), where
the attacker aims to reduce overall model accuracy, our attack is
comparable to the KKT attack.

<center>
<a href="/images/model-targeted-poisoning/success-comparison.png"><img src="/images/model-targeted-poisoning/success-comparison.png" width="90%" align="center"></a>
</center>


Finally, we also compare our computed number of poisoning points to
the theoretical lower bound on points to see the optimality of our
attack. For the Adult dataset on the left, the gap between the lower
bound and the number of points used is small, so our attack is close
to optimal. However, for the other two datasets on the right, there
still is a gap between the lower bound and the number actually used,
indicating that the attack might not be optimal.


<center>
<a href="/images/model-targeted-poisoning/optimality.png"><img src="/images/model-targeted-poisoning/optimality.png" width="90%" align="center"></a>
</center>


## Summary

We propose a model-targeted poisoning attack that is proven to
converge theoretically and empirically, along with a lower bound on
the number of poisoning points needed. Since our attack is
model-targeted, we can select a target model that can achieve any goal
of an adversary and then induce that model through poisoning attacks,
allowing our attack to satisfy any number of objectives.

## Full Paper

[Fnu Suya](https://fsuya.org/), [Saeed Mahloujifar](https://smahloujifar.github.io/), [Anshuman Suri](https://www.anshumansuri.me/), [David Evans](https://www.cs.virginia.edu/evans/), [Yuan Tian](https://www.ytian.info/). <a
href="https://arxiv.org/abs/2006.16469">Model-Targeted Poisoning
Attacks with Provable Convergence.</a> In [_Thirty-eighth
International Conference on Machine
Learning_](https://icml.cc/Conferences/2021) (ICML), July 2021. [[arXiv](https://arxiv.org/abs/2006.16469)] [[PDF](https://arxiv.org/pdf/2006.16469)]

## Code

[https://github.com/suyeecav/model-targeted-poisoning](https://github.com/suyeecav/model-targeted-poisoning)