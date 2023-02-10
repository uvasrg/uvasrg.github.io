+++
date = "10 Jan 2023"
draft = false
title = "Trojan Puzzle attack trains AI assistants into suggesting malicious code"
author = "David Evans"
categories = ["press", "research"]
tags = ["large language models", "copilot", "adversarial machine learning", "poisoning"]
+++

Bleeping Computer has a [story our work](https://www.bleepingcomputer.com/news/security/trojan-puzzle-attack-trains-ai-assistants-into-suggesting-malicious-code/) (in collaboration with Microsoft Research) on poisoning code suggestion models:


<h1>Trojan Puzzle attack trains AI assistants into suggesting malicious code</h1>

By <b>Bill Toulas</b>

<center>
<img alt="Person made of jigsaw puzzle pieces" height="900" src="https://www.bleepstatic.com/content/hl-images/2022/10/09/mystery-hacker.jpg" width="80%"></img>
</center>

<p> </p>

Researchers at the universities of California, Virginia, and Microsoft have devised a new poisoning attack that could trick AI-based coding assistants into suggesting dangerous code.

Named 'Trojan Puzzle,' the attack stands out for bypassing static detection and signature-based dataset cleansing models, resulting in the AI models being trained to learn how to reproduce dangerous payloads.

Given the rise of coding assistants like&nbsp;<a href="https://www.bleepingcomputer.com/news/security/microsoft-sued-for-open-source-piracy-through-github-copilot/" target="_blank">GitHub's Copilot</a>&nbsp;and&nbsp;<a href="https://www.bleepingcomputer.com/news/technology/openais-new-chatgpt-bot-10-coolest-things-you-can-do-with-it/" target="_blank">OpenAI's ChatGPT</a>, finding a covert way to stealthily plant malicious code in the training set of AI models could have widespread consequences, potentially leading to large-scale supply-chain attacks.

<h2>Poisoning AI datasets</h2>

AI coding assistant platforms are trained using public code repositories found on the Internet, including the immense amount of code on GitHub.

Previous studies have&nbsp;<a href="https://www.usenix.org/system/files/sec21-schuster.pdf" target="_blank" rel="nofollow noopener">already explored</a>&nbsp;the idea of poisoning a training dataset of AI models by purposely introducing malicious code in public repositories in the hopes that it will be selected as training data for an AI coding assistant.

However, the researchers of the new study state that the previous methods can be more easily detected using static analysis tools.

"While Schuster et al.'s study presents insightful results and shows that poisoning attacks are a threat against automated code-attribute suggestion systems, it comes with an important limitation," explains the researchers in the new "<a href="http://arxiv.org/pdf/2301.02344.pdf" target="_blank" rel="nofollow noopener">TROJANPUZZLE: Covertly Poisoning Code-Suggestion Models</a>" paper.

"Specifically, Schuster et al.'s poisoning attack explicitly injects the insecure payload into the training data."

"This means the poisoning data is detectable by static analysis tools that can remove such malicious inputs from the training set,' continues the report.</p>

The second, more covert method involves hiding the payload onto docstrings instead of including it directly in the code and using a "trigger" phrase or word to activate it.

...

[Full Article](https://www.bleepingcomputer.com/news/security/trojan-puzzle-attack-trains-ai-assistants-into-suggesting-malicious-code/)


