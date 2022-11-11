# Balanced Adversarial Training

## Balancing Tradeoffs between Fickleness and Obstinacy in NLP Models

[Hannah Chen](https://hannahxchen.github.io/), [Yangfeng Ji](http://yangfengji.net/), [David Evans](http://www.cs.virginia.edu/~evans/)

In [_The 2022 Conference on Empirical Methods in Natural Language
Processing_](https://2022.emnlp.org/) (EMNLP), Abu Dhabi, 7-11
December 2022

Traditional (fickle) adversarial examples involve finding a small
perturbation that does not change an input's true label but confuses
the classifier into outputting a different prediction. Conversely,
obstinate adversarial examples occur when an adversary finds a small
perturbation that preserves the classifier's prediction but changes
the true label of an input. Adversarial training and certified robust
training have shown some effectiveness in improving the robustness of
machine learnt models to fickle adversarial examples. We show that
standard adversarial training methods focused on reducing
vulnerability to fickle adversarial examples may make a model more
vulnerable to obstinate adversarial examples, with experiments for
both natural language inference and paraphrase identification
tasks. To counter this phenomenon, we introduce Balanced Adversarial
Training, which incorporates contrastive learning to increase
robustness against both fickle and obstinate adversarial examples.

Paper: [arXiv](https://arxiv.org/abs/2210.11498)  
Code: [_https://github.com/hannahxchen/balanced-adversarial-training_](https://github.com/hannahxchen/balanced-adversarial-training)