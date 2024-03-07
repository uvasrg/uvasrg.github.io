+++
date = "05 Mar 2024"
draft = false
title = "Do Membership Inference Attacks Work on Large Language Models?"
categories = ["papers"]
tags = ["Anshuman Suri", "adversarial machine learning", "privacy-preserving machine learning", "distribution inference", "inference privacy", "LLMs", "Michael Duan", "Niloofar Mireshghallah", "Sewon Min", "Weijia Shi", 
"Luke Zettlemoyer", "Yulia Tsvetkov", "Yejin Choi", "Hannaneh Hajishirzi"]
+++

<center>
<img src="https://iamgroot42.github.io/mimir.github.io/static/images/logo.png" alt="" style="width:25%;height:25%;" class="center">
<figcaption style="font-size: small;"><a href="http://github.com/iamgroot42/mimir">MIMIR</a> logo. Image credit: <a href="https://chat.openai.com/">GPT-4 + DALL-E</a>
</figcaption>
<p></p>
<div class="column has-text-centered">
  <div class="publication-links">
  <span class="link-block">
  <a href="https://arxiv.org/pdf/2402.07841.pdf" class="external-link button is-normal is-rounded is-dark">
  <span class="icon">
  <i class="fas fa-file-pdf"></i>
                      </span>
                      <span>Paper</span>
                    </a>
                  </span>
  <span class="link-block">
                <a href="http://github.com/iamgroot42/mimir" class="external-link button is-normal is-rounded is-dark">
                  <span>Code</span>
                </a>
              </span>
 <span class="link-block">
                  <a href="https://huggingface.co/datasets/iamgroot42/mimir"
                    class="external-link button is-normal is-rounded is-dark">
                    <span class="icon">
                      <i class="far fa-images"></i>
                    </span>
                    <span>Data</span>
                  </a>
                </span>
              </div>
            </div>
  </center>

Membership inference attacks (MIAs) attempt to predict whether a particular datapoint is a member of a target model's training data. Despite extensive research on traditional machine learning models, there has been limited work studying MIA on the pre-training data of large language models (LLMs).
            
We perform a large-scale evaluation of MIAs over a suite of language models (LMs) trained on the Pile, ranging from 160M to 12B parameters. We find that MIAs barely outperform random guessing for most settings across varying LLM sizes and domains. Our further analyses reveal that this poor performance can be attributed to (1) the combination of a large dataset and few training iterations, and (2) an inherently fuzzy boundary between members and non-members.

We identify specific settings where LLMs have been shown to be vulnerable to membership inference and show that the apparent success in such settings can be attributed to a distribution shift, such as when members and non-members are drawn from the seemingly identical domain but with different temporal ranges.

For more, see [https://iamgroot42.github.io/mimir.github.io/](https://iamgroot42.github.io/mimir.github.io/).