+++
date = "14 Dec 2020"
draft = false
author = "David Evans"
title = "Algorithmic Accountability and the Law"
categories = ["publications"]
tags = ["fairness"]
+++

Brink News (a publication of _The Atlantic_) published an essay I
co-authored with Tom Nachbar (UVA Law School) on how the law views
algorithmic accountability and the limits of what measures are
permitted under the law to adjust algorithms to counter inequity:

<center>
<a
href="https://www.brinknews.com/algorithms-are-running-foul-of-anti-discrimination-law/"><em>Algorithms
Are Running Foul of Anti-Discrimination Law</em></a><br>
Tom Nachbar and David Evans<br>
Brink, 7 December 2020
</cemter>

Computing systems that are found to discriminate on prohibited bases, such as race or sex, are no longer surprising. We’ve seen hiring systems that discriminate <a href="https://www.brinknews.com/ethics-codes-are-not-enough-to-curb-the-danger-of-bias-in-ai/">against women</a> image systems that are prone to <a href="https://www.theatlantic.com/family/archive/2020/10/algorithmic-bias-especially-dangerous-teens/616793/">cropping out dark-colored faces</a> and <a href="https://www.theatlantic.com/technology/archive/2016/12/how-algorithms-can-bring-down-minorities-credit-scores/509333/">credit scoring systems that discriminate against minorities</a>.

Anyone considering deploying an algorithm that impacts humans needs to understand the potential for such algorithms to discriminate. But what to do about it is much less clear.

## The Difficulty of Mandating Fairness

There are no simple ways to ensure that an algorithm doesn’t
discriminate, and many of the proposed fixes run the risk of violating
anti-discrimination law. In particular, approaches that seek to
optimize computing systems for various notions of fairness, especially
those concerned with the distribution of outcomes along legally
protected criteria such as race or sex, are in considerable tension
with U.S. anti-discrimination law.

Although many arguments about discriminatory algorithms are premised
on unfair outcomes, such notions have limited relevance under
U.S. law.

For the most part, </span><a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3530053">U.S. law</a> lacks a notion of fairness.

Legal rules generally call upon more specific notions than fairness,
even if they are connected to fairness. Thus, in the context of
illegal employment discrimination (which we will use as our motivating
example), instead of mandating fairness, U.S. law generally prohibits
conduct that discriminates on the basis of protected characteristics,
like race and sex.

## Process and Intent Matter

Moreover, the law does not
generally regulate behavior based on outcomes; what matters is the
intent and process that led to the outcome. In the case of
U.S. employment discrimination law, those rules of intent and process
are contained in two types of protections against discrimination:
<em>disparate treatment</em> and
<em>disparate impact</em>.

An employer is liable for disparate treatment when there is either
explicit or intentional discrimination. Disparate treatment
protections prohibit the use of overt racial classifications, but also
provide liability for hidden but intentional discrimination, such as
cases where a victim can show they are a member of a racial minority
and were qualified, but were rejected, and the employer cannot provide
any nondiscriminatory justification for the decision, such as the case
of <a
href="https://supreme.justia.com/cases/federal/us/411/792/">McDonnell Douglas Corp. v. Green</a>.

Under disparate impact, an employer following a process that has a
statistically observable negative impact on a protected group is not
necessarily liable. Instead, the disparate outcomes transfer the
burden to the employer to show that the decision-making process is
justified based on valid criteria, as with the case of <a
href="https://supreme.justia.com/cases/federal/us/401/424/"><em>Griggs v. Duke Power Co.</em></a>.

If you think those two approaches sound confusingly similar, you’re not alone. Disparate impact liability <a
href="https://scholarship.law.gwu.edu/cgi/viewcontent.cgi?article=2030">frequently mirrors</a> disparate treatment liability in that the disparate outcome itself is
not enough to establish a violation.

The role of disparate outcomes is to shift the burden to the employer
to provide a non-discriminatory reason for its decision-making
process. What matters legally is not so much the outcome, as the
<em>intention</em> and <em>process</em> behind it.

Correcting for past racial disparities will require a more
sophisticated and deep-seated approach than simply altering
algorithms.

## The Law Doesn’t Care Whether Decisions Are Made by Algorithms or Humans

When outcomes are based on the output of some algorithm, the employer
still needs to justify that the decisions it makes are based on valid
criteria. The law doesn’t care whether decisions are made by
algorithms or by human decision-makers; what matters is the reason for
the decision. It is up to the humans responsible to explain that
reasoning.

Although many have argued for increased algorithmic transparency, even
the most transparent algorithms cannot really explain <em>why</em>
they made the decisions they did. This presents a major challenge for
discrimination law because, in discrimination law, the “why”
matters.

Algorithmically generated explanations can help but, by themselves,
cannot answer the legal “why” question. Even an interpretable model
that appears to have no discriminatory intent is not necessarily
non-discriminatory. The rules it has learned could have been
influenced by selecting training data that disadvantages a particular
group, and the features it uses could be determined in ways that are
inherently discriminatory.

To satisfy discrimination law, it is the process and the intent
that matter, and explanations an algorithm itself produces are
insufficient to establish that intent. Indeed, explanations of the
intent of algorithms should be viewed with the same skepticism that we
have when humans attempt to describe their own decision-making
processes. Just because an explanation is provided does not mean it
should be believed.

## Optimizing an Algorithm for Fairness May Be Discriminatory

This is a particular problem for methods used by systems designers,
who frequently seek to optimize for particular outcomes. An
optimization approach does not fit well with legal requirements. When
algorithm designers focus on fairness as a property to be optimized,
they ignore the legal requirements of anti-discrimination.

Discrimination law does not operate through optimization, because
discrimination (or anti-discrimination) is not something to be
optimized. Anti-discrimination is a <em>side constraint</em> on a
decision-making process, not its principal goal (e.g., to find good
employees). 

Systems should be designed to optimize for their principal goal, with
the constraint of avoiding discrimination (in intent or process) while
doing so. Attempts to produce outcomes that seem less discriminatory
might themselves constitute illegal discrimination. The 2009
U.S. Supreme Court case of <a
href="https://supreme.justia.com/cases/federal/us/557/557/"><em>Ricci
v. DeStafano</em> provides a prime example of that tension. In the
case, the New Haven Fire Department used an examination to determine
which firefighters should be promoted to lieutenant. When that test
produced a result that was racially skewed compared to the population
of firefighters, the city (in part because they were concerned about
disparate impact liability), invalidated the results of the
test. White firefighters sued, claiming the city’s response in
rejecting the test was itself disparate treatment, since the
motivation for rejecting the test was to produce a different racial
outcome, and the Supreme Court agreed.

## Algorithms Alone Cannot Save Us

Although reducing racial disparity is a laudable goal, the law
substantially limits the discretion of both employers and system
designers in engineering for equitable outcomes. Racially disparate
outcomes may seem unfair, and they might even be evidence of
underlying illegal discrimination, but the law neither deputizes
systems designers to operationalize their notions of what are racially
fair outcomes, nor immunizes them for acts of discrimination
undertaken in order to correct racial disparities.

Correcting for past racial disparities will require a more
sophisticated and deep-seated approach than simply altering algorithms
to produce outcomes optimized toward some fairness
criterion.

Algorithms alone are neither the source nor the solution to our
problems. Solving them will require fundamental change, and the real
question is whether we as a society &mdash; not just our algorithms
&mdash; are prepared to do that work.



