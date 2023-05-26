# Machine Learning Privacy

Our research focuses on understanding and mitigating privacy risks
associated with machine learning. This includes both _data privacy_
(protecting sensitive data used to train a model during the collection
and learning process) and _inference privacy_ (limiting what can be
inferred about sensitive training data from an exposed model).

[**Privacy Reading Group**](/privacyreadinggroup)

# Inference Privacy

These blog posts (in forward chronological order) summarize our recent
work on evaluating inference leakage from models:

- [_Evaluating Differentially Private Machine Learning in Practice_](https://uvasrg.github.io/evaluating-differentially-private-machine-learning-in-practice/) ([USENIX Security 2019 Paper](https://arxiv.org/abs/1902.08874))

- [_Merlin, Morgan, and the Importance of Thresholds and Priors_](https://uvasrg.github.io/merlin-morgan-and-the-importance-of-thresholds-and-priors/) ([PETS 2021 Paper](https://arxiv.org/abs/2005.10881))

- [_On the Risks of Distribution Inference_](https://uvasrg.github.io/on-the-risks-of-distribution-inference/) ([PETS 2022 Paper](https://arxiv.org/abs/2109.06024))

- [_Dissecting Distribution Inference_](/dissecting-distribution-inference/) ([SatML 2023 Paper](https://satml.org/))

- [_Manipulating Transfer Learning for Property Inference_](/cvpr-2023-manipulating-transfer-learning-for-property-inference/) ([CVPR 2023 Paper](https://arxiv.org/abs/2303.11643))



### Publications

SRG papers on privacy-preserving machine learning (in reverse chronological order):

<a href="https://arxiv.org/abs/1910.13659"><em>Efficient Privacy-Preserving Stochastic Nonconvex Optimization</em></a>. Lingxiao Wang, Bargav Jayaraman, David Evans, Quanquan Gu. In <a href="https://www.auai.org/uai2023/"><em>39<sup>th</sup> Conference on Uncertainty in Artificial Intelligence</em></a> (UAI). Pittsburgh, PA. July&nbsp;2023. [<a href="https://arxiv.org/abs/1910.13659">Arxiv</a>]

<a href="https://arxiv.org/abs/2303.11643"><Em>Manipulating Transfer
    Learning for Property Inference</em></a>. Yulong Tian, Fnu Suya, Anshuman Suri, Fengyuan Xu, David Evans. In <a href="https://cvpr2023.thecvf.com/"><em>IEEE/CVF Conference on Computer Vision and Pattern Recognition 2023</em></a> (CVPR),
Vancouver, Canada. June&nbsp;2023. [<a href="https://arxiv.org/abs/2303.11643">Arxiv</a>] [<a href="https://github.com/yulongt23/Transfer-Inference">Code</a>]

<a href="https://arxiv.org/abs/2212.10986"><em>SoK: Let the Privacy Games Begin! A Unified Treatment of Data Inference Privacy in Machine Learning</em></a>. 
Ahmed Salem, Giovanni Cherubin, David Evans, Boris K&ouml;pf, Andrew
Paverd, Anshuman Suri, Shruti Tople, Santiago
Zanella-Begueli. In <a href="https://sp2023.ieee-security.org/"><em>44<sup>th</sup>
      IEEE Symposium on Security and Privacy</em></a>
(Oakland). May&nbsp;2023. [<a href="https://arxiv.org/abs/2212.10986">Arxiv</a>] [<a href="/sok-let-the-privacy-games-begin-a-unified-treatment-of-data-inference-privacy-in-machine-learning/">Video</a>]

<a href="https://arxiv.org/abs/2212.07591"><em>Dissecting Distribution
    Inference</em></a>. Anshuman Suri, Yifu Lu, Yanjin Chen, David
Evans. In <a href="https://satml.org/"><em>IEEE Conference on Secure and
      Trustworthy Machine Learning</em></a> (SaTML). Raleigh, North
    Carolina, 8&ndash;10 February 2023. [<a href="https://arxiv.org/abs/2212.07591">Arxiv</a>] [<A href="https://uvasrg.github.io/dissecting-distribution-inference/">Blog</a>] [<a href="https://github.com/iamgroot42/dissecting_distribution_inference">Code</a>]

<a href="https://arxiv.org/abs/2209.01292"><em>Are Attribute Inference
    Attacks Just Imputation?</em></a>. Bargav Jayaraman and David
Evans. In <a href="https://www.sigsac.org/ccs/CCS2022/">29<sup>th</sup> ACM
    Conference on Computer and Communications Security</a>
(CCS). November
2022. [<a href="https://arxiv.org/abs/2209.01292">Arxiv</a>]
[<a href="https://github.com/bargavj/EvaluatingDPML">Code</a>]

<a href="https://arxiv.org/abs/2109.06024"><em>Formalizing and
    Estimating Distribution Inference Risks
</em></a>. Anshuman Suri and David
Evans. In <a href="https://petsymposium.org/2022/">Privacy Enhancing
    Technologies Symposium</a> (PETS). July 2022. (Also published
in <a href="https://petsymposium.org/popets/2022/">Proceedings on
    Privacy Enhancing Technologies</a>, Issue 4, 2022.)
[<a href="https://arxiv.org/abs/2109.06024">Arxiv</a>]
[<a href="https://github.com/iamgroot42/FormEstDistRisks">Code</a>]

<a href="https://arxiv.org/abs/2005.10881"><em>
Revisiting Membership Inference Under Realistic Assumptions</em></a>. Bargav Jayaraman, Lingxiao Wang, Katherine Knipmeyer, Quanquan Gu, and David
Evans. In <a href="https://www.petsymposium.org/2021/">Proceedings on Privacy Enhancing Technologies</a>
(PETS). July
2021. [<a href="https://arxiv.org/abs/2005.10881">Arxiv</a>]
[<A href="https://arxiv.org/pdf/2005.10881.pdf">PDF</a>] [<a href="https://github.com/bargavj/EvaluatingDPML">Code</a>]

<em><a href="usenix2019/">Evaluating Differentially Private Machine
Learning in Practice</a></em>. Bargav Jayaraman and David Evans. In <a
href="https://www.usenix.org/conference/usenixsecurity19"><em>28<sup>th</sup>
USENIX Security Symposium</em></a>. Santa&nbsp;Clara. August 2019. 
[<a href="usenix2019/evaluatingdp.pdf">PDF</a>]
[<a href="https://arxiv.org/abs/1902.08874">arXiv</a>] 
[<A href="https://github.com/bargavj/EvaluatingDPML">code</a>]

[_Distributed Learning without Distress: Privacy-Preserving Empirical Risk Minimization_](https://oblivc.org/ppml/). [Bargav Jayaraman](https://bargavjayaraman.github.io/), Lingxiao Wang, [Quanquan Gu](http://web.cs.ucla.edu/~qgu/research.html), and [David Evans](https://www.cs.virginia.edu/evans). In _32nd Conference on Neural Information Processing Systems_ (NeurIPS 2018), Montréal, Canada. May 2018. ([Code](https://github.com/bargavj/distributedMachineLearning), [Paper](https://oblivc.org/docs/neurips2018.pdf))



<!-- 

# Privacy-Preserving Machine Learning

_Distributed learning_ (sometimes marketed as _federated learning_)
allows a group of independent data owners to collaboratively learn a
model over their data sets without exposing their private data.

## Projects

[**Integrating Multi-Party Computation with Differential Privacy**](https://oblivc.org/ppml/) ([Code](https://github.com/bargavj/distributedMachineLearning), [NeurIPS 2018 Paper](https://oblivc.org/docs/neurips2018.pdf)  
[Bargav Jayaraman](https://bargavjayaraman.github.io/), Lingxiao Wang, [Quanquan Gu](http://web.cs.ucla.edu/~qgu/research.html)

**Privacy-preserving Medical Decision Systems**  
[Josephine Lamp](https://www.josephinelamp.com/) and [Lu Feng](http://www.cs.virginia.edu/~lufeng/index.html)

**Privacy-Preserving Nonconvex Optimization** [[Preprint](https://arxiv.org/abs/1910.13659)]  
Lingxiao Wang, [Bargav Jayaraman](https://bargavjayaraman.github.io/), [Quanquan Gu](http://web.cs.ucla.edu/~qgu/research.html)

-->

