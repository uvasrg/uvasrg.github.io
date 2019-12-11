+++
date = "9 Dec 2019"
draft = false
title = "Usenix Security 2020: Hybrid Batch Attacks: Finding Black-box Adversarial Examples with Limited Queries"
categories = ["publications"]
tags = ["adversarial machine learning", "Fnu Suya", "Usenix Security"]
+++

<a href="https://fsuya.org">Fnu Suya</a>'s work on black-box attacks is accepted to [Usenix Security 2020](https://www.usenix.org/conference/usenixsecurity20),
Boston, 12 August 2020.

## Hybrid Batch Attack
### Background
Black-box attacks generate adversarial examples against deep neural network with only API access to the victim model. Existing black-box attacks can be grouped into two main categories: _Transfer Attacks_ use white-box attacks on local models to find candidate adversarial examples that transfer to the target model. Existing work on transfer attacks aims to improve the transfer rate of candidate adversarial examples. _Optimization Attacks_ use queries to the target model and apply optimization techniques to search for adversarial examples. Current work on optimization attacks aims to reduce the total number of queries used to find adversarial examples.    


### Hybrid Attack
In this work, we propose hybrid attack that combines transfer and optimization attacks. On one direction (transfer attack -> optimization attack), hybrid attack takes failed candidate adversarial examples from the local models (of transfer attacks) as the starting points for the optimization attacks. We hope that these failed candidate adversarial examples are stil closer to the target adversarial region and can be better starting points for the optimization attacks. On the other direction (optimization attack -> transfer attack), intermediate query results from the optimization attacks are used to fine-tune the local models (of transfer attacks). We hope that these intermediate results contain meaningful information about the decision boundary of target model and with tune-tuning, the local models can resemble the target model with improved transferability.


We validate effectiveness of the hybrid attack over baseline method on three benchmark datasets: MNIST, CIFAR10, ImageNet. In this post, we only show the results of [_AutoZOOM_](https://arxiv.org/abs/1805.11770) as the selected optimization method. More results can be found in the [paper](/docs/hybrid_attack.pdf). 


**Validation of local adversarial examples as starting points:**
results are shown below. We find that hybrid attack (starts from local adversarial examples) can significantly ourperform baseline method (starts from original points) in terms of attack success rate and query efficiency. 

<img src="/images/concentration/experiments.png" width="100%" align="center"><br></center>

<img src="images/usenix2020/localcandidateresults.png" width="80%" align="center"><br></center>

**Validation of fine-tuning local models:**
results of AutoZOOM attack on MNIST dataset are shown below. We find that, in comparison to static local models, fine-tuinng local models during the attack process further improves the query efficiency. However, for more complex datasets (e.g., CIFAR10), we observe degradation in the attack performance by fine-tuning.

<img src="/images/usenix2020/fine_tune_results.png" width="80%" align="center"><br></center>


**Takeaway:** 
above results suggest that failed local adversarial examples can generally be used to boost optimization attacks. However, fine-tuning local models is only helpful for small scale dataset (e.g., MNIST) and fails to generalize to more complex datasets. It is an open question whether we can also make the fine-tuning process work well on more complex datasets. More discussion in terms of fine-tuning can be found in the [paper](/docs/hybrid_attack.pdf).


### Batch Attack

We find that hybrid attack utilizes local adversarial examples can improve the overall query efficiency of black-box attacks. We additionally consider a more realistic batch attack scenario where adversaries have limited number of queries and want to maximize the number of adversarial examples found within the limit. With the observation that attack difficulty (i.e., number of queries) of different seeds vary significantly, we propose two-phase strategy to prioritize easy seeds and further improve the query efficiency of hybrid attack. In first-phase of the two-phase strategy, the likely-to-transfer seeds are prioritized based on their local PGD-steps (with respect to the local models) and in the second phase, easy-to-attack (i.e., require lower number of queries) seeds are prioritized based on their target loss value (with respect to the target model). 

To validate effectievness of the two-phase strategy, we compare it against the _retroactive optimal_ strategy and a _random_ baseline. In the retroactive optimal strategy, we assume adversaries already know the exact number of queries to attack each seed (before the attack starts) and therefore, the seeds can be prioritized based on their actual query cost. Retroactive optimal strategy is an (ideal) upper bound for our two-phase strategy. The random baseline simply prioritizes seeds in a random order. Result of AutoZOOM attack on ImageNet is shown below and we find our two-phase strategy performs closely to the retroactive optimal strategy and outpeforms random baseline significantly (i.e., for the same number of query limit, two-phase strategy finds significantly more adversarial examples comapred to the random baseline).  

<img src="/images/usenix2020/batch_attack_results.png" width="80%" align="center"><br></center>


**Takeaway:**
the _hybrid batch attack_, which adopts two-phase prioritization on top of the hybrid attack can significantly improve the query efficiency and find adversarial examples with only a handful of queries.

## Paper

<a href="https://fsuya.org">Fnu Suya</a>,<a href="https://www.linkedin.com/in/jianfeng-chi-001b25133/">Jianfeng Chi</a>,<a href="http://www.cs.virginia.edu/~evans/">David Evans</a> and <a href="https://www.ytian.info">Yuan Tian</a>. [_Hybrid Batch Attacks: Finding Black-box
Adversarial Examples with Limited Queries_](https://arxiv.org/pdf/1908.07000.pdf). In [_Usenix Security 2020_](https://www.usenix.org/conference/usenixsecurity20). Boston, August 2020. [[PDF](/docs/hybrid_attack.pdf)] [[arXiv](https://arxiv.org/abs/1908.07000)] 

## Code

[https://github.com/suyeecav/Hybrid-Attack](https://github.com/suyeecav/Hybrid-Attack)


