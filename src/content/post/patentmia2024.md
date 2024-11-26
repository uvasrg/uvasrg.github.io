+++
date = "26 Nov 2024"
draft = false
title = "Common Way To Test for Leaks in Large Language Models May Be Flawed"
categories = ["press"]
tags = ["David Evans", "Anshuman Suri", "privacy", "membership inference", "distribution inference", "LLM"]
+++

[Anshuman Suri](https://www.anshumansuri.com/) and [Pratyush Maini](https://pratyushmaini.github.io/) wrote a blog about the EMNLP 2024 best paper award winner: [_Reassessing EMNLP 2024’s Best Paper: Does Divergence-Based Calibration for Membership Inference Attacks Hold Up?_](https://www.anshumansuri.com/blog/2024/calibrated-mia/).

As we explored in [_Do Membership Inference Attacks Work on Large Language Models?_](https://uvasrg.github.io/do-membership-inference-attacks-work-on-large-language-models/), to test a membership inference attack it is essentail to have a candidate set where the members and non-members are from the same distribution. If the distributions are different, the ability of an attack to distinguish members and non-members is indicative of distribution inference, not necessarily membership inference.

The [post](https://www.anshumansuri.com/blog/2024/calibrated-mia/) describes experiments showing that the PatentMIA used in the EMNLP paper provides a false measure of membership inference.