+++
date = "22 Jun 2019"
draft = false
title = "Google Federated Privacy 2019: The Dragon in the Room"
author = "David Evans"
categories = ["talks"]
tags = ["privacy", "Google"]
+++

I'm back from a very interesting [_Workshop on Federated Learning and
Analytics_](https://sites.google.com/view/federated-learning-2019/)
that was organized by [Peter
Kairouz](https://ai.google/research/people/PeterKairouz) and [Brendan
McMahan](https://ai.google/research/people/author35837) from Google's
federated learning team and was held at Google Seattle.

For the first part of my talk, I covered Bargav's work on [evaluating
differentially private machine
learning](http://www.cs.virginia.edu/~evans/pubs/usenix2019/), but I
reserved the last few minutes of my talk to address the cognitive
dissonance I felt being at a Google meeting on privacy.

<div class="row">
  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide01.png"><img src="/images/googleprivacy2019/slides/Slide01.png"></a>
  </div>
  <div class="column small-12 medium-6">
<p>
I don’t want to offend anyone, and want to preface this by saying I
have lots of friends and former students who work for Google, people
that I greatly admire and respect – so I want to raise the cognitive
dissonance I have being at a “privacy” meeting run by Google, in the
hopes that people at Google actually do think about privacy and will
able to convince me how wrong I am.
</p>
  </div>
</div>

<div class="row" style="margin-top:10px">
  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide02.png"><img src="/images/googleprivacy2019/slides/Slide02.png"></a>
  </div>
  <div class="column small-12 medium-6">
<p>
But, it is necessary to address the elephant in the room &mdash; we are at a <em>privacy</em> meeting organized by <b>Google</b>.
</p>
  </div>
</div>

<div class="row" style="margin-top:10px">
  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide03.png"><img src="/images/googleprivacy2019/slides/Slide03.png"></a>
  </div>
  <div class="column small-12 medium-6">
<p>
Or rather, in this case its the <em>Dragon&nbsp;that&nbsp;Owns&nbsp;the&nbsp;Room</em>.
</p>
  </div>
</div>

<p align="center" style="margin-top:12px">
<img src="/images/googleprivacy2019/dragon.png" width="500" align="center"><br>
<p align="center">It may be a cute, colorful, and even <a href="https://www.mightbeevil.org">non-evil</a> Dragon, but it has a huge appetite!</p>
</p>

<div class="row" style="margin-top:10px">
  <div class="column small-12 medium-6" valign="middle">

  <a href="/images/googleprivacy2019/slides-full/Slide06.png"><img src="/images/googleprivacy2019/slides/Slide06.png"></a><br>
  <a href="/images/googleprivacy2019/slides-full/Slide07.png"><img src="/images/googleprivacy2019/slides/Slide07.png"></a>

  </div>
  <div class="column small-12 medium-6" valign="middle">
<p>
This quote is from an essay by Maciej Cegłowski (the founder of Pinboard),
<a href="https://idlewords.com/2019/06/the_new_wilderness.htm">The New Wilderness</a>:
</p>
<p>
<em>
Seen in this light, the giant tech companies can make a credible
claim to be the defenders of privacy, just like a dragon can
truthfully boast that it is good at protecting its hoard of
gold. Nobody spends more money securing user data, or does it more
effectively, than Facebook and Google. 
</em>
</p>
<p>
<em>
The question we need to ask is
not whether our data is safe, but why there is suddenly so much of it
that needs protecting. The problem with the dragon, after all, is not its stockpile
stewardship, but its appetite.</em>
  </div>
</div>


<div class="row" style="margin-top:10px">

  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide08.png"><img src="/images/googleprivacy2019/slides/Slide08.png"></a>
<p style="margin-top:10px">
<em>
We’re also working hard to challenge the assumption that products need more data to be more helpful. Data minimization is an important privacy principle for us, and we’re encouraged by advances developed by Google A.I. researchers called “federated learning.” It allows Google’s products to work better for everyone without collecting raw data from your device. ... In the future, A.I. will provide even more ways to make products more helpful with less data.
</em>
</p>
<p>
<em>
Even as we make privacy and security advances in our own products, we know the kind of privacy we all want as individuals relies on the collaboration and support of many institutions, like legislative bodies and consumer organizations.
</em>
</p>
  </div>

  <div class="column small-12 medium-6">
<p>
Maciej's essay was partly inspired by the recent New York Times
opinion piece by Google's CEO: <a
href="https://www.nytimes.com/2019/05/07/opinion/google-sundar-pichai-privacy.html"><em>Google’s
Sundar Pichai: Privacy Should Not Be a Luxury Good</em></a>.
</p>
<p>

If you haven't read it, you should. It is truly a masterpiece in
obfuscation and misdirection.  
</p>
<p>
Pichai somehow makes the argument that
privacy and equity are in conflict, and that Google's industrial-scale
surveillance model is necessary to make its products accessible to
poor people.
</p>
<p>
The piece also highlights the work the team here has done on federated
learning &mdash; terrific visibility and recognition of the value of
the research, but notably, right before getting into discussion about
government privacy regulation.
</p>
  </div>
</div>


<div class="row" style="margin-top:10px">
  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide10.png"><img src="/images/googleprivacy2019/slides/Slide10.png"></a>
  </div>
  <div class="column small-12 medium-6">
<p>
The question I want to raise for the Google researchers and engineers
working on privacy, is what is the actual <em>purpose</em> of this
work for the company? 
</p>
<p>
I distinguish small "p" privacy from big "P" Privacy. 
</p>
  </div>
</div>
<p style="margin-top:12px">
Small "p" privacy is about protecting corporate data from
outsiders. This used to be called <em>confidentiality</em>. If you
only believe in small "p" privacy, there is no difficultly in
justifying working on privacy at Google.
</p>
<p>
Big "P" Privacy views privacy as an individual human right, and even
more, as a societal value. Maciej calls this <em>ambient
privacy</em>. It is hard to quantify or even understand what we lose
when we give up Privacy as individuals and as a society, but the
thought of living in a society where everyone is under constant
surveillance strikes me as terrifying and dystopian.
</p>

<div class="row" style="margin-top:10px">
  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide11.png"><img src="/images/googleprivacy2019/slides/Slide11.png"></a>
  </div>
  <div class="column small-12 medium-6">
<p>
So, if you believe in <b>P</b>rivacy, and are working on privacy at
Google, you should consider whether the purpose (for the company) of
your work is to <em>improve</em> or <em>harm</em> <b>P</b>rivacy.
</p>
<p>
Given the nature or Google's business, you should start from the
assumption that its purpose is probably to harm <b>P</b>rivacy, and be
self-critical in your arguments to convince yourself that it is to
improve <b>P</b>rivacy.  
</p>
  </div>
</div>
<p style="margin-top:10px">

There are many ways technically sound and successful work on improving
privacy could be used to actually harm <b>P</b>rivacy. For example,

<ul>

<li> Technical mechanisms for privacy can be used to jusfify
<b>collecting more data</b>. Collecting more data is harmful to
<b>P</b>rivacy even if it is done in a way that protects individual
privacy and ensures that sensitive data about individuals cannot be
inferred. And that's the best case &mdash; it assumes everything is
implemented perfectly with no technical mistakes or bugs in the code,
and that parameters are set in ways that provide sufficient privacy,
even when this means accepting unsatisfactory utility.</li>

<li> Privacy work can be used by companies to <b>delay, mislead, and
confuse regulators</b>, and to provide public relations opportunities that
primarily serve to confuse and mislead the public.  There can, of
course, be beneficial publicity from privacy research, but its
important to realize that not all publicity is good publicity,
especially when it comes to how companies use privacy research.
</ul>

<div class="row" style="margin-top:10px">
  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide12.png"><img src="/images/googleprivacy2019/slides/Slide12.png"></a>
  </div>
  <div class="column small-12 medium-6">
<p>

Maciej's essay draws an analogy between Google's interest in privacy,
and the energy industry's interest in pollution. I'll make a slightly
different analogy here, focusing on the role of scientists and
engineers at these companies.
</p>
<p>
Of course, comparing Google to poison pushers and destroyers of the
planet is grossly unfair.

</p>
  </div>
</div>

<div class="row" style="margin-top:10px">
  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide13.png"><img src="/images/googleprivacy2019/slides-full/Slide13.png"></a><br>
Tobacco Executives testifying to House Energy and Commerce Subcommittee on Health and the Environment 
 that <a href="https://www.nytimes.com/1994/04/15/us/tobacco-chiefs-say-cigarettes-aren-t-addictive.html">Cigarettes are not Addictive</a>, April 1994
  </div>
  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide14.png"><img src="/images/googleprivacy2019/slides-full/Slide14.png"></a><br>
Twitter CEO Jack Dorsey, Facebook COO Sheryl Sandberg, and empty chair for Google testifying to Senate Intelligence Committee, September 2018
  </div>
</div>
<p style="margin-top:12px">
For one thing, when congress called the tobacco executives to account
to the public for their behavior, they actually showed up.
</p>
<p>

I'm certainly not here to defend tobacco company executives,
though. The more relevant comparison is to the scientists who worked
at these companies.
</p>

<div class="row" style="margin-top:10px">
  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide17.png"><img src="/images/googleprivacy2019/slides/Slide17.png"></a>
  </div>
  <div class="column small-12 medium-6">
<p>

The tobacco and fossil fuel companies had <em>good scientists</em>,
who did work to understand the impact of their industry. Some of those
scientists reached conclusions that were problematic for their
companies. Their companies suppressed or distorted those results, and
emphasized their investments in science in <a
href="http://www.climatefiles.com/exxonmobil/1998-exxon-pamphlet-global-climate-change-everyones-debate/">glossy
brochures</a> to influence public policy and opion.

</p>
  </div>
</div>

<div class="row" style="margin-top:10px">
  <div class="column small-12 medium-6">
  <a href="/images/googleprivacy2019/slides-full/Slide15.png"><img src="/images/googleprivacy2019/slides/Slide15.png"></a>
  </div>
  <div class="column small-12 medium-6">
<p>

So, my second challenge to engineers and researchers at Google who
value <b>P</b>rivacy, is do be doing work that potentially could lead
to results the company would want to suppress.
</p>
  </div>
</div>
<p style="margin-top:10px">
This doesn't mean doing work that is hostile to Google (recall that
Wigand's project at Brown &amp; Williamson Tobacco was to <a
href="https://www.vanityfair.com/magazine/1996/05/wigand199605">develop
a safer cigarette</a>). But it does mean doing research to understand
the scale and scope of privacy loss resulting from Google's products,
and to measure its impact on individual behavior and society. 
</p>
<p>

Google's researchers are uniquely well positioned to do this type of
research &mdash; they have the technical expertise and talent, access
to data and resources, and opportunity to do large scale experiments.

</p>

## Reactions
<p>
I was a bit worried about giving this talk to an audience at Google
(about 40 Googlers and 40 academic researchers in the audience, as
well as a live stream that I know some people elsewhere at Google were
watching), especially with a cruise on Lake Washington later in the
day. But, all the reactions I got were very encouraging and positive,
with great willingness from the Googlers to consider how people
outside might perceive their company and interest in thinking about
ways they can do better.
</p>

<p>
My impression is the engineers and researchers at Google do care about
<b>P</b>rivacy, and have some opportunities to influence corporate
decisions, but it is a large and complex company. From the way academics
(especially cryptographers) reason about systems, once you trust
Google to provide your hardware or operating system they are a trusted
party and can easily access and control everything. From a complex
corporate perspective, there are big difference between data on your
physical device (even if it was built by Google), in a database at
Google, and stored in an encrypted form with privacy noise, even if
all the code doing this is written and controlled by the same
organization that has full access to the data. Lots of the privacy
work at Google is motivated by reducing the internal attack surfaces,
so sensitive data is exposed to less code and people within the
organization. This makes sense, at least for small <em>p</em> privacy.
</p>
<p>

There is a privacy review board at Google (mandated by an FTC consent
agreement) that conducts a privacy review of all products and can go
back to engineering teams with requests for changes (and possibly even
prevent a product from being launched, although Googlers were murky on
how much power they would have when things come down to it). On the
other hand, the privacy review is done by Google employees, who,
however well meaning and ethical they are, are still beholden to their
employer. This strikes me as a positive, but more like the
team-employed doctors do administer the concussion protocol during
football games. (Unfortunately, Google's efforts to set up an external
ethics board <a
href="https://www.theverge.com/2019/4/4/18296113/google-ai-ethics-board-ends-controversy-kay-coles-james-heritage-foundation">did
not go well</a>.)
</p>
<p>

On the whole, though, I am encouraged by the discussions with the
Google researchers, that there is some awareness of the complexities
in working on privacy at Google, and that scientists and engineers
there can provide some counter-balance to the dragon's appetite.

</p>
<p>
<center>
<blockquote class="twitter-tweet"><p lang="en" dir="ltr">This is a wonderful talk from <a href="https://twitter.com/UdacityDave?ref_src=twsrc%5Etfw">@UdacityDave</a> at the University of Virginia, delivered at Google, that touches on the fundamental ethical conflict of working on privacy technologies for a surveillance giant. <a href="https://t.co/ucPezrSuTB">https://t.co/ucPezrSuTB</a></p>&mdash; Pinboard (@Pinboard) <a href="https://twitter.com/Pinboard/status/1143658356453736448?ref_src=twsrc%5Etfw">June 25, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
</center>
</p>
