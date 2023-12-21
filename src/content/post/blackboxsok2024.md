+++
date = "20 Dec 2023"
draft = false
title = "SoK: Pitfalls in Evaluating Black-Box Attacks"
categories = ["papers"]
tags = ["Fnu Suya", "Anshuman Suri", "Tingwei Zhang", "Jingtao Hong", "Yuan Tian", "David Evans", "SaTML", "adversarial machine learning", "black-box adversarial attacks", "systemization of knowledge"]
+++

Post by **[Anshuman Suri](https://www.anshumansuri.me/)** and **[Fnu Suya](https://fsuya.org/)**

Much research has studied black-box attacks on image classifiers,
where adversaries generate adversarial examples against unknown target
models without having access to their internal information. Our
analysis of over 164 attacks (published in 102 major security, machine
learning and security conferences) shows how these works make
different assumptions about the adversary’s knowledge.

The current literature lacks cohesive organization centered around the
threat model. Our [SoK paper](https://arxiv.org/abs/2310.17534) (to
appear at [IEEE SaTML 2023](https://satml.org/)) introduces a taxonomy
for systematizing these attacks and demonstrates the importance of
careful evaluations that consider adversary resources and threat
models.

### Taxonomy for Black-Box Attacks on Classifiers

We propose a new attack taxonomy organized around the threat model assumptions of an attack, using four separate dimensions to categorize assumptions made by each attack.

- **Query Access**: access to the target model. Under *no interactive access*, there is no opportunity to query the target model interactively (e.g., transfer attacks). With *interactive access*, the adversary can interactively query the target model and adjust subsequent queries by leveraging its history of queries (e.g., query-based attacks).

- **API Feedback**: how much information the target model's API returns. We categorize APIs into *hard-label* (only label returned by API),  *top-K* (confidence scores for top-_k_ predictions), or *complete confidence vector* (all confidence scores returned).

- **Quality of Initial Auxiliary Data**: overlap between the auxiliary data available to the attacker and the training data of the target model. We capture overlap via distributional similarity in either feature space (same/similar samples used) or the label space. *No overlap* is closest to real-world APIs, where knowledge about the target model’s training data is obfuscated and often proprietary. *Partial overlap* captures scenarios where the training data of the target model includes some publicly available datasets. *Complete overlap* occurs where auxiliary data is identical (same dataset or same underlying distribution) to the target model’s training data.

- **Quantity of Auxiliary Data**: does that adversary have enough data to train well-performing surrogate models, categorized as *insufficient* and *sufficient*.

### Insights from Taxonomy

Our taxonomy, shown below in the table, highlights technical challenges in underexplored areas, especially where ample data is available but with limited overlap with the target model’s data distribution. This scenario is highly relevant in practice. Additionally, we found that only one attack (NES) explicitly optimizes for top-_k_ prediction scores, a common scenario in API attacks. These gaps suggest both a knowledge and a technical gap, with substantial room for improving attacks in these settings.

<center>
<a href="/images/blackboxsok2024/taxonomy_table.png"><img style="width: 95%" src="/images/blackboxsok2024/taxonomy_table.png" alt="Performance of top-_k_ attacks across queries"/></a>
</center>
<div class="caption">
Threat model taxonomy of black-box attacks. The first two columns correspond to the quality and quantity of the auxiliary data available to the attacker initially. The remaining columns distinguish threat models based on the type of access they have to the target model, and for adversaries who can submit queries to the target model, the information they receive from the API in response. The symbol ∅ above corresponds to areas in the threat-space that, to the best of our knowledge, are not considered by any attacks in the literature. The sub-category of w/ Pretrained Surrogate with “*” denotes that the corresponding attacks do not require auxiliary data, but the quality of data used to train the surrogate determines the corresponding cell.
</div>

#

Our new top-_k_ adaptation (figure below) demonstrates a significant improvement in performance over the existing baseline in the top-_k_ setting, yet still fails to outperform more restrictive hard-label attacks in some settings, highlighting the need for further investigation.

<center>
<a href="/images/blackboxsok2024/topk_comparison.png"><img style="width: 65%" src="/images/blackboxsok2024/topk_comparison.png" alt="Performance of top-_k_ attacks across queries"/></a>
</center>
<div class="caption">

Comparison of top-_k_ attacks. Square: top-_k_ is our proposed adaption of the Square Attack for the top-_k_ setting. NES: top-_k_ is the current state-of-the-art attack. SignFlip is a more restrictive hard-label attack.
</div>

See the full paper for details on how the attacks were adapted.

### Rethinking baseline comparisons

Our study revealed that current evaluations often fail to align with what adversaries actually care about. We advocate for time-based comparisons of attacks, emphasizing their practical effectiveness within given constraints. This approach reveals that some attacks achieve higher success rates when normalized for time.

<center>
<a href="/images/blackboxsok2024/same_iters_vs_same_time_targeted_densenet.png"><img style="width: 95%" src="/images/blackboxsok2024/same_iters_vs_same_time_targeted_densenet.png" alt="ASR for various attacks, compared based on iterations (left) and time (right)"/></a>
</center>
<div class="caption">
ASR (y-axis) for various targeted attacks on DenseNet201 models, varying across iterations (a) and time (b). All attacks on the left are run for 100 iterations, while attacks on the right are run for 30 minutes per batch. ASR at each iteration is computed using adversarial examples at that iteration. ASR at 40 iterations are marked with a star for each attack.
</div>

#

### Takeaways

The paper underscores many unexplored settings in black-box adversarial attacks, particularly emphasizing the significance of meticulous evaluation and experimentation. A critical insight is the existence of many realistic threat models that haven't been investigated, suggesting both a knowledge and a technical gap in current research. Considering the rapid evolution and increasing complexity of attack strategies, carefuly evaluation and consideration of the attack setting becomes even more pertinent. These findings indicate a need for more comprehensive and nuanced approaches to understanding and mitigating black-box attacks in real-world scenarios.

### Paper

Fnu Suya*, Anshuman Suri*, Tingwei Zhang, Jingtao Hong, Yuan Tian, David Evans. [*SoK: Pitfalls in Evaluating Black-Box Attacks*](https://arxiv.org/abs/2310.17534). In [IEEE Conference on Secure and Trustworthy Machine Learning](https://satml.org/) (SaTML). Toronto, 9&ndash;11 April 2024. [[arXiv]](https://arxiv.org/abs/2310.17534)

<sub>* Equal contribution</sub>

Code: [https://github.com/iamgroot42/blackboxsok](https://github.com/iamgroot42/blackboxsok)
