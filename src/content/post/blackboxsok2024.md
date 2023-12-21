+++
date = "20 Dec 2023"
draft = false
title = "SoK: Pitfalls in Evaluating Black-Box Attacks"
categories = ["papers"]
tags = ["Fnu Suya", "Anshuman Suri", "Tingwei Zhang", "Jingtao Hong", "Yuan Tian", "David Evans", "SaTML", "adversarial machine learning", "black-box adversarial attacks", "systemization of knowledge"]
+++

Numerous works study black-box attacks on image classifiers, where adversaries generate adversarial examples against unknown target models without having access to their internal information. However, our survey of over 164 attacks (published in 102 major security, machine learning and security conferences) shows how these works make different assumptions about the adversary’s knowledge. The current literature lacks cohesive organization centered around the threat model.

### Proposed Taxonomy

With the surveyed attacks, we propose a new attack taxonomy organized around the threat model assumptions of an attack, using four separate dimensions to categorize assumptions made by each attack.

- **Query Access**: Denotes the type of interactive access to the target model. Under *no interactive access*, there is no opportunity to query the target model interactively (e.g., transfer attacks). With *interactive access*, the adversary can interactively query the target model and adjust subsequent queries by leveraging its history of queries (e.g., query-based attacks).

-  **API Feedback**: Based on how much information the target model's API returns, the threat model can be categorized into *hard-label* (only label returned by API),  *top-K* (confidence scores for top-K predictions), or *complete confidence vector* (all confidence scores returned).

- **Quality of Initial Auxiliary Data**: Denotes the overlap between the auxiliary data available to the attacker and the training data of the target model. We capture overlap via distributional similarity, in either feature space (same/similar samples used) or the label space. *No overlap* is closest to real-world APIs, where knowledge about the target model’s training data is obfuscated and often proprietary. *Partial overlap* captures scenarios where the training data of the target model includes some publicly available datasets. *Complete overlap* occurs where auxiliary data is identical (same dataset, or same underlying distribution) to the target model’s training data.

- **Quantity of Auxiliary Data**: Quantity here is subjective and domain/task dependent, meant to capture the quantity required to train sufficiently accurate/well-performing surrogate models. Threat models can thus be categorized into *not sufficient* and *sufficient*.

### Insights from Taxonomy

Our taxonomy, shown below in the table, highlights technical challenges in underexplored areas, especially where ample data is available but with limited overlap with the target model’s data distribution. This scenario is highly relevant in practice. Additionally, we found that only one attack explicitly optimizes for top-k prediction scores, a common scenario in API attacks. These gaps suggest both a knowledge and a technical gap, with substantial room for improving attacks in these settings.

<center>
<a href="/images/blackboxsok2024/taxonomy_table.png"><img style="width: 95%" src="/images/blackboxsok2024/taxonomy_table.png" alt="Performance of top-k attacks across queries"/></a>
</center>
<div class="caption">
Threat model taxonomy of black-box attacks. The first two columns correspond to the quality and quantity of the auxiliary data available to the attacker initially. The remaining columns distinguish threat models based on the type of access they have to the target model, and for adversaries who can submit queries to the target model, the information they receive from the API in response. The symbol ∅ above corresponds to areas in the threat-space that, to the best of our knowledge, are not considered by any attacks in the literature. The sub-category of w/ Pretrained Surrogate with “*” denotes that the corresponding attacks do not require auxiliary data, but the quality of data used to train the surrogate determines the corresponding cell.
</div>

Our new top-k adaptation (figure; below) demonstrates a significant improvement in performance over existing baseline in top-k setting, yet still fail to outperform more restrictive hard-label attack in some settings, highlighting the need for further investigation. 

<center>
<a href="/images/blackboxsok2024/topk_comparison.png"><img style="width: 65%" src="/images/blackboxsok2024/topk_comparison.png" alt="Performance of top-k attacks across queries"/></a>
</center>
<div class="caption">
Comparison of top-k attacks. Square: top-k is our proposed adaption of the Square Attack for the top-k setting. NES: top-k is the current state-of-the-art attack. SignFlip is a more restrictive hard-label attack.
</div>

We encourage readers to delve into the full paper for a comprehensive understanding of these advancements.

### Rethinking baseline comparisons

Our study revealed that current evaluations often fail to align with what adversaries actually care about. We advocate for time-based comparisons of attacks, emphasizing their practical effectiveness within given constraints. This approach reveals that some attacks, when normalized for time, achieve higher success rates.

<center>
<a href="/images/blackboxsok2024/same_iters_vs_same_time_targeted_densenet.png"><img style="width: 95%" src="/images/blackboxsok2024/same_iters_vs_same_time_targeted_densenet.png" alt="ASR for various attacks, compared on the basis of iterations (left) and time (right)"/></a>
</center>
<div class="caption">
ASR (y-axis) for various targeted attacks on DenseNet201 models, varying across iterations (a) and time (b). All attacks on the left are run for 100 iterations, while attacks on the right are run for 30 minutes per batch. ASR at each iteration is computed using adversarial examples at that iteration. ASR at 40 iterations are marked with a star for each attack.
</div>

For other intriguing experiments and insights, we highly encourage readers to delve into the full paper.

### Takeaways

The paper underscores a multitude of unexplored settings in the field of black-box adversarial attacks, particularly emphasizing the significance of meticulous evaluation and experimentation. A key insight is the existence of numerous potential threat models that haven't been fully investigated, suggesting both a knowledge and a technical gap in current research. This scenario becomes even more pertinent considering the rapid evolution and increasing complexity of attack strategies. Furthermore, the paper highlights the importance of carefully designing evaluations to reflect realistic adversarial objectives and constraints. These findings point to an urgent need for more comprehensive and nuanced approaches to understanding and mitigating black-box attacks in real-world scenarios.

### Paper

Fnu Suya*, Anshuman Suri*, Tingwei Zhang, Jingtao Hong, Yuan Tian, David Evans. [_SoK: Pitfalls in Evaluating Black-Box Attacks_](https://arxiv.org/pdf/2310.17534.pdf). In [IEEE Conference on Secure and Trustworthy Machine Learning](https://satml.org/) (SaTML). Toronto, 9&ndash;11 April 2024. [[arXiv]](https://arxiv.org/abs/2310.17534)

<sub>* Equal contribution</sub>

Code: [https://github.com/iamgroot42/blackboxsok](https://github.com/iamgroot42/blackboxsok)
