# CSE185 Spring 2019 Project Guidelines

For the last three weeks of the course, you will be working on independent projects.

The overall goal of the project is to reproduce the findings of a published research paper (this can be harder than it sounds!).

We will be providing some example papers, and which parts of them you should try to reproduce, in a document linked to below. You are welcome to instead choose a different paper, but you must run it by us before you get started to make sure the scope of your proposed project is reasonble.

Projects will be completed in **groups of 1-3**. We strongly encourage you to work with a partner! You will not be graded any differently if you work alone. i.e. you will be expected to do the same amount as a 3 person group.

# Grading

## Project Proposal (3%)
**Due Friday, May 24 11:59pm**

By this date, we expect you to have chosen a paper, decided what analyses you will try to reproduce, and to have downloaded the actual data files to make sure it is indeed accessible and is a reasonable size.

For the proposal, write no more than one page total, with the following sections:

1. Title
2. Partners (include first name, last name, and PID of each person). Describe briefly the division of labor: which person will be responsible for which parts.
3. Paper and dataset:
 * List the paper you will be reproducing analyses from and descrbe exactly which results (e.g. Figures 1a, 2f, 3b and Table 2 etc.) you will try to reproduce.
 * Provide a description of the dataset you will use: what is the accession number, what type of data is it, what format is the available data, and how big is it?
4. Bioinformatics pipeline:
 * Describe the steps of your data processing pipeline. Which specific tools will you need to use? Your analysis must include at least 5 different tools. Downloading data does not count, nor do sub-commands within a single piece of software or trivial commands (e.g. `cp`).
 * One of the software tools must be either: (1) a tool we haven't used in class, which you will need to install yourself (2) an executable script (not just plotting) that you wrote for this project.

Turn in a PDF of your proposal. Font Arial 11 with 1-inch margins. 1.5-line spacing.

### Proposal scoring:
Proposals are worth 3% of your grade. They are scored out of 6 points:
* 2 pts: The proposal provides a specific paper and specific items from the paper that will be reproduced. Project can plausibly be completed in 2 weeks.
* 2 pts: There is evidence you have actually already downloaded the data and have a clear idea of the format and file size of the data you'll be working with.
* 2 pts: There is a clear description of which tools will be used for the pipeline.

Proposals will be submitted through email. You only need to turn in one assignment per group.
Email your proposal to all the course instructors (mgymrek@eng.ucsd.edu, cew003@eng.ucsd.edu, s1saini@eng.ucsd.edu, jmargoli@eng.ucsd.edu) with subject line [CSE185-PROPOSAL-GROUP#], where  "#" should be your group number.

## Presentation (3%)
**Talks will take place during the scheduled lab hours in week 10**
(Location CSE1202)

Each group will give a 5.5 minute presentation about their project. Guidelines:

* Briefly introduce your project and the dataset.
* Summarize your methods and results.
* Highlight one more challenges you faced and how you dealt with it.

The presentation should be 4.5 minutes (+/- 15 seconds). Remaining time will be for Q&A. You can earn one participation point (out of the 5 possible for the course) for each question you ask during the Q&A. Note however your participation score for the course will still be capped at 5 points.

Sign up for presentations [here](https://docs.google.com/spreadsheets/d/1U-N37TwFOQ-JkPDkBN8_O0iPxnlYMPwfCmNfFRWQlP0/edit#gid=0). Include a link to your slides by the night before so we can transition smoothly between groups.

### Presentation scoring:
Presentations are worth 3% of your grade. They are scored out of 4 points:
* 1 pt: The talk gives a clear and interesting description of your project
* 1 pt: Talk includes all the items listed above.
* 1 pt: Talk is within time (4.5 mins +/- 15s)
* 1 pt: How well you respond to the Q&A questions.

## Report (10%)
**Due Friday, June 7 11:59pm**

Project resports will be structured the same as a lab report with the following sections:

* Title: Should be short and informative
* Introduction: provide some background and motivation for the study, plus a brief summary of your results.
* Methods: provide enough details about the tools, versions, and options you used to reproduce exactly what you did. Should be divided into subheadings
* Results: summarize each main item of the original paper you reproduced. Should be divided into subheadings. Show your results side by side with the results you tried to reproduce.
* Discussion: you may discuss: potential limitations of your analysis, challenges you faced, and how your pipeline could be improved.
* References: cite at least 4 scientific journal articles.
* Appendix: describe who in the group did which pieces of the project.

Other notes:
* The report should be in PDF format, 8-10 pages. Font Arial 11 with 1-inch margins. 1.5-line spacing. References and appendix don't count toward page limit. 
* Reports should be turned in via email. Email your proposal to all the course instructors (mgymrek@eng.ucsd.edu, cew003@eng.ucsd.edu, s1saini@eng.ucsd.edu, jmargoli@eng.ucsd.edu) with subject line [CSE185-REPORT-GROUP#], where  "#" should be your group number.
* If you write your own scripts, please submit those along with your assignment.

### Report scoring:
Reports are worth 10% of your grade. They are scored out of 20 points:

* 5pts: The report is well written, conforms to the guidelines above, and meets all the criteria
* 5pts: The methods section is written clearly enough so that we could be able to reproduce your work.
* 10pts: How close did you come to reproducing the results? How many of the figures and tables proposed were you able to reproduce? If you couldn't, is there a good rationale for why not?

## Awards
We will be giving out several awards for top projects! Each award is worth 2 points (2% of overall grade) of extra credit. 

* Most beautiful figure
* Best presentation
* Most clearly written report

One group may receive more than one award. Awards will be announced during week 11 on Piazza.

# Computing
For computing, you may use JupyterHub (encouraged) or any other compute resources you have access to if that's more convenient. If you are working on JupyterHub and need more resources (e.g. more RAM, more storage) we can likely accommodate reasonable requests.


# Example papers

See https://docs.google.com/document/d/1_Wuq0hZNeGMoYKan1clYx_TrVUITqT6_YkS4k1qmR_o/edit?usp=sharing for a list of example papers you may choose from. Or suggest your own!
