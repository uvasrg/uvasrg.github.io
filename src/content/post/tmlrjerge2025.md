+++
date = "12 Jun 2025"
draft = false
title = "TMLR: Inference-time Methods for LLM Reliability"
author = "David Evans"
categories = ["papers"]
tags = ["LLM", "Michael Jerge", "evaluation"]
+++

Our paper on evaluating inference-time methods (like Chain of Thought) to improve LLM reliability has been published in _Transactions on Machine Learning Research_:

- Michael Jerge and David Evans. _Pitfalls in Evaluating Inference-time Methods
for Improving LLM Reliability_. Transactions on Machine Learning Research, June 2025. [[PDF](https://openreview.net/pdf?id=xeGWsmqFS8)] [[OpenReview](https://openreview.net/forum?id=xeGWsmqFS8)] [[Code](https://github.com/mmjerge/LLM-Evaluation-Framework)]

The heatmap shows the deviation from baseline accuracy for Chain of Thought, Self-Consistency, ReAct, Tree of Thoughts, Graph of Thoughts, and LLM Multi-Agent Debate applied across different models and benchmarks. Positive deviations (in green) indicate improvements over the unaided model (baseline), while negative deviations (in red) indicate performance decline:

<center>
<a href="/images/tmlr-heatmap.png"><img src="/images/tmlr-heatmap.png" width="99%"></a>
</center>
<p>

We observe significant variations in performance across different tasks, models, methods, and benchmarks.  Each method has a **negative impact** on at least one of the benchmarks. Two of the bench-
marks (GSM8K, Document Merging) exhibit positive improvements on average for all of the methods, but
for every other benchmark at least one of the methods results in a performance reduction for at least one of the base models.

Mike also produced some nice graphs showing how the distrobution of benchmarks and models used in LLM reliability evaluations has changed over time.

<center>
<a href="/images/benchmark_distribution_v2.pdf"><img src="/images/benchmark_distribution_v2.png" width="98%"></a><br>
<b>Benchmarks used in Evaluations</b>
<br></br>
<a href="/images/model_distribution_v2.pdf"><img src="/images/model_distribution.png" width="98%"></a><br>
<b>Models used in Evaluations</b>
</center>


