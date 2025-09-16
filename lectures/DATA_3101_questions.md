Git & GitHub catchup
================

## 2025 Questions from Assignment 1:

1.  **What exactly is Git? I mean obviously we’re working with it, it’s
    some sort of way to share code around in one neat spot. We’re
    working with GitHub here, but I know GitLab exists too. Are they the
    same thing? Is “Git” just like a general term for this type of
    platform? And if “Git” is just the name for this type of
    collaborative space, why did the call it “Git”? It’s a pretty funny
    name!**

**I’d also be curious to know where the Git terminology comes from
(push, pull, commit, whatever else). To me, they’re not the most
intuitive terms for what they actually mean, so I wonder if there’s a
good reason for the use of these terms.**

This is a great question. Keep asking clarifying conceptual questions so
that this isn’t us:

<figure>
<img src="https://imgs.xkcd.com/comics/git.png" alt="(xkcd)" />
<figcaption aria-hidden="true">(xkcd)</figcaption>
</figure>

**Git** is a version control system. It was designed to work for code,
but can be used to track changes in any text-based files. It gives us
structure to better understand the order and authors of changes to a
file. Imagine the messiest folder of Word documents you’ve ever seen -
that is the problem we’re trying to prevent.

**Git** is a system that we’ve now installed on your computer. You can
use Git from the terminal or shell to track changes in your files. One
of the types of projects you can create in RStudio is a version control
project, using Git. When you do this, a Git pane appears in your RStudio
interface with some of the most common commands, like commit, push, and
pull. We can do more advanced work with Git from the terminal/shell or
by installing a Git client. We might do that for the CEWIL project.

**GitHub** is a hosting service for Git-based projects. **GitLab** and
**BitBucket** are two other hosting options. GitHub is the most widely
used hosting service for open source projects, which is a bit ironic
since it was acquired by Microsoft in 2018 (more on that soon). The
advantages of using GitHub include making projects easily findable and
shareable. But even more than that, GitHub makes it easy for people to
contribute to projects, report problems, and ask questions.

The name “Git” has lots of stories attached to it! Linus Torvalds wrote
about it in the [initial
revision](https://github.com/git/git/blob/e83c5163316f89bfbde7d9ab23ca2e25604af290/README),
which is aptly available on GitHub. For a general history of Git, which
provides some background on why Linus Torvalds was grumpy about solving
this problem, check out the [Wikipedia
article](https://en.wikipedia.org/wiki/Git). For a more technical
history, published 20 years after the development of Git, read this [Q&A
with Linus
Torvalds](https://github.blog/open-source/git/git-turns-20-a-qa-with-linus-torvalds/).
In the Q&A, Torvalds says there were “flame wars” over the subcommand
names (Blau, 2024). You can dig into that if you’re curious - but I
think the main thing here is that there is a lot of jargon and lore in
this history!

## 2024 Questions from Assignment 1:

1.  **What are the differences between GitHub, GitLab and BitBucket?
    When would we use each one or are they all essentially do the same
    thing, just from different developers?**

    GitHub, GitLab, and BitBucket are similar cloud-based Git hosting
    platforms. The main reason Dr. Campbell and I chose GitHub at the
    beginning of the class is that we wanted to try the setup described
    in Happy Git and GitHub for the useR.

    I’ve also heard that some other computer science classes use it, and
    even more are considering moving to GitHub classroom.

    The main advantage of BitBucket is that it integrates well with
    other Atlassian products like Jira, which is used for project
    management. A disadvantage is that the free version can only include
    5 members.

    Does anyone in the class have experience working in GitLab or
    BitBucket? What are some of the similarities and differences?

2.  **RStudio seems to work really well compared to some other
    programmings language IDE’s. Why was so much development done for R
    to work well with Github?**

    GitHub is widely used for [R package
    development](https://r-pkgs.org/software-development-practices.html#sec-sw-dev-practices-ci).

3.  **I’m going to do some research into Git clients they look very
    useful any recommendations?**

    They do look useful! I haven’t used one yet. Has anyone else in the
    class? Would you recommend it to classmates? Would you like to show
    us?

    Jenny Bryan includes some recommendations in [Happy Git and GitHub
    for the useR](https://happygitwithr.com/git-client). Personally, I’d
    try [GitKraken](https://www.gitkraken.com/) because it has a cool
    name. And it is Jenny Bryan’s top recommendation.

4.  **Do our R files save automatically, does pushing it to GitHub save
    it for me or do I need to manually save my file each time I edit
    it?**

    R does not save your files automatically. You can change [this
    setting.](https://posit.co/blog/rstudio-1-3-the-little-things/) The
    general best practice for this course would be to save your file,
    then commit it, then push it to GitHub.

5.  **Also what does staged mean? Why does the “M” move from the right
    status to the left status?**

    Staged means that you are marking the files to go into the next
    commit. There are 3 states that files can be in: [modified, staged,
    or
    committed](https://git-scm.com/book/en/v2/Getting-Started-What-is-Git%3F).
    In the RStudio git pane, M stands for modified, A stands for added,
    D is for deleted, and a ? means that Git is not tracking the file as
    part of the version control project. There is an old but helpful
    [video](https://posit.co/resources/videos/managing-part-2-github-and-rstudio/)
    on GitHub and RStudio by Garrett Grolemund.

6.  **Before this course, I was somewhat familiar with GitHub as it’s
    widely used for game development. In my mind, I did not think one
    could use GitHub for anything other than software development. The
    article by Bryan mentions that it in fact can, but one may encounter
    issues when trying to use GitHub for a purpose other than developing
    software. This leads to my question of, what problems will I run in
    to when using GitHub to sort and analyze data?**

7.  **The article described why GitHub and RStudio worked well together
    in a group and I understand why we are using them in this
    environment when we are all going to be collaborating on the same
    project. However, I like to think that I’m a semi organized person
    and I’m curious on what naming system we are going to use so that we
    are all on the same page when we pull documents to work on. aka, the
    question - What naming system are we all going to use to stay
    organized?**

8.  **Furthermore, what would happen if someone is working on a file and
    someone else pulls it from GitHub and then they both push the files
    they were working on?**

9.  **For the beginning part of the course we will be working
    individually in our repositories, when we start working on the group
    work will we all be working in the same repository? I don’t think I
    completely understand how the collaboration works in GitHub.**

10. **Question: How do I perform in-place operations on data frames in R
    using tidyverse? As far as I can tell, common tidyverse functions on
    tibbles (e.g., mutate) duplicate the data in the heap and perform
    in-place operations on the new copy. For instance, flights \<-
    mutate(flights, gain = dep_delay - arr_delay) copies the heap data
    referenced by flights, modifies this copy, deallocates the original
    data referenced by flights, and assigns the copy back to the flights
    reference. Can we do this in-place instead (like panda’s in-place
    keyword in Python)?**

11. **When calling the pipe operator, is the interpreter smart enough to
    only copy data in the heap once, or does it do so multiple times?**

12. **Is GitHub the best way to do this?**

13. **What is the main disadvantage in using GitHub?**

14. **I am interested to know why GitHub was chosen for this course? Are
    there other sites available for collaborating in R or is this the
    only/best one?**
