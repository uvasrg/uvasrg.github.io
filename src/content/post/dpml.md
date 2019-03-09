+++
date = "09 Mar 2019"
draft = false
title = 'When Relaxations Go Bad: "Differentially-Private" Machine Learning'
author = "David Evans"
categories = ["publications"]
tags = ["privacy", "privacy-preserving machine learning", "differential privacy", "Bargav Jayaraman"]
+++

We have posted a paper by Bargav Jayaraman and myself on [_When Relaxations Go Bad: "Differentially-Private" Machine Learning_](https://arxiv.org/abs/1902.08874) (code available at [https://github.com/bargavj/EvaluatingDPML](https://github.com/bargavj/EvaluatingDPML)).

Differential privacy is becoming a standard notion for performing
privacy-preserving machine learning over sensitive data. It provides
formal guarantees, in terms of the privacy budget, &epsilon;, on how
much information about individual training records is leaked by the
model. 

While the privacy budget is directly correlated to the privacy
leakage, the calibration of the privacy budget is not well
understood. As a result, many existing works on privacy-preserving
machine learning select large values of ϵ in order to get acceptable
utility of the model, with little understanding of the concrete impact
of such choices on meaningful privacy. Moreover, in scenarios where
iterative learning procedures are used which require privacy
guarantees for each iteration, relaxed definitions of differential
privacy are often used which further tradeoff privacy for better
utility. 

In this paper, we evaluate the impacts of these choices on privacy in
experiments with logistic regression and neural network models. We
quantify the privacy leakage in terms of advantage of the adversary
performing inference attacks and by analyzing the number of members at
risk for exposure. 

   <div class="myrow">
   <div class="mycolumn" align="center"> 
<a href="/images/cifar_nn_grad_add.pdf"><img src="/images/cifar_nn_grad_acc.png" width="92%"></a><br>
Accuracy Loss as Privacy Decreases<br>
(CIFAR-100, neural network model)
   </div>
   <div class="mycolumn" align="center"> 
<a href="/images/Cifar_nn_grad_mem.pdf"><img src="/images/Cifar_nn_grad_mem.png" width="98%"></a><br>
Privacy Leakage<br>
(Yeom et al.'s Membership Inference Attack)
   </div>
   </div>

Our main findings are that current mechanisms for differential privacy
for machine learning rarely offer acceptable utility-privacy
tradeoffs: settings that provide limited accuracy loss provide little
effective privacy, and settings that provide strong privacy result in
useless models.

Bargav Jayaraman talked about this work at the _DC-Area Anonymity, Privacy, and Security Seminar_(https://dcaps.info/2019-2-25.html) (25 February 2019) at the University of Maryland:

<script async class="speakerdeck-embed" data-id="294ac688ec6d415a9bef17a91e031459" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>

Paper: [_When Relaxations Go Bad: "Differentially-Private" Machine Learning_](https://arxiv.org/abs/1902.08874)  
Code: [https://github.com/bargavj/EvaluatingDPML](https://github.com/bargavj/EvaluatingDPML))