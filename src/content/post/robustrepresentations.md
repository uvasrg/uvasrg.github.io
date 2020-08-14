+++
date = "14 Aug 2020"
draft = false
author = "Sicheng Zhu"
title = "Adversarially Robust Representations"
categories = ["publications", "presentations"]
tags = ["adversarial machine learning", "ICML", "Sicheng Zhu", "Xiao Zhang"]
slug="robustrepresentations"
+++

_Post by Sicheng Zhu_

With the rapid development of deep learning and the explosive growth
of unlabeled data, <a href="https://arxiv.org/abs/1206.5538">representation
learning</a> is becoming increasingly
important. It has made impressive applications such as pre-trained
language models (e.g., <a href="https://arxiv.org/abs/1810.04805">BERT</a> and
<a href="https://github.com/openai/gpt-3">GPT-3</a>).

Popular as it is, representation learning raises concerns about the
robustness of learned representations under adversarial settings. For
example, _how can we compare the robustness to different
representations_, and _how can we build representations that enable
robust downstream classifiers_?

In this work, we answer these questions by proposing a notion of
_adversarial robustness for representations_. We show what the best
achievable robustness for a downstream classifier is limited by a
measurable representation robustness, and provide a training principle
for learning adversarially robust representations.

# Adversarial Robustness for Representations

Despite various existing criteria for evaluating a representation
(e.g., smoothness, sparsity), there is no general way previously known
to measure a representation’s robustness under adversarial
perturbations. We propose a notion of adversarial robustness for
representations based on information-theoretic measures.

<center>
<img alt="mutualinformation" src="/images/robustreps/image1.png" style="width: 85%; margin-top: 12px; margin-bottom: 12px;"</img>
</center>

Consider a representation that maps an underlying data distribution to
a representation distribution. In this case, we can measure the
(standard-case) mutual information between the two distributions. Then
by perturbing the data distribution within a Wasserstein ball such
that the mutual information term is minimized, we can measure the
worst-case mutual information. The representation vulnerability (an
opposite notion of robustness) is defined as the difference between
the two terms.

This notion enjoys several desired properties in representation
learning scenarios-it is scale-invariant, label-free, and compatible
with different threat models (including the commonly used
_L<sub>p</sub>_ norm attacks). Most importantly, we show next that it
has a direct relationship with the performance of downstream tasks.


# Connecting Representation to Downstream Tasks

If a representation is robust, we show (theoretically in a synthetic
setting and empirically in general settings) that a properly trained
downstream classifier will perform consistently in both natural and
adversarial settings, that is the difference between the natural
accuracy and the adversarial accuracy will be small.

If a representation is not robust, we show that no robust downstream
classifiers can be built using that representation.

We provide an information-theoretic upper bound for the maximum robust
accuracy that can be achieved by any downstream classifier, with
respect to the representation robustness. We empirically evaluate the
tightness of this bound and find that the vulnerability of internal
layer representations of many neural networks is at least one
bottleneck for the model to be more robust.

For example, the representation defined by the logit layer of Resnet18
on CIFAR-10 only admits an adversarial accuracy of ~75% for any
downstream classifiers.

<center>
<img alt="miresults" src="/images/robustreps/image2a.png" style="width:60%; margin-top: 12px; margin-bottom: 12px;">
</center>

This motivates us to develop a method to learn adversarially robust
representations.

# A Learning Principle for Robust Representations

Based on the proposed notion, a natural way to learn adversarially
robust representations is to directly induce the representation
robustness on common representation learning objectives.

We consider a popular representation learning objective &mdash; <A
href="https://arxiv.org/abs/1808.06670">mutual information
maximization</a> &mdash; as it has impressive performance in practice
and many other objectives (e.g., noise contrastive estimation) can be
viewed as surrogate losses of this objective. By inducing the
representation robustness and setting a specific coefficient, we
provide the worst-case mutual information maximization principle for
learning adversarially robust representations.

We evaluate the performance of our representation learning principle
on four image classification benchmarks (MNIST, Fashion-MNIST, SVHN,
and CIFAR-10), here we report on CIFAR-10 (see the paper for the
others, where the results are similar).

<center>
<img alt="miresults" src="/images/robustreps/image2.png" style="width: 65%; margin-top: 12px; margin-bottom: 12px;">
</center>

Note that the representations are learned using only unlabeled data
and are kept fixed during the training of downstream classifiers.  The
robust downstream classifier (trained using adversarial training)
benefits from the robust representation. It has both better natural
accuracy and better adversarial accuracy. The adversarial accuracy of
~31% is even comparable to the fully-supervised robust model with the
same architecture.

Even the standard classifier based on our robust representation
inherits a non-trivial adversarial accuracy from the robust
representation. And more interestingly, they also have better natural
accuracy compared to the baseline. This phenomenon is consistent with
some <a href="https://arxiv.org/abs/1909.11764">recent work</a> using
adversarial training to learn pre-trained models and may indicate the
better standard generalization of adversarially learned
representations.


## Saliency Maps

We also visualize the saliency map of our learn representations as
side evaluation of adversarial robustness, since the relationship
between the interpretability of saliency maps and the adversarial
robustness (see [Etmann et al.](http://proceedings.mlr.press/v97/etmann19a/etmann19a.pdf)).

<center>
<img alt="miresults" src="/images/robustreps/image3.png" style="width: 75%; margin-top: 12px; margin-bottom: 12px;">
</center>

The saliency maps of our robust representation (third row) are less
noisy and more interpretable than its standard counterpart (second
row).

# Conclusions

We show that the adversarial robustness for representations is
correlated with the achievable robustness for downstream tasks, and
that an associated learning principle can be used to produce more
robust representations. Our work motivates leaning adversarially
robust representations as an intermediate step or as a regularization
to circumvent the insurmountable difficulty of directly learning
adversarially robust models.


**Paper:** [Sicheng Zhu](https://schzhu.github.io/), [Xiao Zhang](https://people.virginia.edu/~xz7bc/), and [David Evans](https://www.cs.virginia.edu/~evans).
[_Learning Adversarially Robust Representations via Worst-Case Mutual Information Maximization_](https://icml.cc/virtual/2020/poster/6604). In
[International Conference on Machine Learning ](https://icml.cc/virtual/2020) (ICML 2020), July 2020.
[[PDF](/docs/robustrepresentations.pdf)] [[Supplemental Materials](/docs/robustrepresentations-supplement.pdf)]
[[ICML PDF](https://proceedings.icml.cc/static/paper_files/icml/2020/5124-Paper.pdf)] [[arXiv](https://arxiv.org/abs/2002.11798)]

[Video Presentation](https://icml.cc/virtual/2020/poster/6604) (from ICML 2020)
