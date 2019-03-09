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

We evaluated the impacts of these choices on privacy in experiments
with logistic regression and neural network models, quantifying the
privacy leakage in terms of advantage of the adversary performing
inference attacks and by analyzing the number of members at risk for
exposure.

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

The table below shows the number of individuals, out of 10,000 members
in the training set, exposed by a membership inference attack, given
tolerance for false positives of 1% or 5% (and assuming a priori
prevalence of 50% members). The key observations is that all the
relaxtions provide lower utility (more accuracy loss) than na&iuml;ve
composition for comparable privacy leakage, as measured by the number
of actual members exposed in a test dataset.  Further, none of the
methods provide both acceptable utility and meaningful privacy &mdash;
it a high level, either nothing is learned from the training data, or
some sensitive data is exposed. (See [the
paper](https://arxiv.org/abs/1902.08874) for more details and
results.)

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:WorkSans, sans;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;text-align:center;}
.tg th{font-family:Merriweather,serif;font-size:14px;font-weight:bold;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;text-align:center;}
.tg .tg-0lax{text-align:center;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-0lax">﻿</th>
    <th class="tg-0lax" colspan="3" text-align="center">Na&iuml;ve Composition</th>
    <th class="tg-0lax" colspan="3">Advanced Composition</th>
    <th class="tg-0lax" colspan="3">Zero Concentrated</th>
    <th class="tg-0lax" colspan="3">R&eacute;nyi</th>
  </tr>
  <tr>
    <th class="tg-0lax">Epsilon</th>
    <th class="tg-0lax">Loss</th>
    <th class="tg-0lax">1%</th>
    <th class="tg-0lax">5%</th>
    <th class="tg-0lax">Loss</th>
    <th class="tg-0lax">1%</th>
    <th class="tg-0lax">5%</th>
    <th class="tg-0lax">Loss</th>
    <th class="tg-0lax">1%</th>
    <th class="tg-0lax">5%</th>
    <th class="tg-0lax">Loss</th>
    <th class="tg-0lax">1%</th>
    <th class="tg-0lax">5%</th>
  </tr>
  <tr>
    <th class="tg-0lax">0.1</th>
    <td class="tg-0lax">0.95</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0.95</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0.94</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0.93</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0</td>
  </tr>
  <tr>
    <th class="tg-0lax">1</th>
    <td class="tg-0lax">0.94</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0.94</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax"><b>0.92</b></td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax"><b>6</b></td>
    <td class="tg-0lax"><b>0.91</b></td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax"><b>94</b></td>
  </tr>
  <tr>
    <th class="tg-0lax">10</th>
    <td class="tg-0lax">0.94</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax"><b>0.87</b></td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax"><b>1</b></td>
    <td class="tg-0lax">0.81</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">20</td>
    <td class="tg-0lax">0.80</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">109</td>
  </tr>
  <tr>
    <th class="tg-0lax">100</th>
    <td class="tg-0lax">0.93</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax"><b><font color="red">0.61</font></b></td>
    <td class="tg-0lax"><b><font color="red">1</font></b></td>
    <td class="tg-0lax">32</td>
    <td class="tg-0lax"><b><font color="red">0.49</font></b></td>
    <td class="tg-0lax"><b><font color="red">30</font></td>
    <td class="tg-0lax">281</td>
    <td class="tg-0lax"><b><font color="red">0.48</font></b></td>
    <td class="tg-0lax"><b><font color="red">11</font></b></td>
    <td class="tg-0lax">202</td>
  </tr>
  <tr>
    <th class="tg-0lax">1000</th>
    <td class="tg-0lax"><b>0.59</b></td>
    <td class="tg-0lax">0</td>
    <td class="tg-0lax"><b>11</b></td>
    <td class="tg-0lax">0.06</td>
    <td class="tg-0lax">13</td>
    <td class="tg-0lax">359</td>
    <td class="tg-0lax">0.00</td>
    <td class="tg-0lax">28</td>
    <td class="tg-0lax">416</td>
    <td class="tg-0lax">0.07</td>
    <td class="tg-0lax">22</td>
    <td class="tg-0lax">383</td>
  </tr>
  <tr bgcolor="yellow">
    <th class="tg-0lax">&infin;</th>
    <td class="tg-0lax"><font color="darkred">0.00</font></td>
    <td class="tg-0lax"><font color="darkred">155</font></td>
    <td class="tg-0lax"><font color="darkred">2667</font></td>
    <th class="tg-0lax" colspan="9"><span style="font-weight:normal">No privacy noise added.</span></th>
  </tr>
</table>


Bargav Jayaraman talked about this work at the [_DC-Area Anonymity, Privacy, and Security Seminar_](https://dcaps.info/2019-2-25.html) (25 February 2019) at the University of Maryland:

<script async class="speakerdeck-embed" data-id="294ac688ec6d415a9bef17a91e031459" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>

Paper: [_When Relaxations Go Bad: "Differentially-Private" Machine Learning_](https://arxiv.org/abs/1902.08874)  
Code: [https://github.com/bargavj/EvaluatingDPML](https://github.com/bargavj/EvaluatingDPML))