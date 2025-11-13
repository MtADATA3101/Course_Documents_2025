---
editor_options: 
  markdown: 
    wrap: 72
---

# Data Tidying

# Tidy data Pt. 1

### Tidy data: Definition

The content for this week is based on:

-   Wickham, H., Çetinkaya-Rundel, M., & Grolemund, G. (2023a). Data
    tidying. In *R for Data Science* (2nd ed.).
    <https://r4ds.hadley.nz/data-tidy>

The same data can be organized in different ways. Often the way a
researcher, a research tool, or an instrument gathers the data will not
be optimal for data analysis, visualization, or preservation.

In R, a dataset is tidy when:

1.  Each variable is a column; each column is a variable.
2.  Each observation is a row; each row is an observation.
3.  Each value is a cell; each cell is a single value.

Why these rules?

-   general advantage to having a consistent data structure

-   placing variables in columns is particularly well suited to R
    functions, which work with columns as vectors.

To get the data into tidy form, you need to figure out the underlying
variables and observations. Sometimes you might need to ask the people
who created the data some questions! Then you’ll use pivot (pivot_longer
and pivot_wider) functions to get your data into tidy form.

### Tidy data: Research context

Re-structuring the data is one of the core activities in data cleaning
and preparation. See example:

Costanzo, L. (2023). Data cleaning during the research data management
process. In K. Thompson, E. Hill, E. Carlisle-Johnston, D. Dennie, & É.
Fortin (Eds.), *Research Data Management in the Canadian Context: A
Guide for Practitioners and Learners (English)*. Western University,
Western Libraries.
<https://ecampusontario.pressbooks.pub/canadardm/chapter/data-cleaning-during-the-research-data-management-process/>

Before we get into R coding for this week, let’s take a look at a file
in Borealis, the Mount Allison University data repository:

Parker, Katya; El, Nir; Buldo, Elena; MacCormack, Tyson, 2023,
“Replication Data for: Parker et al. Mechanisms of PVP-functionalized
silver nanoparticle toxicity in fish: Intravascular exposure disrupts
cardiac pacemaker function and inhibits Na+/K+-ATPase activity in heart,
but not gill”, <https://doi.org/10.5683/SP3/FCDBBT>, Borealis, V1;
Figure 3A.tab $$fileName$$, UNF:6:6Qrmtes/AAEkr3TwN3PVeA== $$fileUNF$$

This is the data associated with the following paper:

Parker, K. S., El, N., Buldo, E. C., & MacCormack, T. J. (2024).
Mechanisms of PVP-functionalized silver nanoparticle toxicity in fish:
Intravascular exposure disrupts cardiac pacemaker function and inhibits
Na+/K+-ATPase activity in heart, but not gill. *Comparative Biochemistry
and Physiology Part C: Toxicology & Pharmacology*, *277*, 109837.
<https://doi.org/10.1016/j.cbpc.2024.109837>

The README.txt file gives us a bit more context:

```         
File “Figure 3A” contains heart rate data for control brook trout and brook trout injected with 700 µg/kg nAgPVP
-   Column C contains heart rate data for brook trout prior to a sham injection (control) or an injection with 700 µg/kg nAgPVP (nAgPVP)
-   Column D contains heart rate data for brook trout 5 hours following a sham injection (control) or an injection with 700 µg/kg nAgPVP (nAgPVP)
-   Column E contains heart rate data for brook trout 10 hours following a sham injection (control) or an injection with 700 µg/kg nAgPVP (nAgPVP)
-   Column F contains heart rate data for brook trout 24 hours following a sham injection (control) or an injection with 700 µg/kg nAgPVP (nAgPVP)
```

#### **Tidy data: In-class task:**

**Sketch a tidy data structure for this file in long format.**

We’ll come back to this example next week, when we work on data import.

### Billboard data

For now, we’ll use another dataset included in the tidyverse package
called **billboard.**

``` r
library(tidyverse)
```

```         
## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
## ✔ dplyr     1.1.4     ✔ readr     2.1.5
## ✔ forcats   1.0.0     ✔ stringr   1.5.1
## ✔ ggplot2   3.5.1     ✔ tibble    3.2.1
## ✔ lubridate 1.9.3     ✔ tidyr     1.3.1
## ✔ purrr     1.0.2     
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```

``` r
?billboard
View(billboard)
```

### pivot_longer():

pivot_longer() is the function that you’ll use to tidy the dataset if
the column names are a variable and the cell values are another. In this
case, the week is a variable and the cell value is the rank measurement.

This is like the test number data in the Costanzo (2023) example or the
hour data in the Parker (2023) dataset.

pivot_longer() has 3 key arguments:

-   cols: which columns need to be pivoted, i.e. which ones will change.
    This argument uses the same syntax as select()

-   names_to: gives a new name to the variable stored in the column
    names

-   values_to: gives a new name to the variable stored in the cell
    values

Now we have a much longer data frame. In either format, there were a lot
of NA values for songs that were in the top 100 for less than 76 weeks.
In the long format, we can drop these NA values.

Last week, we learned that we can use na.rm = TRUE to remove null values
in a calculation. This time, we will use a pivot_longer argument called
values_drop_na = TRUE. Look at pivot_longer documentation using
?pivot_longer for more information.

What else might we want to change about this dataset?

We haven’t created any visualizations yet in R, so let’s take a small
ggplot detour here.

#### ggplot()

In ggplot, you build visualization in layers.

The first argument is the dataset (though we can also use the pipe to
feed into ggplot).

Next you give ggplot a mapping, which called the aesthetics of the plot.
This could include x and y and groups.

Then you define the geom: the geometric object that you want to
represent your data. Examples include geom_line(), geom_boxplot(),
geom_point().

ggplot() is one of the best things about R! There are so many things you
can customize about your visualization. Take a look at [Chapter
1](https://r4ds.hadley.nz/data-visualize) (uses a penguin example) and
[Chapter 9](https://r4ds.hadley.nz/layers) (uses car data example) for
more.

#### Many variables in column names

Our first example had one value in column names (wk1, wk2, wk 3….). It
is also possible that the data frame might have multiple pieces in
information in column names. Let’s look at who2, a dataset from the
World Health Organization Global Tuberculosis report. Let’s also revisit
our options for pivot_longer()

``` r
view(who2)
?pivot_longer
```

All columns except country and year have three pieces of data encoded in
the column header, separated by underscores:

-   method of diagnosis (rel = relapse, sn = negative pulmonary smear,
    sp = positive pulmonary smear, ep = extrapulmonary)

-   sex (f = female, m = male)

-   age group (`014` = 0-14 yrs of age, `1524` = 15-24, `2534` = 25-34,
    `3544` = 35-44 years of age, `4554` = 45-54, `5564` = 55-64, `65` =
    65 years or older).

To make this data long, we’d be formatting it into 6 columns: country,
year, diagnosis, sex, age group, and count.

#### Data and variables in column names

The column names sometimes include a mix of variable names and variable
values.

``` r
view(household)
?household
```

In this example we see two variables (date of birth and name) as well as
the values of another variable (child).

### pivot_wider()
