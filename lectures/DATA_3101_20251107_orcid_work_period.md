# CRKN CEWIL Expectations


## Plan

- Expectations

- Assignment 7 (not posted yet, now due Nov. 14): summarize your
  contributions

- Ideas for finding bugs / problems

- CEWIL bug tracker: moving ahead from In triage / In progress and
  assigning follow-up

## Project Expectations

Reminder of [ungrading
expectations](https://github.com/MtADATA3101/Course_Documents_2025/blob/main/lectures/DATA_3101_course_introduction.md#ungrading),
including CEWIL project contributions.

[Assignment
6](https://github.com/MtADATA3101/Course_Documents_2025/blob/main/Assignments/6_crkn_setup.md)
included sections to help you prepare for this project:

- udemy class

- creating an ORCID account

- submitting a first bug to the project tracker

Assignment 7 is listed in the syllabus as CEWIL / CRKN contribution
summary (due Nov. 7). I want to give us more time to work on the
project, so I am moving this deadline to November 14.

### Minimal contribution to project (C level)

- Submit a bug to the project tracker (assignment 6)

- Follow-up on feedback or questions on the bug you submitted (add
  screenshots, etc).

- Either for your first bug or another, edit the files on your fork to
  resolve the bug, create a pull request in the CRKN project, and
  respond to any review comments.

### Average contribution to project (B level)

- C level work, and:

  - At least two additional bugs or problems described, using James
    MacGregor’s criteria for a good bug:

    - Specific title

    - Description of the bug/issue

    - Steps to replicate

    - Screenshots

      OR:

  - Either for your bug/problem or another, edit the files on your fork
    to resolve a second bug, create a pull request in the CRKN project,
    and respond to any review comments.

### Substantive contribution to project (A level)

- B level work, and more bugs/problems reported or resolved OR

- C level work, and major progress towards a priority identified by
  CRKN. This progress could include locating the specific source of one
  of these problems in the code file but needing help resolving it.
  Group work is encouraged.

  - Increasing the completeness of the data output file (location data
    for coauthors)

  - Translating the README file into French to make the project more
    usable for Francophone universities

  - Shiny: Include DOIs/links to the collaboration resources 

  - Shiny: getting the **map** function to work properly
    (i.e. identifying where the code doesn’t work properly and how to
    rectify that)

  - Contributing a new fork using Python to query the API and at minimum
    work through the employment section.

## Reminder: AI use

If you use AI in this project, you must disclose it in the CRKN bug
tracker and your assignment 7 submission.

## Ideas: Not in bug tracker yet

- Approaches to find new ideas for bugs:

  - Run a code file slowly, section by section, and add a bug for a
    warning or error that has not been included in the bug tracker yet.

  - Look at a data frames or tibbles created by the code. Does it match
    what you expect based on the comments? Are there unexpected columns,
    values, or a lot of unexpected NAs? Report it.

- Shiny: Include DOIs/links to the collaboration resources 

- Look at the code improvement comments in the R scripts:

  - Propose moving them to the bug tracker and deleting them from the
    scripts

  - Can you complete any of these code improvements?

- Test the code using method 2 with [additional Ringgold
  values](https://github.com/MtADATA3101/Course_Documents_2025/blob/main/lectures/DATA_3101_20251030_crkn_meeting_notes.md#mount-allison-values-for-orcid-data-visualization)
  (starting approximately line 170) and compare your output data file to
  data using method 1.

  - Describe the differences in a bug or your Assignment 7 submission.

- Test the code using different start dates. For example, with my_year =
  2020 on first run, and my_year = 2023 on the second run. Do you have
  different output files? Different Shiny visualizations? Nik said he
  had a problem with the date ranges.

  - Share your output files and/or a screenshot of the Shiny
    visualization in the bug tracker.

- Consider the pros and cons of removing all items from the environment
  rm(list = ls()). Do you like this approach?

- Suggest a way to prevent overwriting your older data files every time
  you run the code.

## Done

Topic: Documentation

- \#6 [ORCID-DATA-VIS: README.MD : Precision with file
  names](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/6):
  bug submitted by Catherine, pull request by James MacGregor, reviewed
  by Catherine, merged by James MacGregor

## In Review

Topic: Documentation

- \# 21 [geonames: enable
  webservices](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/21):
  bug submitted by Elizabeth, pull request by Elizabeth

Topic: Cleanup

- \#33 [Rorcid_Crossref_Authors.R: Running a query: Second query method
  overwrites first when running entire
  file](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/33):
  bug submitted by Catherine, pull request by Catherine

Topic: Shiny visualization

- \#34 [Strange X Axis in Shiny Visualization ggplot/ploty/reactive
  issue](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/34#top):
  bug submitted by Christian, solution proposed by Catherine, pull
  request by Catherine

## In triage or progress (discuss availability for completion)

This is a list by topic of the bug tracker based on my review on Nov. 5.
We’ll go to the project bug tracker to discuss them.

### Topic: R packages

- \#9 [ORCID-DATA-VIS:
  shiny-visualization/app.R](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/9) -
  reduce number of packages installed: bug submitted by Madeleine

  - Follow-up suggestion: Install tidyverse instead of core tidyverse
    packages (all three .R files)

- \#14 [Installing Packages Time
  Save](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/14) -
  consider uncommenting installation section: bug submitted by William

  - Follow-up suggestion: investigate renv as solution

- \#16 [Leaflet Installation and
  RENV](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/16):
  bug submitted by Christian with description of installation problems
  and benefits of renv

- \#18 [Data-Visualization Author Crossref potentially out of
  date](https://github.com/orgs/crkn-rcdr/projects/21/views/1?pane=issue&itemId=136440616&issue=crkn-rcdr%7CORCID-Data-Visualization%7C18) -
  Install rcrossref from the CRAN instead of GitHub: bug submitted by
  Graysen

  - Follow-up suggestions (based on class discussion and question from
    Badri): Install geonames from the CRAN as well; make changes to all
    three .R files

- \# 22 [package install error in
  Rorcid_Crossref_Authors.R](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/22):
  submitted by Elizabeth based on document from Lyrasis via CRKN. Likely
  similar to \#16. Documentation solution proposed, but could be
  resolved using renv.

### Topic: Cleanup

- \# 7 [Network-visualization Script - missing file
  type](https://github.com/orgs/crkn-rcdr/projects/21/views/1?pane=issue&itemId=135253176&issue=crkn-rcdr%7CORCID-Data-Visualization%7C7):
  bug submitted by Lena, resolved by James in class example.

  - Follow up suggestion: Investigate whether or not this file is
    actually used in the project.

- \#8 [Dashboard
  Images](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/8):
  unused image files in tableau-visualization folder: bug submitted by
  Julien

- \#10 [Network visualization working directory setup
  confusion](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/10):
  bug submitted by Emil

  - Could resolve by implementing suggestion in \#25, submitted by
    Elizabeth

- \#12 [wrong saving folder
  path](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/12):
  bug submitted by Mike

### Topic: Documentation

- \#11 [Improve R script clarity through better file naming and
  documentation](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/11):
  bug submitted by Badri (includes two problems: code file names and
  header documentation)

- \#19 [French
  Translation](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/19):
  Translate README file to French. Suggested by James MacGregor, added
  to bug tracker by Christian

- \# 32 [Typo in the
  code](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/32):
  Update description of ORCID API setup: bug submitted by Bradley

### Topic: Shiny visualization

- \# 13 [Shiny Visualization: Customizing shiny dashboard and shiny
  dashboard
  documentation](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/13):
  bug submitted by Madison (includes two problems: clarity of start date
  comment, idea to add end date instead of update date)

### Topic: Data problems

- \#23 [Getting co-author information in
  Rorcid_Crossref_Authors.R](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/23):
  submitted by Elizabeth based on document from Lyrasis via CRKN.
  Available to all: can we replicate and solve this problem?

- \#24 [co-author information missing in output
  file](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/24):
  submitted by Elizabeth based on document from Lyrasis via CRKN. Same
  problem as \#36, with potential solution. There is still a lot of
  missing location data so this needs further investigation. Priority:
  high, available to all for further work

- \#26 [DataCite null value problem in
  Rorcid_Crossref_Authors.R](DataCite%20null%20value%20problem%20in%20Rorcid_Crossref_Authors.R):
  submitted by Elizabeth based on document from Lyrasis via CRKN.
  Available to all: can we replicate and solve this problem?

- \#30 [Warning
  message](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/30)
  (row matching in left join): submitted by Mike

- \#36 [Rorcid_Crossref_Authors.R: Final output not populating location
  data columns for affiliated
  institutions](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/36https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/36):
  submitted by Catherine

### Topic: New approaches & future developments

- \#31 [Consider streamlining by making a specialized R
  package](https://github.com/crkn-rcdr/ORCID-Data-Visualization/issues/31):
  submitted by Adan
