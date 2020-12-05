# Machine Learning Privacy

Our research focuses on understanding and mitigating privacy risks
associated with machine learning. This includes both _data privacy_
(protecting sensitive data used to train a model during the collection
and learning process) and _inference privacy_ (limiting what can be
inferred about sensitive training data from an exposed model).

## Evaluating Inference Privacy

These two blog posts summarize our recent work on evaluating inference leakage from models:

- [_Merlin, Morgan, and the Importance of Thresholds and Priors_](https://uvasrg.github.io/merlin-morgan-and-the-importance-of-thresholds-and-priors/) ([[Preprint](https://arxiv.org/abs/2005.10881)])

- [_Evaluating Differentially Private Machine Learning in Practice_](https://uvasrg.github.io/evaluating-differentially-private-machine-learning-in-practice/) ([[Paper (USENIX Security 2019)](https://arxiv.org/abs/1902.08874)])

[Code](https://github.com/bargavj/EvaluatingDPML)

## Privacy-Preserving Machine Learning

_Distributed learning_ (sometimes marketed as _federated learning_)
allows a group of independent data owners to collaboratively learn a
model over their data sets without exposing their private data.

### Projects

[**Integrating Multi-Party Computation with Differential Privacy**](https://oblivc.org/ppml/) [[Code](https://github.com/bargavj/distributedMachineLearning), [Paper (NeurIPS 2018)](https://oblivc.org/docs/neurips2018.pdf) ([Bargav Jayaraman](https://bargavjayaraman.github.io/), Lingxiao Wang, [Quanquan Gu](http://web.cs.ucla.edu/~qgu/research.html))

**Privacy-preserving Medical Decision Systems** ([Josephine Lamp](https://www.josephinelamp.com/) and [Lu Feng](http://www.cs.virginia.edu/~lufeng/index.html))

**Privacy-Preserving Nonconvex Optimization** [[Preprint](https://arxiv.org/abs/1910.13659)] (Lingxiao Wang, [Bargav Jayaraman](https://bargavjayaraman.github.io/), [Quanquan Gu](http://web.cs.ucla.edu/~qgu/research.html))

# Privacy Study Group

Meetings on **Tuesdays, 11am** (Summer 2020)

Leader: <a href="https://bargavjayaraman.github.io/">Bargav Jayaraman</a>  

   <table width="100%" align="center">
   <tr bgcolor="#CCC"><td style="text-align:center" width="25%"><b>Date</b></td><td width="75%" style="text-align:center"><b>Topic/Talk</b></td></tr>

   <tr bgcolor="#FFF"><td>26 May 2020</td><td>
Cynthia Dwork, <a href="https://www.youtube.com/watch?v=vsA4w3itxA0"><em>Privacy-Preserving Data Analysis</em></a> (Alan Turing Institute, Turing Lecture, Dec 2016)
  </td></tr>
   <tr bgcolor="#BDF">
   <td>
   2 June 2020
   </td><td>
Guy Rothblum, <a href="https://www.youtube.com/watch?v=RNqZJDAP1uU"><em>Composition: The Key to Differential Privacy is Success</em></a> (Institute for Advanced Study, Nov 2016)
   </td>
   </tr>

   <tr bgcolor="#FFF">
   <td>9 June 2020</td>
   <td>

Yuxin Wang, <a href="https://www.youtube.com/watch?v=qGgCdsxTbkM"><em>Detecting Violations of Differential Privacy</em></a> (ACM CCS 2018)

Benjamin Bichsel, <a href="https://www.youtube.com/watch?v=Jwe0oCSlaMk"><em>DP-Finder: Finding Differential Privacy Violations by Sampling and Optimization</em></a> (ACM CCS 2018)

   </td>
   </tr>

   <tr bgcolor="#BDF">
   <td>
   15 June 2020</td>
   <td>
(Joint with <a href="/advml"><em>Adversarial Machine Learning Study Group</em></a>)

Mathias Lécuyer, <a href="https://www.youtube.com/watch?v=mYRdZIXtqcA"><em>Certified Robustness to Adversarial Examples with Differential Privacy</em></a> (IEEE Security and Privacy 2019)

Liwei Song, <a href="https://www.youtube.com/watch?v=MUhb3bRla2A"><em>Membership Inference Attacks against Adversarially Robust Deep Learning Models</em></a> (IEEE Security and Privacy 2019)

</td>
</tr>
   <tr bgcolor="#FFF">
   <td>23 June 2020</td>
   <td>

Reza Shokri, <a href="https://www.youtube.com/watch?v=rDm1n2gceJY"><em>Membership Inference Attacks against Machine Learning Models</em></a> (IEEE Security and Privacy 2017)

   Nicholas Carlini, <a href="https://www.youtube.com/watch?&v=U9XbFtCWedE"><em>The Secret Sharer: Evaluating and Testing Unintended Memorization in Neural Networks</em></a> (USENIX Security 2019) 
   </td>
   </tr>

   <tr bgcolor="#BDF">
   <td>30 June 2020</td>
   <td>


Karan Ganju, <a href="https://www.youtube.com/watch?v=99YHPIsKzCc"><em>Property Inference Attacks on Fully Connected Neural Networks</em></a> (ACM CCS 2019)

Binghui Wang, <a href="https://www.youtube.com/watch?v=rpRVqfjW0AA"><em>Stealing Hyperparameters in Machine Learning</em></a> (IEEE Security and Privacy 2018)
</td>
</tr>

   <tr bgcolor="#FFF">
   <td>7 July 2020</td>
   <td>

Joe Near, <a href="https://www.youtube.com/watch?v=pk_DCSUayDA"><em>Differential Privacy at Scale: Uber and Berkeley Collaboration</em></a> (USENIX Enigma 2020) (also see Frank McSherry's <a href="https://github.com/uber-archive/sql-differential-privacy/issues/1">github issue</a> and <a href="https://github.com/frankmcsherry/blog/blob/master/posts/2018-02-25.md">blog post</a>)


Brendan McMahan, <a href="https://www.youtube.com/watch?v=e5othcNmync"><em>Guarding user Privacy with Federated Learning and Differential Privacy</em></a> (DIMACS, 2017)

</td>
</tr>

   <tr bgcolor="#BDF">
   <td>14 July 2020</td>
   <td>

Ilya Mironov, <A href="https://www.youtube.com/watch?v=oQzaA5KG3pM"><em>Rényi Differential Privacy</em></a> (DIMACS, 2017)

</td>
</tr>

   </table>



Join [our slack group](https://uvasrg.slack.com) for announcements about future meetings.
