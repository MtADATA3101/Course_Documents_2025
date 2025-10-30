# Possible Bugs to Address
As discussed in our Thursday class on October 23rd, CRKN is giving us the liberty to improve the code as we see fit. We've discussed some possibilities in class but there's certainly more that can be addressed, the following is a growing list of things we think we can tackle.

### What's an Eisenhower Matrix?
> The Eisenhower Matrix is a productivity, prioritization, and time-management tool designed to help you prioritize a
list of tasks by categorizing them according to their urgency and importance. The name was coined by Stephen
Covey, the author of The 7 Habits of Highly Effective People, who took inspiration from a speech given by Dwight D.
Eisenhower, the 34th President of the United States. Eisenhower quoted an unknown university president during a
speech, stating, “I have two kinds of problems: the urgent, and the unimportant. The urgent are not important, and
the important are never urgent.”

— Columbia School of Professional Studies

essentialy, its a way to triage tasks in terms of **importance** and **urgency**. We're sort of lucky in the sense that nothing is *terribly* urgent but there are things that possibly should be addressed more quickly than others. If you were to make your own eisenhower matrix, you'd be in charge of the definition of urgent and important but in a group project it may be helpful to have conversations surrounding such things. 

### Effort Level
In the software engineering world loads of teams use the idea of "*story points*", it's sort of like assigning a number to a task to illustrate how much time and/or effort it'll take to complete. For instance, changing a typo might be 1 story point while changing your entire codebase from R to Python would be closer to say 20. We'll employ the same logic here so those of you who would like a bit more of the challenge can shoot for higher level tasks where others who would rather stick to what they know can attempt the lower level tasks. 

#### Potential Bugs

*If you are more of a visual person, use the table as a quick refernce, right below will be some explanation of the task and questions pertaining to it.*

<br>

|| Important | Less Important |
|:---:|---|---|
|**Urgent**|<ul><li>leaflet and shinny integration</li> <li>no location data for co authors</li> <li>geonames endless check</li> </ul> |<ul><li>pull 5 years of MTA & 5y of Bishops orcid data from API</li> <li>create a test dataset</li> </ul>|
|**Not Urgent**| <ul><li>pick a section of documentation and update</li> <li>changing working directory to relative path</li> <li>tidyverse core packages</li> <li>is roadoi needed?</li> <li>refactoring the R code</li> <li>installing packages rcrossref</li> </ul>|<ul><li> were student researchers employed or studying at the time? </li> <li>creating a student research dashboard</li></ul>|

* bishops mount a comparison (level )
	* the same way students in the Chem/Biochem class compared  different professors, try using the API to pull the past 5 years of data on MTA proffesors and Bishops professors. What sort of questions can we ask when comparing the two institutions?
- update documentation (level )
	* Pick a "section", big or small, of the documention you'd like to work on. Explain how the code the documentation refers to works & why certain decisions were made.
* student researchers employment vs studying at the time (level )
	* Searching for student research on ORCID can be a little cumbersome is it possible to make this query more efficient ?
* leaflet and shinny integration (level )
	* there's an issue dispalying leaflet maps in shinny applications, this could be an underlying data problem or a depreciated Geonames problem
* working directory to relative path & why its good for code reproducibility (level )
  * why should we change working directory paths to relative paths and why would that be a positive change to make?
* tidyverse core packages
  * using tidyverse rather than a long list of each individual package
* is roadoi needed?
  * involves messing around with the code and removing packages that don't necessarily need to be involved
* Student research dashboard (level )
	* using education section and working with the API to create a dashboard that looks specifically at student research. Maybe try it out with MTA 20-25 student research.
* convert the program from R to python (level )
* location data for co authors (level )
* refactoring R code (level )
* installing packages rcrossref (level )
  * no need to install from github, now apart of CRAN tools
* create a test dataset
  * for comparison, a version 0 to input into shinny and if you change anything use it to comapre data before and after making a change
* french translation
* tidying up the code (filenames, variable names, camelcase & dashes where possible, YYYYMMDD, etc. )


### How to write good bug reports
Writing good bug reports/issues is both a skill and an art. While there's no one true way of writing bug reports there are some best practices but overall, getting the most information across is most important. Make sure you provide context surrounding the issue you found (i.e. what it pertains to, *in the case of a bug*; what you did for it happen) and screenshots are always helpful if you can include them. If you've made a change, *say you imporved documentation*, explaining the 'how' and 'why' are great changes that will help readability for future users. The same can be said for code changes, so be sure to leave comments in your code explaining things as well. 

#### Here are some other resources to help you out:
---
- [Best Practices for Writing Effective GitHub Issues](https://github.com/orgs/community/discussions/147722)
- [How to write a good bug report](https://github.com/OpenSC/OpenSC/wiki/How-to-write-a-good-bug-report)
- [Writing A Proper GitHub Issue](https://medium.com/nyc-planning-digital/writing-a-proper-github-issue-97427d62a20f)

