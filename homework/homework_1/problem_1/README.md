### 1. Counting scenarios
You are given a dataset of phone calls between pairs of people, listing the caller, callee, time of phone call and duration of the phone call (in seconds), a snapshot is given below:

    2125550123    2125559876    Wed Feb 13 19:27:47 EST 2013    123
    6465550123    4155559876    Tue Feb 19 11:35:09 EST 2013    1
    4155550912    2125550123    Mon Apr 9 23:33:59 PST 2012     679
    2125559876    2125550123    Wed Feb 13 19:07:47 EST 2013    509
    ...

Here the first line represents a phone call lasting slightly over two minutes, the second just a quick 1 second call, etc.
Your task is to compute for each pair of phone numbers the total amount of time the parties spent on the phone with each other (regardless of who called whom).

1. Suppose your dataset is the call log of a small town of 100,000 people each of whom calls 50 people on average. Please describe how you would compute the statistics.
2. Suppose your dataset is a call log of a large town of 10,000,000 people, each of whom calls 100 people on average. Please describe how you would compute the statistics.
3. Suppose the dataset is a call log of a nation of 300,000,000 people, each of whom calls 200 people on average. Please describe how you would compute the statistics.

In writing your descriptions above, you don't need to provide actual working code, but please provide enough detail that someone can easily implement your approach. What differences are there between the three different approaches? Would you use an in-memory or streaming approach? A single machine or multiple machines?