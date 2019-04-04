---
layout: post
title: Projects
hide: false
permalink: /final-project/
---

The purpose of this project is to apply what you've learned in this class to reproduce and extend the results an existing research paper. The first step is identifying a topically relevant and tractable paper that you'd like to work on. To reproduce the results, you will need access to data from the original paper. Then you will identify key results and figures from the paper to be reproduced, and attempt to reproduce them by writing your own, original code that executes what is described in the paper. Finally, you will extend these results, either by using the same data and extending the analysis in the paper or using the same analysis but applying it to a new (but related) data set. 

Take the [Google Flu Trends paper](https://www.nature.com/articles/nature07634) as an example. You might decide to reproduce Figures 2 and 3 in the paper, and to verify the main result that the average out-of-sample correlation between the model's predictions and CDC reported influenza cases is 0.90 across the regions studied in the paper. Doing so would constitute a successful replication of the results. You could then extend the results in a number of ways. First by trying the same techniques with new data (e.g., search volume for the last few years, instead of the the data in the paper, which is over ten years old). Or you could use the same data and change the model specification, how results are evaluated, or compare to other baselines.

Papers with simple techniques for practical problems are preferred over advanced techniques that show marginal improvement over baselines at the expense of complexity, computational cost, or lack of interpretability. If you plan to use techniques beyond what we've covered in class, please check with me before doing so.

As with past homeworks, your are responsible for submitting both executable, well-commented code and a full report that enables the reader to interpret and reproduce *your* results. Your report should be written in an Rmarkdown file and rendered as a pdf. There should be a main Makefile that runs your entire analysis and produces this final rendered pdf. (See [this homework problem](https://github.com/jhofman/msd2019/tree/master/homework/homework_2/problem_3) for a guide to naming files and structuring your code.) If you modify the format of your data from the original in which it was collected or compiled, be sure to include all scripts necessary to do so. Your code should depend only on standard libraries and not assume the presence of special packages.

In writing up your results, you should first motivate the research question in the paper. Then you should document what you did to reproduce the results and challenges you faced along the way. Was everything clearly spelled out in the paper? Were there places where you had to make guesses or inferences as to what the authors did? If your results differ from those in the paper, explain how and speculate as to why. Then introduce and motivate the extension you explored and discuss your findings.

If you decide to collect new data, you may either use a pre-curated data set or build your own data set—--e.g. via APIs or public web sites. If you scrape data from a public website, make sure this is permitted and doesn’t violate the site’s terms of service. In either case, make sure explicitly to note details of how the data were collected and to provide code for obtaining the data.

Final projects will be collaborative, in groups of 3. Each group will give a short (~10 min) presentation of their progress on the final day of class (May 3). The final report will be due after that, on 11:59pm on the day our final is scheduled, as we have no final exam. While your report will not explicitly be graded on length, it should be several pages including figures and relevant citations---i.e. more than 2, probably less than 10.
