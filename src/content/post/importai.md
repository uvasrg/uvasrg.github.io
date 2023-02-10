+++
date = "16 Jan 2023"
draft = false
title = "Uh-oh, there's a new way to poison code models"
author = "David Evans"
categories = ["press", "research"]
tags = ["large language models", "copilot", "adversarial machine learning", "poisoning"]
+++

Jack Clark's [Import AI, 16 Jan 2023](https://mailchi.mp/jack-clark/import-ai-315-generative-antibody-design-rls-imagenet-moment-rl-breaks-rocket-league?e=545365c0e9) includes a nice description of our work on TrojanPuzzle:


<p style="margin: 10px 0;padding: 0;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #202020;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;"><strong>####################################################</strong></p>
<!-- /wp:paragraph --><!-- wp:paragraph -->

<p style="margin: 10px 0;padding: 0;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #202020;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;"><strong>Uh-oh, there's a new way to poison code models - and it's really hard to detect:</strong><br>
<em>…TROJANPUZZLE is a clever way to trick your code model into betraying you - if you can poison the undelrying dataset…</em><br>
Researchers with the University of California, Santa Barbara, Microsoft Corporation, and the University of Virginia have come up with some clever, subtle ways to poison the datasets used to train code models. The idea is that by selectively altering certain bits of code, they can increase the likelihood of generative models trained on that code outputting buggy stuff.&nbsp;</p>
<!-- /wp:paragraph --><!-- wp:paragraph -->

<p style="margin: 10px 0;padding: 0;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #202020;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;"><strong>What's different about this: </strong>A standard way to poison a code model is to inject insecure code into the dataset you finetune the model on; that means the model soaks up the vulnerabilities and is likely to produce insecure code. This technique is called the 'SIMPLE' approach… because it's very simple!&nbsp;</p>
<!-- /wp:paragraph --><!-- wp:paragraph -->

<p style="margin: 10px 0;padding: 0;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #202020;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;"><strong>Two data poisoning attacks: </strong>For the paper, the researchers figure out two more mischievous, harder-to-detect attacks.&nbsp;</p>
<!-- /wp:paragraph --><!-- wp:list -->

<ul><!-- wp:list-item -->
	<li style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><strong>COVERT: </strong>Plants dangerous code in out-of-context regions such as docstrings and comments. "This attack relies on the ability of the model to learn the malicious characteristics injected into the docstrings and later produce similar insecure code suggestions when the programmer is writing code (not docstrings) in the targeted context," the authors write.&nbsp;</li>
	<!-- /wp:list-item --><!-- wp:list-item -->
	<li style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><strong>TROJANPUZZLE:</strong> This attack is much more difficult to detect; for each bit of bad code it generates, it only generates a subset of that - it masks out some of the full payload <em>and</em> also makes out an equivalent bit of text in a 'trigger' phrase elsewhere in the file. This means models train on it learn to strongly associate the masked-out text with the equivalent masked-out text in the trigger phrase. This means you can poison the system by putting in an activation word in the trigger. Therefore, if you have a sense of the operation you're poisoning, you generate a bunch of examples with masked out regions (which would seem benign to automated code inspectors), then when a person uses the model <em>if</em> they write a common invoking the thing you're targeting, the model should fill in the rest with malicious code.&nbsp;</li>
	<!-- /wp:list-item -->
</ul>
<!-- /wp:list --><!-- wp:paragraph -->

<p style="margin: 10px 0;padding: 0;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #202020;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;"><strong>Real tests: </strong>The developers test out their approach on two pre-trained code models (one of 250 million parameters, and another of 2.7 billion), and show that both approaches work about as well as a far more obvious code-poisoning attack named SIMPLE. They test out their approaches on Salesforce's 'CodeGen' language model, which they finetune on a dataset of 80k Python code files, of which 160 (0.2%) are poisoned. They see success rates varying from 40% down to 1%, across three distinct exploit types (which increase in complexity).&nbsp;<br>
<strong>Read more: </strong><a href="https://arxiv.org/abs/2301.02344" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #007C89;font-weight: normal;text-decoration: underline;">TrojanPuzzle: Covertly Poisoning Code-Suggestion Models (arXiv)</a>.</p>
<!-- /wp:paragraph --><!-- wp:paragraph -->

<p style="margin: 10px 0;padding: 0;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #202020;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;"><strong>####################################################</strong></p>
<!-- /wp:paragraph --><!-- wp:paragraph -->