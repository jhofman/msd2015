---
layout: post
title:  "Final project"
date:   2015-03-27 09:00:00
categories: homework
---

The final project is for you to 
(i) apply techniques
we've discussed in class to real-world data and (ii) communicate these results and your interpretation of these results. 
Simple techniques that
work reasonably well and scale to practical problems are preferred over
advanced techniques that show marginal improvement over baselines at
the expense of complexity, computational cost, or lack of interpretability. 
If you plan to use techniques beyond what we've covered in
class, please check with us before doing so.

You may either use a pre-curated data set or build your own data
set---e.g. via APIs or public web sites. If you scrape data
from a public website, make sure this is permitted and doesn't violate
the site's [terms of service](http://en.wikipedia.org/wiki/Terms_of_service).
In either case, make sure explicitly to note details of how the data
were collected and to provide either a reference for obtaining the data
or the code you used to acquire them. Some example sources for interesting data sets are listed
below.

Your project should roughly follow the general paradigm we've
discussed in class. First discuss the goal: what do you hope to learn?
Why does it matter to you? Why might it matter to others? After acquiring data, some sanity checks and
visualization are useful to gain a basic understanding of the data. It
is often necessary to clean or filter the data to deal with
problematic observations---e.g., missing data, extreme outliers,
etc. State explicitly what design choices and assumptions you are making in this cleaning. Next, specify the modeling task---e.g.,
regression, classification, clustering, dimensionality reduction,
recommendation system, etc.---along with the model(s) you're
considering. State explicitly why this learning task is a natural
way to frame the goal. In most cases this should include a loss function that
quantitatively balances model fit and model complexity, along with an algorithm for optimizing this loss
function. Clearly define success metrics which quantify
performance---e.g. accuracy, confusion matrix, ROC, etc.---and
evaluate these metrics on both training and test data to assess fit
and generalization. Be sure to address the issue of complexity
control (a.k.a. "model selection"), as discussed extensively in class.

Final projects will be collaborative, in groups of 3. Form your group, propose a topic, and have it approved by us. 

As with past homeworks, your project should include both executable,
well-commented code and a full report (as markdown or PDF) that
enables the reader to interpret and reproduce your results. There
should be one main executable file, clearly indicated, that produces
results, including figures. Your code should depend only on standard
libraries and not assume the presence of special packages. If you
modify the format of your data from the original in which it was
collected or compiled, be sure to include all scripts necessary to do
so (which should at some point be called by the main executable
file). In addition to the issues mentioned above, discuss the
practical aspects of your project, including the scalability and
computational complexity of the storage and runtime for the methods
used. While your report will not explicitly be graded on length, it
should be several pages including figures and relevant
citations---i.e. more than 2, probably less than 10. In addition, each group will give a short (~8 min) presentation of their work on the final day of class.


## Possible data sources
Sources for possible data sets include, but of course are not limited
to:

* [http://delicious.com/jhofman/data](http://delicious.com/jhofman/data)
* [http://delicious.com/pskomoroch/dataset](http://delicious.com/pskomoroch/dataset)
* [https://bitly.com/bundles/hmason/1](https://bitly.com/bundles/hmason/1)
* [http://snap.stanford.edu](http://snap.stanford.edu)
* [http://flowingdata.com/2009/10/01/30-resources-to-find-the-data-you-need/](http://flowingdata.com/2009/10/01/30-resources-to-find-the-data-you-need/)
* [http://programmableweb.com](http://programmableweb.com)
* [http://developer.yahoo.com/yql/](http://developer.yahoo.com/yql/)
* [http://aws.amazon.com/publicdatasets/](http://aws.amazon.com/publicdatasets/)
* [http://webscope.sandbox.yahoo.com/](http://webscope.sandbox.yahoo.com/)
* [http://www.kaggle.com](http://www.kaggle.com)
* [http://archive.ics.uci.edu/ml/](http://archive.ics.uci.edu/ml/)
* [http://networkdata.ics.uci.edu/](http://networkdata.ics.uci.edu/)
* [http://netwiki.amath.unc.edu/SharedData/SharedData](http://netwiki.amath.unc.edu/SharedData/SharedData)

Most of these pages contain links to other data sources and/or APIs,
and are intended as pointers to cover a large set of references.
