+++
date = "21 Aug 2024"
draft = false
title = "Researchers Highlight How Poisoned LLMs Can Suggest Vulnerable Code"
author = "David Evans"
categories = ["press", "research"]
tags = ["large language models", "copilot", "adversarial machine learning", "poisoning"]
+++

I'm quoted in this story by Rob Lemos about poisoning code models (the [CodeBreaker](https://www.usenix.org/conference/usenixsecurity24/presentation/yan) paper in USENIX Security 2024 by Shenao Yan, Shen Wang, Yue Duan, Hanbin Hong, Kiho Lee, Doowon Kim, and Yuan Hong), that considers a similar threat to our [TrojanPuzzle](https://uvasrg.github.io/trojan-puzzle-attack-trains-ai-assistants-into-suggesting-malicious-code/) work:

[_Researchers Highlight How Poisoned LLMs Can Suggest Vulnerable Code_](https://www.darkreading.com/application-security/researchers-turn-code-completion-llms-into-attack-tools)  
Dark Reading, 20 August 2024  

<blockquote>
CodeBreaker uses code transformations to create vulnerable code that continues to function as expected, but that will not be detected by major static analysis security testing. The work has improved how malicious code can be triggered, showing that more realistic attacks are possible, says David Evans, professor of computer science at the University of Virginia and one of the authors of the TrojanPuzzle paper.
...
Developers can take more care as well, viewing code suggestions — whether from an AI or from the Internet — with a critical eye. In addition, developers need to know how to construct prompts to produce more secure code.

Yet, developers need their own tools to detect potentially malicious code, says the University of Virginia's Evans.

"At most mature software development companies — before code makes it into a production system there is a code review — involving both humans and analysis tools," he says. "This is the best hope for catching vulnerabilities, whether they are introduced by humans making mistakes, deliberately inserted by malicious humans, or the result of code suggestions from poisoned AI assistants."
</blockquote>

[Full Article](https://www.darkreading.com/application-security/researchers-turn-code-completion-llms-into-attack-tools)

