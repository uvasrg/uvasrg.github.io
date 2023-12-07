+++
date = "11 Jul 2023"
draft = false
title = "Congratulations, Dr. Suya!"
author = "David Evans"
categories = ["graduates"]
tags = ["Fnu Suya", "poisoning", "adversarial machine learning", "PhD defense"]
+++

Congratulations to [Fnu Suya](fsuya.org) for successfully defending
his PhD thesis!

Suya will join the Unversity of Maryland as a MC2 Postdoctoral Fellow
at the [Maryland Cybersecurity Center](https://cyber.umd.edu/about) this fall.


##

<center>
<em>
On the Limits of Data Poisoning Attacks
</em>
</center>

##

Current machine learning models require large amounts of labeled training data, which are often collected from untrusted sources. Models trained on these potentially manipulated data points are prone to data poisoning attacks. My research aims to gain a deeper understanding on the limits of two types of data poisoning attacks: indiscriminate poisoning attacks, where the attacker aims to increase the test error on the entire dataset; and subpopulation poisoning attacks, where the attacker aims to increase the test error on a defined subset of the distribution. We first present an empirical poisoning attack that encodes the attack objectives into target models and then generates poisoning points that induce the target models (and hence the encoded objectives) with provable convergence. This attack achieves state-of-the-art performance for a diverse set of attack objectives and quantifies a lower bound to the performance of best possible poisoning attacks. In the broader sense, because the attack guarantees convergence to the target model which encodes the desired attack objective, our attack can also be applied to objectives related to other trustworthy aspects (e.g., privacy, fairness) of machine learning.

Through experiments for the two types of poisoning attacks we consider, we find that some datasets in the indiscriminate setting and subpopulations in the subpopulation setting are highly vulnerable to poisoning attacks even when the poisoning ratio is low. But other datasets and subpopulations resist the best-performing known attacks even without any defensive protections. Motivated by the drastic differences in the attack effectiveness across datasets or subpopulations, we further investigate the possible factors related to the data distribution and learning algorithm that contribute to the disparate effectiveness of poisoning attacks. In the subpopulation setting, for the given learner, we identify the separability of the class-wise distributions and also the difference of the model that misclassifies the subpopulations to the clean model are highly correlated to the empirical performance of state-of-the-art poisoning attacks and demonstrate them through visualizations. In the indiscriminate setting, we conduct a more thorough investigation by first showing under theoretical distributions that there are datasets that inherently resist the best possible poisoning attacks when the class-wise data distributions are well-separated with low variance and the size of the constraint set containing all permissible poisoning points is also small. We then demonstrate that these identified factors are highly correlated to both the different empirical performances of the state-of-the-art attacks (as lower bounds on the limits of poisoning attacks) and the upper bounds on the limits across benchmark datasets. Finally, we discuss how understanding the limits of poisoning attacks might help in complementing existing data sanitization defenses to achieve even stronger defenses against poisoning attacks.

#

**Committee:**  
Mohammad Mahmoody, Committee Chair (UVA Computer Science)  
David Evans, Co-Advisor (UVA Computer Science)  
Yuan Tian, Co-Advisor (UCLA)  
Cong Shen (UVA ECE)  
Farzad Hassanzadeh (UVA Computer Science/ECE)
