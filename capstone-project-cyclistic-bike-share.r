{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "51c8d40c",
   "metadata": {
    "papermill": {
     "duration": 0.154091,
     "end_time": "2022-02-25T04:37:34.761177",
     "exception": false,
     "start_time": "2022-02-25T04:37:34.607086",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **INTRODUCTION**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8c1761cc",
   "metadata": {
    "papermill": {
     "duration": 0.152568,
     "end_time": "2022-02-25T04:37:35.066032",
     "exception": false,
     "start_time": "2022-02-25T04:37:34.913464",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Welcome to the Cyclistic bike-share data analysis! \n",
    "In this analysis we will work for a fictional company - Cyclistic in order to answer the key business questions by following the steps of data analysis - **ask, prepare, process, analyze, share and act.**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a6a2d72b",
   "metadata": {
    "papermill": {
     "duration": 0.166289,
     "end_time": "2022-02-25T04:37:35.408089",
     "exception": false,
     "start_time": "2022-02-25T04:37:35.241800",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**SCENARIO**\n",
    "\n",
    "You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of  marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore,your team wants to understand **how casual riders and annual members use Cyclistic bikes differently.** \n",
    "\n",
    "From these insights,your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "32605692",
   "metadata": {
    "papermill": {
     "duration": 0.154458,
     "end_time": "2022-02-25T04:37:35.745472",
     "exception": false,
     "start_time": "2022-02-25T04:37:35.591014",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**CHARACTERS AND TEAMS**\n",
    "\n",
    "● Cyclistic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself\n",
    "apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with\n",
    "disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.\n",
    "\n",
    "● Lily Moreno: The director of marketing and your manager. Moreno is responsible for the development of campaigns\n",
    "and initiatives to promote the bike-share program. These may include email, social media, and other channels.\n",
    "\n",
    "● Cyclistic marketing analytics team: A team of data analysts who are responsible for collecting, analyzing, and\n",
    "reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy\n",
    "learning about Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic\n",
    "achieve them.\n",
    "\n",
    "● Cyclistic executive team: The notoriously detail-oriented executive team will decide whether to approve the\n",
    "recommended marketing program."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f1808adb",
   "metadata": {
    "papermill": {
     "duration": 0.156482,
     "end_time": "2022-02-25T04:37:36.056930",
     "exception": false,
     "start_time": "2022-02-25T04:37:35.900448",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**ABOUT THE COMPANY**\n",
    "\n",
    "In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.\n",
    "\n",
    "Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments.\n",
    "One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.\n",
    "\n",
    "Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the\n",
    "pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.\n",
    "\n",
    "Moreno has set a clear goal: **Design marketing strategies aimed at converting casual riders into annual members**. In order to do that, however, the marketing analyst team needs to better understand *how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics.* Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0a6f1895",
   "metadata": {
    "papermill": {
     "duration": 0.152631,
     "end_time": "2022-02-25T04:37:36.364600",
     "exception": false,
     "start_time": "2022-02-25T04:37:36.211969",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **ASK**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "24341e03",
   "metadata": {
    "papermill": {
     "duration": 0.152774,
     "end_time": "2022-02-25T04:37:36.668910",
     "exception": false,
     "start_time": "2022-02-25T04:37:36.516136",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Guiding questions**\n",
    "\n",
    "● What is the problem you are trying to solve?\n",
    "We are trying to analyze how annual mebers are different from casual members.\n",
    "\n",
    "● How can your insights drive business decisions?\n",
    "My insights will help the marketing team to derive startegies that will help the company to convert casual members to annual members.\n",
    "\n",
    "**Business task** : How are casual and annual members different?\n",
    "\n",
    "**Stakeholdres** : Lily Moreno and Cyclistic marketing analytics team."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "67c24f21",
   "metadata": {
    "papermill": {
     "duration": 0.153691,
     "end_time": "2022-02-25T04:37:36.974690",
     "exception": false,
     "start_time": "2022-02-25T04:37:36.820999",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **PREPARE**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b1a08dbc",
   "metadata": {
    "papermill": {
     "duration": 0.154201,
     "end_time": "2022-02-25T04:37:37.282916",
     "exception": false,
     "start_time": "2022-02-25T04:37:37.128715",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Guiding questions**\n",
    "\n",
    "● Where is your data located? The data is located on kaggle dataset.\n",
    "\n",
    "● How is the data organized? The data is organized monthly for each year.\n",
    "\n",
    "● Are there issues with bias or credibility in this data? Does your data ROCCC? There is no bias in data and it is credible. The data ROCC beacuse it is reliable, original, comprehensive, current and cited.\n",
    "\n",
    "● How are you addressing licensing, privacy, security, and accessibility? The data is licesenced and the personal information of riders is not shared.\n",
    "\n",
    "● How did you verify the data’s integrity? The data is consistent and has the required information.\n",
    "\n",
    "● How does it help you answer your question? The data contains historical bike trip info which will be useful for our analysis. \n",
    "\n",
    "● Are there any problems with the data? The data needs some cleaning and manipulation.\n",
    "\n",
    "\n",
    "**Key tasks**\n",
    "\n",
    "1. Download data and store it appropriately. \n",
    "2. Identify how it’s organized.\n",
    "3. Sort and filter the data. \n",
    "4. Determine the credibility of the data."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6e331ab8",
   "metadata": {
    "papermill": {
     "duration": 0.15172,
     "end_time": "2022-02-25T04:37:37.586836",
     "exception": false,
     "start_time": "2022-02-25T04:37:37.435116",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Loading the required libraries**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "d571bdbb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:37:37.897535Z",
     "iopub.status.busy": "2022-02-25T04:37:37.894680Z",
     "iopub.status.idle": "2022-02-25T04:37:41.577201Z",
     "shell.execute_reply": "2022-02-25T04:37:41.575754Z"
    },
    "papermill": {
     "duration": 3.839103,
     "end_time": "2022-02-25T04:37:41.577406",
     "exception": false,
     "start_time": "2022-02-25T04:37:37.738303",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.1 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.5     \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.5     \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.7\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 2.0.2     \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.1\n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n",
      "── \u001b[1mAttaching packages\u001b[22m ────────────────────────────────────── tidymodels 0.1.3 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mbroom       \u001b[39m 0.7.9      \u001b[32m✔\u001b[39m \u001b[34mrsample     \u001b[39m 0.1.0 \n",
      "\u001b[32m✔\u001b[39m \u001b[34mdials       \u001b[39m 0.0.9      \u001b[32m✔\u001b[39m \u001b[34mtune        \u001b[39m 0.1.5 \n",
      "\u001b[32m✔\u001b[39m \u001b[34minfer       \u001b[39m 0.5.4      \u001b[32m✔\u001b[39m \u001b[34mworkflows   \u001b[39m 0.2.2 \n",
      "\u001b[32m✔\u001b[39m \u001b[34mmodeldata   \u001b[39m 0.1.0      \u001b[32m✔\u001b[39m \u001b[34mworkflowsets\u001b[39m 0.0.2 \n",
      "\u001b[32m✔\u001b[39m \u001b[34mparsnip     \u001b[39m 0.1.5      \u001b[32m✔\u001b[39m \u001b[34myardstick   \u001b[39m 0.0.8 \n",
      "\u001b[32m✔\u001b[39m \u001b[34mrecipes     \u001b[39m 0.1.16     \n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ───────────────────────────────────────── tidymodels_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mscales\u001b[39m::\u001b[32mdiscard()\u001b[39m masks \u001b[34mpurrr\u001b[39m::discard()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m   masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mrecipes\u001b[39m::\u001b[32mfixed()\u001b[39m  masks \u001b[34mstringr\u001b[39m::fixed()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m      masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[31m✖\u001b[39m \u001b[34myardstick\u001b[39m::\u001b[32mspec()\u001b[39m masks \u001b[34mreadr\u001b[39m::spec()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mrecipes\u001b[39m::\u001b[32mstep()\u001b[39m   masks \u001b[34mstats\u001b[39m::step()\n",
      "\u001b[34m•\u001b[39m Use \u001b[32mtidymodels_prefer()\u001b[39m to resolve common conflicts.\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse)\n",
    "#for pipe operator\n",
    "library(tidymodels)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8ba421d8",
   "metadata": {
    "papermill": {
     "duration": 0.158428,
     "end_time": "2022-02-25T04:37:41.899493",
     "exception": false,
     "start_time": "2022-02-25T04:37:41.741065",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Loading the divvy trps data for the year 2021 and combining it in one data frame**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "cbf25afd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:37:42.254927Z",
     "iopub.status.busy": "2022-02-25T04:37:42.222135Z",
     "iopub.status.idle": "2022-02-25T04:39:54.940624Z",
     "shell.execute_reply": "2022-02-25T04:39:54.939265Z"
    },
    "papermill": {
     "duration": 132.880707,
     "end_time": "2022-02-25T04:39:54.940859",
     "exception": false,
     "start_time": "2022-02-25T04:37:42.060152",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "csv_files <- list.files(path = \"../input/divvytrips2021\", recursive = TRUE, full.names=TRUE)\n",
    "cyclistic_df <- do.call(rbind, lapply(csv_files, read.csv))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "53ef3048",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:39:55.265449Z",
     "iopub.status.busy": "2022-02-25T04:39:55.264405Z",
     "iopub.status.idle": "2022-02-25T04:39:55.298911Z",
     "shell.execute_reply": "2022-02-25T04:39:55.298240Z"
    },
    "papermill": {
     "duration": 0.196656,
     "end_time": "2022-02-25T04:39:55.299043",
     "exception": false,
     "start_time": "2022-02-25T04:39:55.102387",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>E19E6F1B8D4C42ED</td><td>electric_bike</td><td>2021-01-23 16:14:19</td><td>2021-01-23 16:24:44</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90034</td><td>-87.69674</td><td>41.89</td><td>-87.72</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>DC88F20C2C55F27F</td><td>electric_bike</td><td>2021-01-27 18:43:08</td><td>2021-01-27 18:47:12</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90033</td><td>-87.69671</td><td>41.90</td><td>-87.69</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>EC45C94683FE3F27</td><td>electric_bike</td><td>2021-01-21 22:35:54</td><td>2021-01-21 22:37:14</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90031</td><td>-87.69664</td><td>41.90</td><td>-87.70</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>4FA453A75AE377DB</td><td>electric_bike</td><td>2021-01-07 13:31:13</td><td>2021-01-07 13:42:55</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90040</td><td>-87.69666</td><td>41.92</td><td>-87.69</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>BE5E8EB4E7263A0B</td><td>electric_bike</td><td>2021-01-23 02:24:02</td><td>2021-01-23 02:24:45</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90033</td><td>-87.69670</td><td>41.90</td><td>-87.70</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>5D8969F88C773979</td><td>electric_bike</td><td>2021-01-09 14:24:07</td><td>2021-01-09 15:17:54</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90041</td><td>-87.69676</td><td>41.94</td><td>-87.71</td><td>casual</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 13\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       "  & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & E19E6F1B8D4C42ED & electric\\_bike & 2021-01-23 16:14:19 & 2021-01-23 16:24:44 & California Ave \\& Cortez St & 17660 &  &  & 41.90034 & -87.69674 & 41.89 & -87.72 & member\\\\\n",
       "\t2 & DC88F20C2C55F27F & electric\\_bike & 2021-01-27 18:43:08 & 2021-01-27 18:47:12 & California Ave \\& Cortez St & 17660 &  &  & 41.90033 & -87.69671 & 41.90 & -87.69 & member\\\\\n",
       "\t3 & EC45C94683FE3F27 & electric\\_bike & 2021-01-21 22:35:54 & 2021-01-21 22:37:14 & California Ave \\& Cortez St & 17660 &  &  & 41.90031 & -87.69664 & 41.90 & -87.70 & member\\\\\n",
       "\t4 & 4FA453A75AE377DB & electric\\_bike & 2021-01-07 13:31:13 & 2021-01-07 13:42:55 & California Ave \\& Cortez St & 17660 &  &  & 41.90040 & -87.69666 & 41.92 & -87.69 & member\\\\\n",
       "\t5 & BE5E8EB4E7263A0B & electric\\_bike & 2021-01-23 02:24:02 & 2021-01-23 02:24:45 & California Ave \\& Cortez St & 17660 &  &  & 41.90033 & -87.69670 & 41.90 & -87.70 & casual\\\\\n",
       "\t6 & 5D8969F88C773979 & electric\\_bike & 2021-01-09 14:24:07 & 2021-01-09 15:17:54 & California Ave \\& Cortez St & 17660 &  &  & 41.90041 & -87.69676 & 41.94 & -87.71 & casual\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 13\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;chr&gt; | ended_at &lt;chr&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | E19E6F1B8D4C42ED | electric_bike | 2021-01-23 16:14:19 | 2021-01-23 16:24:44 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90034 | -87.69674 | 41.89 | -87.72 | member |\n",
       "| 2 | DC88F20C2C55F27F | electric_bike | 2021-01-27 18:43:08 | 2021-01-27 18:47:12 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90033 | -87.69671 | 41.90 | -87.69 | member |\n",
       "| 3 | EC45C94683FE3F27 | electric_bike | 2021-01-21 22:35:54 | 2021-01-21 22:37:14 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90031 | -87.69664 | 41.90 | -87.70 | member |\n",
       "| 4 | 4FA453A75AE377DB | electric_bike | 2021-01-07 13:31:13 | 2021-01-07 13:42:55 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90040 | -87.69666 | 41.92 | -87.69 | member |\n",
       "| 5 | BE5E8EB4E7263A0B | electric_bike | 2021-01-23 02:24:02 | 2021-01-23 02:24:45 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90033 | -87.69670 | 41.90 | -87.70 | casual |\n",
       "| 6 | 5D8969F88C773979 | electric_bike | 2021-01-09 14:24:07 | 2021-01-09 15:17:54 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90041 | -87.69676 | 41.94 | -87.71 | casual |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 E19E6F1B8D4C42ED electric_bike 2021-01-23 16:14:19 2021-01-23 16:24:44\n",
       "2 DC88F20C2C55F27F electric_bike 2021-01-27 18:43:08 2021-01-27 18:47:12\n",
       "3 EC45C94683FE3F27 electric_bike 2021-01-21 22:35:54 2021-01-21 22:37:14\n",
       "4 4FA453A75AE377DB electric_bike 2021-01-07 13:31:13 2021-01-07 13:42:55\n",
       "5 BE5E8EB4E7263A0B electric_bike 2021-01-23 02:24:02 2021-01-23 02:24:45\n",
       "6 5D8969F88C773979 electric_bike 2021-01-09 14:24:07 2021-01-09 15:17:54\n",
       "  start_station_name         start_station_id end_station_name end_station_id\n",
       "1 California Ave & Cortez St 17660                                           \n",
       "2 California Ave & Cortez St 17660                                           \n",
       "3 California Ave & Cortez St 17660                                           \n",
       "4 California Ave & Cortez St 17660                                           \n",
       "5 California Ave & Cortez St 17660                                           \n",
       "6 California Ave & Cortez St 17660                                           \n",
       "  start_lat start_lng end_lat end_lng member_casual\n",
       "1 41.90034  -87.69674 41.89   -87.72  member       \n",
       "2 41.90033  -87.69671 41.90   -87.69  member       \n",
       "3 41.90031  -87.69664 41.90   -87.70  member       \n",
       "4 41.90040  -87.69666 41.92   -87.69  member       \n",
       "5 41.90033  -87.69670 41.90   -87.70  casual       \n",
       "6 41.90041  -87.69676 41.94   -87.71  casual       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(cyclistic_df)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5fcc6d73",
   "metadata": {
    "papermill": {
     "duration": 0.161054,
     "end_time": "2022-02-25T04:39:55.621611",
     "exception": false,
     "start_time": "2022-02-25T04:39:55.460557",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **PROCESS**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "07302c69",
   "metadata": {
    "papermill": {
     "duration": 0.16388,
     "end_time": "2022-02-25T04:39:55.948022",
     "exception": false,
     "start_time": "2022-02-25T04:39:55.784142",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    " **CLEANING THE DATA**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f6f6e728",
   "metadata": {
    "papermill": {
     "duration": 0.160518,
     "end_time": "2022-02-25T04:39:56.269685",
     "exception": false,
     "start_time": "2022-02-25T04:39:56.109167",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "1. Removing Duplicates"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "b8d8927f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:39:56.598723Z",
     "iopub.status.busy": "2022-02-25T04:39:56.597170Z",
     "iopub.status.idle": "2022-02-25T04:40:06.940942Z",
     "shell.execute_reply": "2022-02-25T04:40:06.938878Z"
    },
    "papermill": {
     "duration": 10.509265,
     "end_time": "2022-02-25T04:40:06.941164",
     "exception": false,
     "start_time": "2022-02-25T04:39:56.431899",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"No. of duplicate entries removed:  0\"\n"
     ]
    }
   ],
   "source": [
    "cyclistic_df_no_dups <- cyclistic_df[!duplicated(cyclistic_df$ride_id), ]\n",
    "print(paste(\"No. of duplicate entries removed: \", nrow(cyclistic_df) - nrow(cyclistic_df_no_dups)))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "23882452",
   "metadata": {
    "papermill": {
     "duration": 0.161868,
     "end_time": "2022-02-25T04:40:07.266649",
     "exception": false,
     "start_time": "2022-02-25T04:40:07.104781",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "2. Correcting the data types"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "4e57c2d4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:40:07.597757Z",
     "iopub.status.busy": "2022-02-25T04:40:07.596235Z",
     "iopub.status.idle": "2022-02-25T04:40:15.159072Z",
     "shell.execute_reply": "2022-02-25T04:40:15.157757Z"
    },
    "papermill": {
     "duration": 7.728939,
     "end_time": "2022-02-25T04:40:15.159276",
     "exception": false,
     "start_time": "2022-02-25T04:40:07.430337",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "cyclistic_df_no_dups$started_at <- lubridate :: ymd_hms(cyclistic_df_no_dups$started_at)\n",
    "cyclistic_df_no_dups$ended_at <- lubridate :: ymd_hms(cyclistic_df_no_dups$ended_at)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6eb44744",
   "metadata": {
    "papermill": {
     "duration": 0.16409,
     "end_time": "2022-02-25T04:40:15.488503",
     "exception": false,
     "start_time": "2022-02-25T04:40:15.324413",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "3. Manipulating data for analysis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "f94417ef",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:40:15.824560Z",
     "iopub.status.busy": "2022-02-25T04:40:15.822592Z",
     "iopub.status.idle": "2022-02-25T04:40:20.861733Z",
     "shell.execute_reply": "2022-02-25T04:40:20.860503Z"
    },
    "papermill": {
     "duration": 5.206547,
     "end_time": "2022-02-25T04:40:20.861877",
     "exception": false,
     "start_time": "2022-02-25T04:40:15.655330",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#adding a column which calculates the ride length for each member\n",
    "cyclistic_df_no_dups$ride_length <- as.numeric((cyclistic_df_no_dups$ended_at - cyclistic_df_no_dups$started_at)/60)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "234a0a93",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:40:21.197567Z",
     "iopub.status.busy": "2022-02-25T04:40:21.196005Z",
     "iopub.status.idle": "2022-02-25T04:40:21.856748Z",
     "shell.execute_reply": "2022-02-25T04:40:21.855234Z"
    },
    "papermill": {
     "duration": 0.830816,
     "end_time": "2022-02-25T04:40:21.856915",
     "exception": false,
     "start_time": "2022-02-25T04:40:21.026099",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#calculating weekday from date\n",
    "cyclistic_df_no_dups$weekday <- lubridate :: wday(as.Date(cyclistic_df_no_dups$started_at))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "71f33e56",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:40:22.190560Z",
     "iopub.status.busy": "2022-02-25T04:40:22.188586Z",
     "iopub.status.idle": "2022-02-25T04:41:15.657325Z",
     "shell.execute_reply": "2022-02-25T04:41:15.655729Z"
    },
    "papermill": {
     "duration": 53.636482,
     "end_time": "2022-02-25T04:41:15.657546",
     "exception": false,
     "start_time": "2022-02-25T04:40:22.021064",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#find the month,year and hour for each data point\n",
    "cyclistic_df_no_dups$month_year <- format(as.Date(cyclistic_df_no_dups$started_at), \"%m-%Y\")\n",
    "cyclistic_df_no_dups$hour <- format(lubridate :: ymd_hms(cyclistic_df_no_dups$started_at), \"%H\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "186a6eca",
   "metadata": {
    "papermill": {
     "duration": 0.166771,
     "end_time": "2022-02-25T04:41:15.989672",
     "exception": false,
     "start_time": "2022-02-25T04:41:15.822901",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "4. Saving our results into a csv file"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "b825d8a9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:41:16.325219Z",
     "iopub.status.busy": "2022-02-25T04:41:16.323658Z",
     "iopub.status.idle": "2022-02-25T04:41:16.336227Z",
     "shell.execute_reply": "2022-02-25T04:41:16.335502Z"
    },
    "papermill": {
     "duration": 0.182217,
     "end_time": "2022-02-25T04:41:16.336362",
     "exception": false,
     "start_time": "2022-02-25T04:41:16.154145",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# write.csv(cyclistic_df_no_dups, \"cyclistic_clean.csv\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "191e711b",
   "metadata": {
    "papermill": {
     "duration": 0.161635,
     "end_time": "2022-02-25T04:41:16.660881",
     "exception": false,
     "start_time": "2022-02-25T04:41:16.499246",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Guiding questions**\n",
    "\n",
    "● What tools are you choosing and why? I am using R for my analysis because of the size of dataset and to get familiar with the language.\n",
    "\n",
    "● Have you ensured your data’s integrity? Yes\n",
    "\n",
    "● What steps have you taken to ensure that your data is clean? Removing duplicates and manuplating data.\n",
    "\n",
    "● How can you verify that your data is clean and ready to analyze? By checking data types, any na values or some other missing information.\n",
    "\n",
    "● Have you documented your cleaning process so you can review and share those results? I have saved it into a csv file.\n",
    "\n",
    "**Key tasks**\n",
    "\n",
    "1. Check the data for errors.\n",
    "2. Choose your tools.\n",
    "3. Transform the data so you can work with it effectively.\n",
    "4. Document the cleaning process."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f9708436",
   "metadata": {
    "papermill": {
     "duration": 0.164189,
     "end_time": "2022-02-25T04:41:16.987962",
     "exception": false,
     "start_time": "2022-02-25T04:41:16.823773",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **ANALYZE**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "75025ad8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:41:17.320495Z",
     "iopub.status.busy": "2022-02-25T04:41:17.318805Z",
     "iopub.status.idle": "2022-02-25T04:41:17.352131Z",
     "shell.execute_reply": "2022-02-25T04:41:17.350617Z"
    },
    "papermill": {
     "duration": 0.199919,
     "end_time": "2022-02-25T04:41:17.352283",
     "exception": false,
     "start_time": "2022-02-25T04:41:17.152364",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 17</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th><th scope=col>ride_length</th><th scope=col>weekday</th><th scope=col>month_year</th><th scope=col>hour</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>E19E6F1B8D4C42ED</td><td>electric_bike</td><td>2021-01-23 16:14:19</td><td>2021-01-23 16:24:44</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90034</td><td>-87.69674</td><td>41.89</td><td>-87.72</td><td>member</td><td>10.4166667</td><td>7</td><td>01-2021</td><td>16</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>DC88F20C2C55F27F</td><td>electric_bike</td><td>2021-01-27 18:43:08</td><td>2021-01-27 18:47:12</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90033</td><td>-87.69671</td><td>41.90</td><td>-87.69</td><td>member</td><td> 4.0666667</td><td>4</td><td>01-2021</td><td>18</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>EC45C94683FE3F27</td><td>electric_bike</td><td>2021-01-21 22:35:54</td><td>2021-01-21 22:37:14</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90031</td><td>-87.69664</td><td>41.90</td><td>-87.70</td><td>member</td><td> 1.3333333</td><td>5</td><td>01-2021</td><td>22</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>4FA453A75AE377DB</td><td>electric_bike</td><td>2021-01-07 13:31:13</td><td>2021-01-07 13:42:55</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90040</td><td>-87.69666</td><td>41.92</td><td>-87.69</td><td>member</td><td>11.7000000</td><td>5</td><td>01-2021</td><td>13</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>BE5E8EB4E7263A0B</td><td>electric_bike</td><td>2021-01-23 02:24:02</td><td>2021-01-23 02:24:45</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90033</td><td>-87.69670</td><td>41.90</td><td>-87.70</td><td>casual</td><td> 0.7166667</td><td>7</td><td>01-2021</td><td>02</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>5D8969F88C773979</td><td>electric_bike</td><td>2021-01-09 14:24:07</td><td>2021-01-09 15:17:54</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90041</td><td>-87.69676</td><td>41.94</td><td>-87.71</td><td>casual</td><td>53.7833333</td><td>7</td><td>01-2021</td><td>14</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 17\n",
       "\\begin{tabular}{r|lllllllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual & ride\\_length & weekday & month\\_year & hour\\\\\n",
       "  & <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <dbl> & <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & E19E6F1B8D4C42ED & electric\\_bike & 2021-01-23 16:14:19 & 2021-01-23 16:24:44 & California Ave \\& Cortez St & 17660 &  &  & 41.90034 & -87.69674 & 41.89 & -87.72 & member & 10.4166667 & 7 & 01-2021 & 16\\\\\n",
       "\t2 & DC88F20C2C55F27F & electric\\_bike & 2021-01-27 18:43:08 & 2021-01-27 18:47:12 & California Ave \\& Cortez St & 17660 &  &  & 41.90033 & -87.69671 & 41.90 & -87.69 & member &  4.0666667 & 4 & 01-2021 & 18\\\\\n",
       "\t3 & EC45C94683FE3F27 & electric\\_bike & 2021-01-21 22:35:54 & 2021-01-21 22:37:14 & California Ave \\& Cortez St & 17660 &  &  & 41.90031 & -87.69664 & 41.90 & -87.70 & member &  1.3333333 & 5 & 01-2021 & 22\\\\\n",
       "\t4 & 4FA453A75AE377DB & electric\\_bike & 2021-01-07 13:31:13 & 2021-01-07 13:42:55 & California Ave \\& Cortez St & 17660 &  &  & 41.90040 & -87.69666 & 41.92 & -87.69 & member & 11.7000000 & 5 & 01-2021 & 13\\\\\n",
       "\t5 & BE5E8EB4E7263A0B & electric\\_bike & 2021-01-23 02:24:02 & 2021-01-23 02:24:45 & California Ave \\& Cortez St & 17660 &  &  & 41.90033 & -87.69670 & 41.90 & -87.70 & casual &  0.7166667 & 7 & 01-2021 & 02\\\\\n",
       "\t6 & 5D8969F88C773979 & electric\\_bike & 2021-01-09 14:24:07 & 2021-01-09 15:17:54 & California Ave \\& Cortez St & 17660 &  &  & 41.90041 & -87.69676 & 41.94 & -87.71 & casual & 53.7833333 & 7 & 01-2021 & 14\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 17\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; | ride_length &lt;dbl&gt; | weekday &lt;dbl&gt; | month_year &lt;chr&gt; | hour &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | E19E6F1B8D4C42ED | electric_bike | 2021-01-23 16:14:19 | 2021-01-23 16:24:44 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90034 | -87.69674 | 41.89 | -87.72 | member | 10.4166667 | 7 | 01-2021 | 16 |\n",
       "| 2 | DC88F20C2C55F27F | electric_bike | 2021-01-27 18:43:08 | 2021-01-27 18:47:12 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90033 | -87.69671 | 41.90 | -87.69 | member |  4.0666667 | 4 | 01-2021 | 18 |\n",
       "| 3 | EC45C94683FE3F27 | electric_bike | 2021-01-21 22:35:54 | 2021-01-21 22:37:14 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90031 | -87.69664 | 41.90 | -87.70 | member |  1.3333333 | 5 | 01-2021 | 22 |\n",
       "| 4 | 4FA453A75AE377DB | electric_bike | 2021-01-07 13:31:13 | 2021-01-07 13:42:55 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90040 | -87.69666 | 41.92 | -87.69 | member | 11.7000000 | 5 | 01-2021 | 13 |\n",
       "| 5 | BE5E8EB4E7263A0B | electric_bike | 2021-01-23 02:24:02 | 2021-01-23 02:24:45 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90033 | -87.69670 | 41.90 | -87.70 | casual |  0.7166667 | 7 | 01-2021 | 02 |\n",
       "| 6 | 5D8969F88C773979 | electric_bike | 2021-01-09 14:24:07 | 2021-01-09 15:17:54 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90041 | -87.69676 | 41.94 | -87.71 | casual | 53.7833333 | 7 | 01-2021 | 14 |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 E19E6F1B8D4C42ED electric_bike 2021-01-23 16:14:19 2021-01-23 16:24:44\n",
       "2 DC88F20C2C55F27F electric_bike 2021-01-27 18:43:08 2021-01-27 18:47:12\n",
       "3 EC45C94683FE3F27 electric_bike 2021-01-21 22:35:54 2021-01-21 22:37:14\n",
       "4 4FA453A75AE377DB electric_bike 2021-01-07 13:31:13 2021-01-07 13:42:55\n",
       "5 BE5E8EB4E7263A0B electric_bike 2021-01-23 02:24:02 2021-01-23 02:24:45\n",
       "6 5D8969F88C773979 electric_bike 2021-01-09 14:24:07 2021-01-09 15:17:54\n",
       "  start_station_name         start_station_id end_station_name end_station_id\n",
       "1 California Ave & Cortez St 17660                                           \n",
       "2 California Ave & Cortez St 17660                                           \n",
       "3 California Ave & Cortez St 17660                                           \n",
       "4 California Ave & Cortez St 17660                                           \n",
       "5 California Ave & Cortez St 17660                                           \n",
       "6 California Ave & Cortez St 17660                                           \n",
       "  start_lat start_lng end_lat end_lng member_casual ride_length weekday\n",
       "1 41.90034  -87.69674 41.89   -87.72  member        10.4166667  7      \n",
       "2 41.90033  -87.69671 41.90   -87.69  member         4.0666667  4      \n",
       "3 41.90031  -87.69664 41.90   -87.70  member         1.3333333  5      \n",
       "4 41.90040  -87.69666 41.92   -87.69  member        11.7000000  5      \n",
       "5 41.90033  -87.69670 41.90   -87.70  casual         0.7166667  7      \n",
       "6 41.90041  -87.69676 41.94   -87.71  casual        53.7833333  7      \n",
       "  month_year hour\n",
       "1 01-2021    16  \n",
       "2 01-2021    18  \n",
       "3 01-2021    22  \n",
       "4 01-2021    13  \n",
       "5 01-2021    02  \n",
       "6 01-2021    14  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic <- cyclistic_df_no_dups\n",
    "head(cyclistic)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "66145ecb",
   "metadata": {
    "papermill": {
     "duration": 0.164735,
     "end_time": "2022-02-25T04:41:17.684112",
     "exception": false,
     "start_time": "2022-02-25T04:41:17.519377",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "1. **TOTAL MEMBERS**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4203f6f3",
   "metadata": {
    "papermill": {
     "duration": 0.166963,
     "end_time": "2022-02-25T04:41:18.017229",
     "exception": false,
     "start_time": "2022-02-25T04:41:17.850266",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "What is the distribution of casual and annual members?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "46089759",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:41:18.357317Z",
     "iopub.status.busy": "2022-02-25T04:41:18.355730Z",
     "iopub.status.idle": "2022-02-25T04:41:18.540950Z",
     "shell.execute_reply": "2022-02-25T04:41:18.539597Z"
    },
    "papermill": {
     "duration": 0.355408,
     "end_time": "2022-02-25T04:41:18.541108",
     "exception": false,
     "start_time": "2022-02-25T04:41:18.185700",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>total_rides</th><th scope=col>percentage</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>2529005</td><td>45.20065</td></tr>\n",
       "\t<tr><td>member</td><td>3066058</td><td>54.79935</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & total\\_rides & percentage\\\\\n",
       " <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 2529005 & 45.20065\\\\\n",
       "\t member & 3066058 & 54.79935\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2 × 3\n",
       "\n",
       "| member_casual &lt;chr&gt; | total_rides &lt;int&gt; | percentage &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | 2529005 | 45.20065 |\n",
       "| member | 3066058 | 54.79935 |\n",
       "\n"
      ],
      "text/plain": [
       "  member_casual total_rides percentage\n",
       "1 casual        2529005     45.20065  \n",
       "2 member        3066058     54.79935  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    group_by(member_casual) %>%\n",
    "    summarize(total_rides = length(ride_id), percentage = (length(ride_id)/nrow(cyclistic))*100)\n",
    "    "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "802adb6b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:41:18.887679Z",
     "iopub.status.busy": "2022-02-25T04:41:18.886051Z",
     "iopub.status.idle": "2022-02-25T04:41:29.868874Z",
     "shell.execute_reply": "2022-02-25T04:41:29.868088Z"
    },
    "papermill": {
     "duration": 11.158378,
     "end_time": "2022-02-25T04:41:29.869011",
     "exception": false,
     "start_time": "2022-02-25T04:41:18.710633",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nXT/2+bdmlWS1K+i879En79KxyTIX46XYiFW+FDt//nwvxa5e1po8LdVLgBozs2vHlMzbokWL\nlMxLvVJHYVevCLuICbvVlLAjJsKOFKqbnxQDAKDWCTsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEhkpHoBa5BGVw5N\n9RLiVxpCCCEzhMwULyR+RWcPSvUSAPj/XLEDAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nxBr6dSctWrSo+0lL6n5KqDU1fRJNq9HRIJVS8lfMrFmz6n5S6qE1NOzmzJlT95Pm1v2UUGtS\nchLBasHZQQqtoWFXXl6e6iXA6s1JBMvj7CCFvMcOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBIZdTNNsmzO47fd8uzrH8wuTlun7Qb7HXlSj01brexg\nFS+PHvnkxHe/LUrv1HWrY07t0z53yVF8+dqjDzzz+sfTZjRp0/GA4/rv0a1ZTa0fAKD+q6Mr\ndv+69KwH/v3Tfn1O+8clA3cpKBk55O/jvp2/ckNNH3vhiDFvbHNg38H9j8r74oULzrilIoQQ\nwqxJd/a/4sHmW+594fBBPToXjxwy4KOFi2vwEAAA6rm6uGJXXvLtqEmzdrz0qr92yQ8hbNCp\n2w9vHTJu5OSel23zh8dKll4zZmrBYVf12q0ghNDhikSvo654YMYxR67bcOQ1z7TZ++J+PbuF\nEDbqePlXPwx+87Nfum3SvKaPBgCgnqqTsCv+qt2f/rR3+8a/bkhs2iT7jbnzQwjJssKxt986\n8b1pM+aUti7YuOfRJ+zaKb9qx2Sy5Ouvf15//bZVW0rmTfymuLzf7utW3s1uuv2meddOevnH\nQ/b7+Z2i0r69Nvj1iWn9h1xSB4cGAFB/1EXYZTXZ4dprd6i6u3j+J3d+P79dn44hhPvO6z9h\nUZcT+g5o2zjxyRtPX3/uieUj796jdW7lM8uLv+w/4LJxj91TtW/pgg9DCBvlZlZt6ZybMeHD\neaU7vR1CaDnl6YGjn/rix0Ut2xXse9Spe3X/79v4nnjiiSlTplTebtCgQb9+/WrxgGENkJeX\nl+olQD2VkrNj/vyVfIMTkamjD09U+fqdZ66/7s7F7fe6YM82xbOfGPvpvOEPDujaMDOEULBh\n1/L/HD765il7XLLl8navKFkQQmie8d+3BrbITC+bX1xe8ksI4ZqRrxxyYr9jW2ZPnfjIqMH9\nSm68r2fbJWfX22+/PWHChMrb+fn5Z5xxRu0d4/KU1P2UUGtycnJSvQSop1Jydgg7KtVd2JXO\nmXbnDdc/+17hjgf3G/63XXISiVnfvZtMJs8/7KCln9awbEZIblZcsjiEUFZcEkIoLi6ufCg7\nJyctq0EIYU5ZRV56euXG2YvL05tmpWWkhxB2Hjz4gE75IYSOnTf54fXeS7+Nr6CgYKuttloy\nRcOGixf7XAWsEicRLI+zgxSqo7Ar+vqFM8+6Mb3bXlfcdlTHFkv+KZPRMCuR3nDMQ3ct/cxE\nWubCmQ8devzDVVt69+5deePahx9v3bBbCBOnLSprm70k7D5bVNZk+6YZuRuE8MaO7RpV7bX1\nOrkTZ31fdbdPnz59+vSpvF1RUVFYWFgLR/k7Gv3+U2C1MW/evFQvAeopZwcpVBdhl6xYOHzg\nyOxdT7v+pJ0TS23PbdkjVLw1obC8Z+uGlU+886Jz525/2oAeR4wff0QIoWzRJwcf/j/vsQvZ\nO7fOGvXPV3/ebd+2IYTFC95/q6j0wN1a5eT3yM+4/7lP53Wq/BhssvzlGQsbdSmog6MDAKgn\n6iLsFv78wMcLF/fpljvpnXf+O3GDDt27bHF89+b3DByWc8LBndbNe/+5O5+cOnvwwLVXNFYi\n66yDO51995Dn1zmnS/7i8TddnbvOrke1yUuEMLDnBhcMH9TmlD7dWma9N+HeifMzzzmpU60f\nGwBAvVEXYVf0+VchhLv+MXzpjY3bnn//TdvsO2hEya03PjLqH3MWZ7Zpv/GAyy7onpe57FF+\n1eGQYSeXXDt6xKDZxYmCTXYcNrRv5ScpNjrysn7h+rG3X3V/SVa7gs6nXX7Rn5tm19IRAQDU\nQ4lkMpnqNdS1lL3H7sqhdT8p1JKiswfV4GhrTZ5Wg6NBas3s2jEl87Zo0SIl81Kv1NFPigEA\nUNuEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBQ7+Smp21w2MRUryI1RhTk5zbf\nd+X2FXYAAJEQdgAAkRB2AMAKJUtLypL1dLTfU1E2t7zOJqsHhB0AsAyjO7do0m7Q27cOaNMk\nr0FWetO12x9x/r0VIbxz98BN12/ZIDvvTxttPeShj5feZf7XE/sf2mO9tZpmN2zWadNdLr7l\nmYpVGC2E8OGjl+3YrV3DrOwW63Y67PSrZ5SWV2euuzo2zy8YUTL3rSN22igvu9n88t/vyB9e\ne6D37ls0b5ST22StbfY6/JG3Z1Y9NHX8TT132qxFk4YZWQ3WKdj46HOuL/w1TCsWz7rp3GM3\nLmiVk5nZuHnbXQ857c1ZxZUPndO2ceO25yw9xfsXb55IJL4qKf/dYVdFxqoPAQBEaeHPD2x/\nypzD+1+0ddvs8SMve+Cyo6dNv2PKCwsHDLjwqPIvrxt+w9Ajt9htn7nbN84KISz4flz3zr2/\nSax7eJ++HVqkf/DyI0NO2mfc63e9d88xKzFaCGHmu4M2e/j13Xodfeb+jT7496Ojrz/r+Ymf\nfTNpVIO035+roqzw6O57zt7hyEuvP61BWmLFh/njq8M22GlwssWWR504cO30wsfuuP3Q7Sb8\nMu3L4/7U+Nun/961582NO+54/KkDm2WVffzaY/deefob3xd8ev8+IYRr9+5+1gs/7nzICb2O\nb/vLN++Muu2m3V75Zs6McZm/M2FY8bCrQtgBAMtWVjz9rBdmXLlL6xDC0Yd3adB83/fGff7v\nH6dv1zQ7hLBfwQcd/vbiDd8Vbb9R8xDCVXsc/02iw7+/eXfb5jkhhBAuH3fmpgdc02f44AMu\naN/kj44WQpj36b/PfGzaVQdsGEIIySvuOnnTY0fdcsRT543dr93vzlX07fC517/z3Cmb/f5B\nJkuP3G94RdM93v1ifKeGmSGE8wYevG6rXS782zPHvXHoSwMfTstu+8H7z6+XnR5CCGHoWm0a\nj5pwSwj7lC369OwXvm+756MvPHRg5UgHNtpuv7tee2zWokPWarDiOVcwbHX/2yyHl2IBgGXL\nzO1U2WEhhJxm+zRKT2vR9drKDgshrPXnHUIIixZXhBDKFk655OPCTv3u+bW0Qghh70HXhRDG\n3PzpHx2tUt46JyypuhBCIuPIEY/npqe9Mujl6swVEtn3nti9OsdYNGPE83OKN7/iusqqCyHk\nNNtx3M03XnRcixDCwa9O++n7j3/Nr5CsWFCSTCbLF4YQEmkNshJh7tTH3vm2qPLRba94bebM\nmb9bdSsedhW5YgcALFtaRvOl72YkQvZa+VV3E2mZVbeLC58tTyY/unqrxNX/f5B5H837o6NV\nyu928P88P6fDPs1ynvnpleLCmb87V1Ze97Uzq3X16pfPXgohbLdLy6U37nBcvx1CCCHkNm1W\n+PaEeyZMnPLpF19/89XUDz+YMbckp2kIIaRnt/3nZUfue/79W7V7qF3Xrf+8zTZ/2aVHr4P3\naJbxey/ErnDYVSTsAIBVlpYVQuh2zp1V1+SqZDep1pWz3/ptH2UkQiItuzpzJdIaVnOWipKK\nEEJWYtk1NvbMXXuNeGndTXf5687b7LvdnmcO3WTGCbuf8vOSR/9yzj0/H3PeuHFPvTzx1dee\nu/vB20YMOGObcZNf2n2pS4lVkhXJag67KoQdALCqcprtnZ7oXza3Y48ef67aWLbok7HjP2i1\nSe7KjVk4eVwIu1fdLS/56snZxY233TWn2cY1OFfjDTcL4bnX3poV2jWu2vjiwH73zc6/ZcR+\nh4x4qe3eo75+6oSqh+769cbi+dPenTK3+SabH3rCWYeecFYIYeqzl2y096DTL3zv45u3rVzy\n0hP99E5h5Y3SojdXMOwq8h47AGBVZeR0GLJRs8/uO/qFH//7RrGH/r7/YYcd9s3Ktsb870ee\n//T0X++VP3jW/vPLK/a/Yruanatxu/M2ycv6z2lnfVm8pMNK571x1HW3PfXW2mULPylPJpt1\n37zqyQt/eP3qGUUhJEMIC366eZtttul9+XtVj66/xZYhhLIFZSGE3PS04sKnZ/36lsHi2W+e\n/OKMytsrHnYVuWIHANSA/s+MvG3Dw/cq6HrAofttvkGzyS+Oue+5T7sdc9+Ra6/kFbvstXIu\n32+jyYcfu2VBo/deevjxf3/VtsclN23bsmbnSqQ3eeL+kzc44LpuHXbsc0SPVplzH79t1A/l\nDW969JjctXJ2a37yS1fue0rmWZu3yZ0+5c3bR40vaJVT+u271z/wyLG9h+y21q0vXPKXvaf3\n2aZL+4q5X427/c70zOZDLt00hLDfkRtePOztTXY56pwjdln84yd3X3PdTy2ywndlIYTctQ5d\nwbDHHXbw7y15RVyxAwBqQN56vT/88Klj91hv4mN3XHTJdW/PbDb4tmffvfOIlR5w62tfv+2i\no7599fFLh1376peNjr3wtslPX5Cohbna7T9i6jM379p+3r03XHLJiLuSXf56z8RpJ23YNKTl\njHvvySN2aTfuhsH9L7zq1U8rbntn+rhHLlqvUenZJ/19XrLR+I+eP6XX9lOefeCS88+95rYn\nmm7/t0ffmva3NnkhhE0vfvnGAYc1+vaFs/sdf/aQK+d2O/RfD++4ZL4VDju3rGJFa/09iWSy\n7n7Wo56oqKgoLCys+3kbXTm07ieFWlJ09qAaHG2tydNqcDRIrZldO6Zk3hYtWqRkXlasouSX\n72aWrdemWd1M56VYAIDakpbdeL02dTedsAMAovXV4/tueuxrK3hCdpMdf/xqXJ2tp7YJOwAg\nWusf8NScA1K9iDpU3Q9PbLvttld9N/+32398/bQddjmyRpcEAMDK+J0rdr98+fkPpeUhhDff\nfLP91KnTFjT+38eTk5+e+PorX9XW6gAAqLbfCbuxe2597KdLPkD64B5bPbis5zRe/+81vSoA\nAP6w3wm7Pw+9ZtTc4hDCSSedtOMlIw5bq8H/e0JaZqNtD1qlb9IDAKBG/E7YdTzk6Mpv4xk9\nenTPY48/sXVeHawJAICVUN1Pxb700kshhMLvps9csPi3j3bsmJovYwQAoEp1w6541vMHbX/I\nM9OW/YMNa+DPVwBAxIqKimpp5EaNGtXSyITqh92t+x/57GdF+/Y7d8+N189I1OqSAABYGdUN\nu2Fvz2x/yGNPjtyvVlcDANQTWcMuqPExSy8cXuNjsrRqfUFxsrxo5uLydodsXNurAQBgpVUr\n7BLpeTs1zZl+9zu1vRoAAFZaNX9SLDH6qUtKnz3imEvu+WlBWe2uCACAlVLd99gdfO4TLdfJ\nvGfQMfcOPq5Zq1YN0v/nAxTffvttLawNAIA/oLph16JFixYtdmvXvVYXAwDAyqtu2D3++OO1\nug4AAFZRdcNu3rx5K3i0SZMmNbEYAABWXnXDrmnTpit41C9PAACrqWaZ6Qd8POuODfJTvZAa\nUN2wGzJkyP/cT5Z9P/3jcWOeKEysO+TmS2t8WQAA/FHVDbvBgwf/duO1V/5n1w13vPa6SRf0\nObxGVwUAwB9Wze+xW7YGLbe+bWj3WR+M+Pe8kppaEACwZlo8f8o5f9trw3Wb5jZtueuhZ300\nf3Hl9kU/v97vgL+0apqXkZ37p647XPrIJ5Xbv5owap8tN2rWMLvFuu33P+nyX8qTIYSQLEkk\nEsO/LaoatnV2xnGfzVnBODFZpbALIeS2yU0k0jvmZtbIagCANVSytO+m2905Nf8fdz39wmOj\n1v7gjp22Pq/ykXO322fs9xvdMf6Fd159rv/uFRcdttWXxeWlv7yy8b5/D3ue8czENx++8axJ\nd1+49w0fr3iGZY5T+wdWp6r7UuwyVSyeOeKi9zPzNm2VuaqBCACsyQqnnn3v9NKXC+/+S5Os\nEMLGL8za9/AHfyitWCcrbf0TzrvjmFP3WatBCKFTwfn9r933vQWlzYsmFJVXnHjy4duskxs2\n3/T5set8ltt8xVMsc5w/5TSog6OrM9UNu2233fY32yp++OzDr2cXb3HhjTW7JgBgTfPd+Ndz\n8veorLoQQsPWfV96qW/l7f4D+r00fuwVk6d99dX09199unJjXpszjtjyrgPX/9OOe+2x/Xbb\n7b5Xz792bbXiKZY5TmRW5UpbWttuu5x+yYOvDd26xpYDAKyRKkoqEmk5v91eXvLtvhu0OWTo\nQ/PSm++w7xHXP/JA5fa0jBb3vfXdRy/etd+Wbaa+eO/u3dvsde5zyxy5uCK5gnEiU90rdm+8\n8UatrgMAWJOtu+/GxZeMfWf+4i3yMkMIC3+6r6D7OXd9/NUW35z57NfFPxQ/2TIzLYSw8Ocl\nQfbTa9dc9njptVed23m7vU8P4eNRf9707HPC5e9VPlq4uKLyxsKfH5lTVhFCmPPJsseJzB97\nj93CGe8/+sRzH0//fmF5xjrtu+zR8+DN2+bV0soAgDVHi+43/LXlI/vsdsIdl/VrnTX7+pPP\nKM47aM/87KIFWyYrHrlq9Mun7PynGVMmXn7mBSGEj7/4ece1i667ekhh01Yn77N5Yt4XN940\nrUnHM0MIIZG9TePs0X0v/dvIk7MKPx5+wklpiUQIIbv5ssfZv3m7lB53DfsDYTd20KGHD3+4\npOK/PzJxQf+Tel3wwJihB9XCwgCANUgiPW/MRy+e1ff80/+2+8zyJpvvdvzLNw8NITRqc/aE\nK7467fxDbvwlY5Otdh0ydkqrI7tdvH3XvQoLn7161sAbB/5lSGGTlm033252aKkAACAASURB\nVOX4l28+u3Ko8f+64dDjL92hy1WLyiu263PjIT+fs+JxUnnYNS1RzV8D+/KRw9v3frDtzsdd\ndf4J22/SITdR8vlHr98ybMDtL35zxNgv7ztw/VpeZ02qqKgoTMV/xUZXDq37SaGWFJ09qAZH\nW2vytBocDVJrZteOKZm3RYsWNThaUVFR1rALanDASqUXDm/UqFGND7tMyYpFPxUmW7XIrZvp\n6onqXrG7qv/4vHWP+eT523LTEpVbttj5oM133KuiXauHT706HHhDra2wViQSiVQvAVZvTiJY\nnpScHX60/bcSaQ1a1WTrrh6qG3ajZy7c8MLTq6quUiIt9/RTOt5z0UMhrGZh17z573zVTW3w\n6xzEJCUnEawWUnJ2zJo1q+4npR6qbtjlpaUV/1T82+3FPxUn0le/z0/MmTOn7idds64FE7uU\nnESwWnB2kELVDbv+GzQ5996T3xn2xhb52VUbS+e9e8rtnzbpcHntrK0WlZfH9hMiUMecRLA8\nzg5SqLph1+fRoYO7nLrd+psce0qf7TbukBMWffHR63ffeOenC7Ouf6RPrS4RAIDqqG7YNe14\n8sfPZRxx8vmjLj131K8bm3X8y0033XdSp6a1tDgAAKrvD3yPXZudT3h5at/vPpk05YvvS0J2\n6/Ybbda57ar8JBkAADXoD4TdrEnjzrv0psVH3n53zy1CCM/32HS7jK5nDL6m91Zr1dryAIDU\nKL1weKqXwB9W3bCb99mtG27Tb16iybF9l1yka7bZBl9fO/qwfz05+8Mv+3XOr7UVAgAp0HjS\nhzU+5i+bb1zjY7K06r6UescB5y9osOnEb2bctmfbyi2bXfbw9G9e3zq3+KJet9ba8gAAqK7q\nht2Iz+d1OOrG7Vo1WHpjzlpbXn9Sx7mfXVcLCwMA4I+pbtiVJ5NZTbJ+uz09Nz2EihpdEgAA\nK6O6YXfK+o2n3XLhtyX/86WLFaU/DLnxk0ZtTqyFhQEA8MdU98MTJ429aHj3s7p02uXMAX22\n27hDbtriLz/+zz3XXP787LIhz5xSq0sEAKA6qht2zbqeMeXJ9F4nXjDktIlVG3Oadbr4oUcu\n2tLXnQAApN4f+B679fc67e2vT5r85r/f++TrheUZ67TvstOOWzROT9Te4gAAqL4/EHYhhJDI\n6rrt7l23rZ21AACwCvwkGACwplj40x2JROKr//0waEyEHQBAJIQdAFCvlC9epW/IXcXdl6ts\n4dxaGbdGCTsAoF5onZ1x4XN3btqqUXZGZqsOW9/61sx37jm70zr52Xkttj6g/6xfe62i9PvL\n/n7wJhu0yclr3m3HXne//uMf2j2E8PObd+3Wff0GWTmtO2495N5JKx62WWb6Dd98e2avndf9\n01F1+IexkoQdAFBfXHPA1Sfd+fynk187uNH0k3foduDo5F3/fOvfY4ZMffKGQ8d+WfmcC3bc\n7Mp/J8657r7XX3jspG3DcX/pcPtn86q/ewhhv30v3fH0a1584YnT/pI19JgtL3jjpxUP++jx\nezfZ+6x/v3Fr3f5hrIxEMplM9RrqWkVFRWFhYd3P2+jKoXU/KdSSorMH1eBoa02eVoOjQWrN\n7NoxJfO2aNGiBkcrKipqPOnDGhyw0i+bb9yoUaPlPdo6O6P9TVNePb5jCOHHN/Zpvd2ED+aX\ndMvNCCEM+1PTh/aeMOWmbebPGNG47VkvFS7csWl25V7Xdm5+TZt7vnlu3+rsvvCnOxq2On6/\nhz5/4tCCyt3P79L81jDoq39VLG/YZpnpLY99buotu9T4n0Zt+INfdwIAUGtabrckTzOb5qRn\nr1eZZSGE5hlpyYpkCGHuJxOSyYqd8nOW3qtp6bQQ9q3O7pVO2bNN1e3DT9jgmkEPz/0kbwXD\ndjhmoxo9ylok7ACA+mkZbxjLbNIgLaPpvLnfLf0DCYm0rGru/tsHspplJdIyVzxs42bLHL8+\n8h47AGC10aR932T5vFu+X9xwidzB+/c44f7pf2iQm57/vur2Q1dPbbLhkTUybH3gih0AsNrI\nabbPiN3XPW/7/fKuP2/bDfOfu+Os616b8cwj6/+hQZ48avd/FI/YtUPDifcNH/LRL9dO3j+n\nWf6qD1sfCDsAYHVy6lOTFp52wqUn9/6xJLvTpjvfN3Hc7vnZ1d89PWudf17Ta+DFfQd/W9yh\n++ZXPjb5tM75qz5sPeFTsXXHp2KJiU/FwvL4VOwKrPhTsaw677EDAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiELygGAJbhl803TvUS+MOEHQDw//ka4dWUl2IBACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACKRUcfz3d3v6Jyhow5dq8EqjFHx8uiRT058\n99ui9E5dtzrm1D7tc5ccxZevPfrAM69/PG1GkzYdDziu/x7dmtXImgEAVgt1ecUu+dkrtz/+\n/dyyZHJVRpk+9sIRY97Y5sC+g/sflffFCxeccUtFCCGEWZPu7H/Fg8233PvC4YN6dC4eOWTA\nRwsX18i6AQBWC3V0xe7nN64deMOrs+eXrupAydJrxkwtOOyqXrsVhBA6XJHoddQVD8w45sh1\nG4685pk2e1/cr2e3EMJGHS//6ofBb372S7dNmq/64gEAVgt1FHZNu/S6YOi+FYt/OmvgP5be\nniwrHHv7rRPfmzZjTmnrgo17Hn3Crp3y//tosuTrr39ef/22VVtK5k38pri83+7rVt7Nbrr9\npnnXTnr5x0P2+/mdotK+vTb49Ylp/YdcUtsHBQBQr9RR2GU1XrdD41BemvP/tt93Xv8Ji7qc\n0HdA28aJT954+vpzTywfefcerXMrHy0v/rL/gMvGPXZP1fNLF3wYQtgoN7NqS+fcjAkfzivd\n6e0QQsspTw8c/dQXPy5q2a5g36NO3at7q6qnjR49+v3336+8nZubO3DgwNo5UFhTNGrUKNVL\ngHoqJWdHUVFR3U9KPVTXH55YWvHsJ8Z+Om/4gwO6NswMIRRs2LX8P4ePvnnKHpdsubxdKkoW\nhBCaZ/z3rYEtMtPL5heXl/wSQrhm5CuHnNjv2JbZUyc+Mmpwv5Ib7+vZNq/yaZMnT37++ecr\nb+fn5w8aNKj2jmt5Sup+Sqg12dnZqV4C1FMpOTuEHZVSGXbzv3s3mUyef9hBS29sWDYjJDcr\nLlkcQigrLgkhFBcXVz6UnZOTltUghDCnrCIvPb1y4+zF5elNs9Iy0kMIOw8efECn/BBCx86b\n/PB673EjJ/e8bJvKpxUUFGy11VZLpmjYcPFin6uAVeIkguVxdpBCqQy7jIZZifSGYx66a+mN\nibTMhTMfOvT4h6u29O7du/LGtQ8/3rphtxAmTltU1jZ7Sdh9tqisyfZNM3I3COGNHdv99+r3\n1uvkTpz1fdXdPn369OnTp/J2RUVFYWFhLR3UCnjhipjMmzcv1UuAesrZQQql8guKc1v2CBUL\nJxSW5yyR/eDwwTe99GPu2keMHz9+/Pjxj425Ii0jf/yv2uek5zTduXVW+j9f/blyhMUL3n+r\nqHSz3Vrl5PfIz0h77tNfz6Vk+cszFjYqKEjZsQEA1LlUhl1Woy2O7978/oHDJrwy6avp08bd\ncu6TU2fvst3aK9onkXXWwZ0+v3vI85Om/TB98p2Drs5dZ9ej2uQl0hsN7LnBi8MHPT7xnc+n\nffjI9QMnzs885qROdXUoAACpl8qXYkMI+w4aUXLrjY+M+secxZlt2m884LILuudlrniXDocM\nO7nk2tEjBs0uThRssuOwoX0r43SjIy/rF64fe/tV95dktSvofNrlF/25qTd3AwBrkERy1X4H\nYnWUsvfYXTm07ieFWlJ0dk1+tHytydNqcDRIrZldO6Zk3hYtWqRkXuqVVL4UCwBADRJ2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACRyEj1AlIjkUikegmwenMS\nwfKk5OxIJpN1Pyn10Boads2bN6/7SUvqfkqoNSk5iWC1kJKzY9asWXU/KfXQGhp2c+bMqftJ\nc+t+Sqg1KTmJYLXg7CCF1tCwKy8vT/USYPXmJILlcXaQQj48AQAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABCJjLqaqOLl0SOfnPjut0Xpnbpudcypfdrn\nrvTUyxuqBqcAAFj91NEVu+ljLxwx5o1tDuw7uP9ReV+8cMEZt1TU9FA1OAUAwOqoTsIuWXrN\nmKkFhw3ttdu2XTbf4fQrTlnwwz8fmLGgJoeqwSkAAFZPdRF2JfMmflNcvvvu61bezW66/aZ5\nWZNe/jGEkCwrfHTU5aed2Oeg3oefet4/XvhkztI7JpMlX331bXWGWsEUAABriLp4F1rpgg9D\nCBvlZlZt6ZybMeHDeeHwcN95/Scs6nJC3wFtGyc+eePp6889sXzk3Xu0zq18Wnnxl/0HXDbu\nsXt+d6jSnZY7RaXRo0e///77lbdzc3MHDhxYO8cKa4pGjRqleglQT6Xk7CgqKqr7SamH6iLs\nKkoWhBCaZ/z36mCLzPSy+cXFs58Y++m84Q8O6NowM4RQsGHX8v8cPvrmKXtcsuUfHWp526vu\nTp48+fnnn6+8nZ+fP2jQoJo6uuorqfspodZkZ2eneglQT6Xk7BB2VKqLsEvLahBCmFNWkZee\nXrll9uLy9KZZ8797N5lMnn/YQUs/uWHZjJDcrLhkcQihrLgkhFBcvKTPsnNyljfU8rZXDdu1\na9eysrLK27m5uSUlqaisoVemYNI1TOX/T8vKysrLy1O9lsjV7ElUvO0WNTgav5Wenp6RkZFM\nJktLS1O9lvil5q8YCCHUTdhlNuwWwsRpi8raZi+prs8WlTXZvmlGw6xEesMxD9219JMTaZkL\nZz506PEPV23p3bt35Y1rH3689XKGWt4UVYMceuihhx56aOXtioqKwsLC2jlWUiwrKyuRSBQX\nF1f9ewAIIeTm5laGnes6ELe6+PBETtOdW2el//PVnyvvLl7w/ltFpZvt1iq3ZY9QsXBCYXnO\nEtkPDh9800s/5q59xPjx48ePH//YmCvSMvLH/6p9Tvryhlre9jo4OgCAeqJOvu4kkXXWwZ0+\nv3vI85Om/TB98p2Drs5dZ9ej2uRlNdri+O7N7x84bMIrk76aPm3cLec+OXX2LtutvRJDLXc7\nAMAaI5FMJutinmT5c/deO+a5t2YXJwo22fGkAX07NMwIISTL54299cZnX/1gzuLMNu037nVc\nvx02aFy1U9miTw4+/H8+FbuCoZa7/Te8FBux5s2bJxKJ+fPneykWlpabm5ubm+v/fnFr0aJF\nqpdA6tVV2NUn/tcWMWEHyyTs1gTCjlBnPykGAEBtE3YAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACRyEj1AqAmvfnmm8lksmXLlk2aNEn1WqAemTFjxsyZMzMyMtq3b5/qtQC1KJFMJlO9Bqgx\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(data = cyclistic, aes(x = member_casual, fill = member_casual)) + geom_bar()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f9dcc2bb",
   "metadata": {
    "papermill": {
     "duration": 0.171384,
     "end_time": "2022-02-25T04:41:30.214689",
     "exception": false,
     "start_time": "2022-02-25T04:41:30.043305",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Observation : There are more annual members than casual members (~10%)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8eb48461",
   "metadata": {
    "papermill": {
     "duration": 0.171878,
     "end_time": "2022-02-25T04:41:30.555699",
     "exception": false,
     "start_time": "2022-02-25T04:41:30.383821",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**2. WEEKDAY**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "860685bd",
   "metadata": {
    "papermill": {
     "duration": 0.170499,
     "end_time": "2022-02-25T04:41:30.900261",
     "exception": false,
     "start_time": "2022-02-25T04:41:30.729762",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "How are the rides distributed accross different weekdays?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "b1ea24aa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:41:31.246398Z",
     "iopub.status.busy": "2022-02-25T04:41:31.244796Z",
     "iopub.status.idle": "2022-02-25T04:41:31.583069Z",
     "shell.execute_reply": "2022-02-25T04:41:31.581474Z"
    },
    "papermill": {
     "duration": 0.512111,
     "end_time": "2022-02-25T04:41:31.583225",
     "exception": false,
     "start_time": "2022-02-25T04:41:31.071114",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 7 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>weekday</th><th scope=col>total_rides</th><th scope=col>annual_members_percent</th><th scope=col>casual_members_percent</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>1</td><td>857285</td><td>43.87596</td><td>56.12404</td></tr>\n",
       "\t<tr><td>2</td><td>702588</td><td>59.23984</td><td>40.76016</td></tr>\n",
       "\t<tr><td>3</td><td>739905</td><td>62.91524</td><td>37.08476</td></tr>\n",
       "\t<tr><td>4</td><td>756142</td><td>63.10878</td><td>36.89122</td></tr>\n",
       "\t<tr><td>5</td><td>737588</td><td>61.21629</td><td>38.78371</td></tr>\n",
       "\t<tr><td>6</td><td>810508</td><td>55.08002</td><td>44.91998</td></tr>\n",
       "\t<tr><td>7</td><td>991047</td><td>43.69591</td><td>56.30409</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 7 × 4\n",
       "\\begin{tabular}{llll}\n",
       " weekday & total\\_rides & annual\\_members\\_percent & casual\\_members\\_percent\\\\\n",
       " <dbl> & <int> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 1 & 857285 & 43.87596 & 56.12404\\\\\n",
       "\t 2 & 702588 & 59.23984 & 40.76016\\\\\n",
       "\t 3 & 739905 & 62.91524 & 37.08476\\\\\n",
       "\t 4 & 756142 & 63.10878 & 36.89122\\\\\n",
       "\t 5 & 737588 & 61.21629 & 38.78371\\\\\n",
       "\t 6 & 810508 & 55.08002 & 44.91998\\\\\n",
       "\t 7 & 991047 & 43.69591 & 56.30409\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 7 × 4\n",
       "\n",
       "| weekday &lt;dbl&gt; | total_rides &lt;int&gt; | annual_members_percent &lt;dbl&gt; | casual_members_percent &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| 1 | 857285 | 43.87596 | 56.12404 |\n",
       "| 2 | 702588 | 59.23984 | 40.76016 |\n",
       "| 3 | 739905 | 62.91524 | 37.08476 |\n",
       "| 4 | 756142 | 63.10878 | 36.89122 |\n",
       "| 5 | 737588 | 61.21629 | 38.78371 |\n",
       "| 6 | 810508 | 55.08002 | 44.91998 |\n",
       "| 7 | 991047 | 43.69591 | 56.30409 |\n",
       "\n"
      ],
      "text/plain": [
       "  weekday total_rides annual_members_percent casual_members_percent\n",
       "1 1       857285      43.87596               56.12404              \n",
       "2 2       702588      59.23984               40.76016              \n",
       "3 3       739905      62.91524               37.08476              \n",
       "4 4       756142      63.10878               36.89122              \n",
       "5 5       737588      61.21629               38.78371              \n",
       "6 6       810508      55.08002               44.91998              \n",
       "7 7       991047      43.69591               56.30409              "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    group_by(weekday) %>%\n",
    "    summarize(total_rides = length(ride_id), \n",
    "              annual_members_percent = (sum(member_casual == \"member\")/length(ride_id)) * 100, \n",
    "              casual_members_percent = (sum(member_casual == \"casual\")/length(ride_id)) * 100)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "f0c1d955",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:41:31.944730Z",
     "iopub.status.busy": "2022-02-25T04:41:31.943140Z",
     "iopub.status.idle": "2022-02-25T04:41:52.030715Z",
     "shell.execute_reply": "2022-02-25T04:41:52.029813Z"
    },
    "papermill": {
     "duration": 20.275024,
     "end_time": "2022-02-25T04:41:52.030901",
     "exception": false,
     "start_time": "2022-02-25T04:41:31.755877",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\npTUSiURYAZ7BgoKC6J/BbC+krSSTyRD1M9ieMvgY1tTUZGoqcpqwW7xUKpXtJSyB5n9UUqlU\nrFnQvK90Op1bz0vreQZzXcszmO2FtK1sPYORvcwU/Z8T2p+wW7z58+dnewlLIJFIFBcXL1iw\nINa/L5LJZDKZbGpqyq3npfXy8vJWhGewsbEx1mcwmUw2P4Oxpnl+fn5eXl62nsHIThLG+l8B\nWRTZ//kBAFhxCTsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\n+EqxdlV28dntcJS6EDq2w2FCqDl5bLscBwBoFWfsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACKRn+0FAJAxZRef3daHSIVQF0IihLK2PlIINSeP\nbfuDQFScsQMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiER+Fo9dM/3S/Y966r8GCzuu96fbz/n8uTHD\nL3j92+OH3XznHlXFIaSenHTN/VP+8XFNst+AjQ859tCeJc1byNQ4AECuymbNlHTe7de/3uzb\nI8/fdOW7/YeEEGa/OrtD1W7HD+/fctPqZQUhhPfuPn38HR8ecPQxh1U2Pnj9hDG/qp94/dF5\nmRuHFVzZxWe39SHSIdQ1H6utjxRCzclj2/4gAMuRbIZdssNam2++VsvVOe9Mumz+mr89dqsQ\nwow351ass/nmm/f/zg+k6y+7461e+14ydPteIYTeFyWGHnTRxOmHHNitIDPj3Tu24+4BADJs\neTlLlW6queysP+08ZnTn/EQI4dW5dZWDKpoWzv1sxuz01/epmzPlo9qmIUO6N18tqthyUGnh\ny09+lqnxdtwuAEDmLS9vLHvvnnP+VbXHWQMqm6++Mq8h/fSVe1/1dkM6nd9xpR32O/6Xu61b\nP/+1EMI6JQUtP7V2Sf7k1+bUb52Z8bD/V1f//e9/z5w5s/lyXl5enz592mTPua+goGDxd8q0\nRCLR/L9ZOXo7yMvLCyEUFBSkUqlsryXnZeUPSTKZbD50Op1e7J1ZtFj/M2+RwQ02NDRkaipy\n2nIRdqn6T8+7/d09rzyz+WpT/fR5yYI1umz+m4lnV6Rr/u+hmy6+4fSiPrftWTg/hFCV/81Z\nxi4FycZ5tam6zIy3XL355psnT57cfLmysvKRRx7J1E7rMjXR8qFTp07ZOnRBQUEWj94Oysra\n4R1oP8Af0UwpLy/PynGjfwaj3+BS+/LLLzM1FTltuQi7jx+6bF7HwXt9/Ra3ZGH3O++88+sb\ni7YaNvqdyS8/fuPUX5zQIYQwqzFVmkw23zazoSlZUZhXmJnx9tgqAECbWR7CLn3rXe/3POC4\nRdxj0CodHq3+oqDjwBCmTFvY2KPoqyB7d2Fjpy0rMjXecrgxY8aMHj36q8Wl0y0vyy670kxN\ntHzI4CPTemVlZYWFhfX19TU1Ne1/9HaQl5dXWVk5a9asrLwU64/osksmkxUVFdXV1Vl5KTb6\nZzD6DcIyyv6HJxbMuOulmvpDt161ZWT2OxMOP+Loz+pb/lVLPfXJgop11iqu2KZbYfKvT89o\nHm2Y/+oLNfUbbN81U+MtC+jQoUP518rKytKZ07YPZbvL4COzFI9hVo7ePrK4u+z9aWoTWXwY\ns3jomKyAG/TUs4yyH3afPPR0YdlGfTt8c+6wvOewqgWfnzLu+henTnv3jVcnXT56yvyyI49Y\nKyQKR+3V71+3jHv05Wmfvjf1prGXlqy63UGrlWZsHAAgl2X/pdinnvq8fM0Dvz2Sl9/lnAln\n3XzdxCvPPb02Wdazz4DR48cNKi0IIfQedu7IussnjR87szbRa73B5549vLlMMzUOAJC7Es7f\nLloqlaqurs7UbO3wa/3bU1Z+rX95eXnze+zmzp3b/kdvB3l5eZ07d66urs7Ke+z8EV12yWSy\nsrJy5syZWfnbNfpnMPoNLosuXbpkcDZylBNVAACRyP5LsZBD2udsQV0I7fP1dr5KFSAywg5Y\ngbRbmrfPp7GkOfBfvBQLABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQifxsL4ColF18dlsfIh1CXfOx2vpIIdScPLbtDwIA\nGeOMHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCTys72AHFBRUZGpqZoyNdHy4fuPjA3mFhvMdTaY6zL478vs2bMzNRU5TdgtXm1tbaamKsjU\nRMuH7z8yNphbbDDX2WCuy+C/L9BM2C2esPtfVsC/c20wt9hgrlsBNwjLyHvsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7ACA5U5JMq/PvlOyvYrsGN+rsqRq16X7WWEHABAJ\nYQcAEAlhBwAsUrq+rjG9nM62OKnG2U3tdrDlgLADAH7ApLW7dFp97Iu/PXG1TqUdCpMVK/c8\n4LTbUiG8dMspg9ZYpUNR6ZrrbDLu9je//SPzPpxywj47/GiliqKOnfsN2vas6x9KLcNsIYTX\n/nTB4IGrdyws6tK9377HXzq9vqk1x7q5b1Vlr/F1s184YOt1Sos6z2tafEd++szEvYdsVFVW\nXNJppU132v+uF79ouemt+ybssfUGXTp1zC/ssGqvdQ8efWX112Gaavhywq8PW7dX1+KCgvKq\nHtsNO+75L2ubbxrdo7y8x+hvH+LVszZMJBIf1DUtdtplkb/sUwAAUVowY+KWx8za/4QzNulR\ndN81F0y84OBp7/3ujccWnHji6Qc1vX/FeVedfeBG2+8ye8vywhDC/E/uXX/tvT9KdN//0OG9\nuyT/+eRd40bscu+zN79y6yFLMVsI4Yt/jN3gzme3H3rwST8r++dTf5p05ahHp7z70cvXdchb\n/LFSjdUHr7/jzK0OPP/K4zrkJRa9zc+ePrfP1memu/z4oF+esnKy+s+/u3GfLSbPnfb+4WuW\nf/zg0QP2uLa87+Ajjj2lc2Hjm8/8+baLj3/uk17v/GGXEMLlO68/6rHPthl25NAjesz96KXr\nbpiw/d8/mjX93oLFHDAsetplIewAgB/WWPveqMemX7xttxDCwfv371C16yv3/uupz97boqIo\nhLB7r3/23u/xq/5Ts+U6VSGES356xEeJ3k999I/NqopDCCFceO9Jg/a87NDzztxzTM9OSzpb\nCGHOO0+d9Odpl+y5VgghpC+6eeSgw667/oAHTr1799UXe6yaj8+bfeVLjxyzweI3ma4/cPfz\nUhU//ce/7+vXsSCEcOope3Xvuu3p+z10+HP7PHHKnXlFPf756qM/KkqGEEI4e6XVyq+bfH0I\nuzQufOfkxz7pseOfHrv9580z/bxsi91vfubPXy4ctlKHRR9zEdO29rn5H7wUCwD8sIKSfs0d\nFkIo7rxLWTKvy4DLmzsshLDS5luFEBY2pEIIjQveOOfN6n5H3fp1aYUQws5jrwgh3HHtO0s6\nW7PSVY/8qupCCIn8A8ffU5LM+/vYJ1tzrJAouu2X67dmjzXTxz86q3bDi65orroQQnHnwfde\ne/UZh3cJIez19LTPP3nz6/wK6dT8unQ63bQghJDI61CYCLPf+vNLH9c037rZRc988cUXi626\nRU+7jJyxAwB+WF5+1bev5idC0UqVLVcTeQUtl2urH25Kp1+/dOPEpf89yZzX5yzpbM0qB+71\nnfsX996lc/FDn/+9tvqLxR6rsHT9lQtadfZq7rtPhBC22HaVbw9udfhRW4UQQiip6Fz94uRb\nJ095451/f/jRB2+99s/ps+uKK0IIIVnU468XHLjraX/YePXbVx+wyeabbvqTbXcYutdPO+cv\n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\nAEAuOfaBlxccd+T5I/f+rK6o36Btfj/l3iGVRa3/8WThqn+9bOgpZw0/8+Pa3utvePGfpx63\nduWyT7ucEHYA8fBaMzntk7rGlstVa9/dsPCbm456t/qory/nFax86rX3nnrt0vx4ySqHN9Yd\nHkJ4ccQF//Xj/2va6oZc+v4xv8cOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nfo8dAPAD5m64braXwBITdgDAfysrK8v2Elgawg6AnOGrNWDRvMcOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBK+K5ZM8jWOAJBFztgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEIj/bC1ixFO80LNtLyKQvsr0AAODbhN3iVVVVZXsJy6no\nHxkbzHU2mOtssPVmzpyZqanIacJu8ebOnZvtJSynon9kbDDX2WCus0FYUsJu8RoaGrK9hOVU\n9I+MDeY6G8x1NghLyocnAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIpGf3cOnG2fdc8P1Dz/7\nz5m1eav26LP7gSN2GNQ1hPD5c2OGX/D6t+952M137lFVHELqyUnX3D/lHx/XJPsN2PiQYw/t\nWdK8hUyNAwDkqizXzN/OHzXxzfJDjjyuX7eOrz12+zXjjl549a179Cid/ersDlW7HT+8f8s9\nVy8rCCG8d/fp4+/48ICjjzmssvHB6yeM+VX9xOuPzsvcOABA7spm2DXVfXzdy18OPv+S3fpX\nhhD69Bv46QvD7r1m6h4XbDrjzbkV62y++eb9v/MD6frL7nir176XDN2+Vwih90WJoQddNHH6\nIQd2K8jMePeO7f8gAABkSjbPUjXVfrD6mmvu3LP864HEoE5FDbPnhRBenVtXOaiiaeHcz2bM\nTn99c92cKR/VNg0Z0r35alHFloNKC19+8rNMjbfLpgEA2ko2z9gVdtrq8su3arnaMO/tmz6Z\nt/qhfUMIr8xrSD995d5Xvd2QTud3XGmH/Y7/5W7r1s9/LYSwTklBy4+sXZI/+bU59VtnZjzs\n/9XVv/3tb9OmTWu+XFxcfMABB2R873Ho2DHyc5w2mOtsMNfZYOvNnz8/U1OR05aXTwx8+NJD\nV15xU0PPncbsuFpT/fR5yYI1umz+m4lnV6Rr/u+hmy6+4fSiPrftWTg/hFCV/81Zxi4FycZ5\ntam6zIy3XJ0yZcrkyZObL1dWVg4fPryNdp3rOnTokO0ltC0bzHU2mOtssPWEHc2yH3b1s6bd\ndNWVD79SPXivo87bb9viRCIku995551f31601bDR70x++fEbp/7ihA4hhFmNqdJksvm2mQ1N\nyYrCvMLMjLcsqVu3bmuvvXbz5dLS0sbGxjZ9BHJX9I+MDeY6G8x1NghLKsthV/PhYyeNujo5\ncKeLbjiob5fi/3W3Qat0eLT6i4KOA0OYMm1hY4+ir4Ls3YWNnbasyNR4y+FGjhw5cuTI5sup\nVKq6ujrjG4/D7Nmzs72EtmWDuc4Gc50NwpLK5ocn0qkF551yTdF2x10z9shvV93sdyYcfsTR\nn9Wnvh5IPfXJgop11iqu2KZbYfKvT89oHm2Y/+oLNfUbbN81U+PtsmkAgLaSzTN2C2ZMfHNB\nw6EDS15+6aVvFtSh97p9h1UtGHHKuOuP2W/bisTClx/5w5T5ZWOPWCskCkbt1e/kW8Y9uuro\n/pUN9024tGTV7Q5arTSEkKlxAIDclUin04u/V9v47OkxR170+n8Nlvc47Q8TNq2b9cbN1018\n5p/v1ibLevYZsMdhR272o9IQQkg3PXLb5Xc88sLM2kSv9QaPOHF47475mRz/nsy+FLvS1GmZ\nmmp58MWAvv81YoO5xQZznQ3muu9vcFl06dIlg7ORo7IZdjlB2C3CCvh3rg3mFhvMdSvgBpeF\nsCNk9z12AABkkLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiER+theQAxKJRLaXsJyK/pGxwVxng7nO\nBlsvnU5naipymrBbvKqqqmwvYTkV/SNjg7nOBnOdDbbel19+mampyGnCbvFmzZqV7SUsp6J/\nZGww19lgrrNBWFLCbvGampqyvYTlVPSPjA3mOhvMdTYIS8qHJwAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(data = cyclistic, aes(x = weekday, fill = member_casual)) + geom_bar() "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9e3c6db6",
   "metadata": {
    "papermill": {
     "duration": 0.17463,
     "end_time": "2022-02-25T04:41:52.381854",
     "exception": false,
     "start_time": "2022-02-25T04:41:52.207224",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Observation: \n",
    "1. Weekends have the highest number of rides\n",
    "2. Casual members prefer to ride on weekends more which could imply that they use bikes for liesure activities.\n",
    "3. Annual members prefer to ride on weekdays more which could imply that they use bikes to commute to work."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0fc5d492",
   "metadata": {
    "papermill": {
     "duration": 0.174512,
     "end_time": "2022-02-25T04:41:52.732337",
     "exception": false,
     "start_time": "2022-02-25T04:41:52.557825",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**3. RIDE LENGTH**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9b327c3e",
   "metadata": {
    "papermill": {
     "duration": 0.205844,
     "end_time": "2022-02-25T04:41:53.113649",
     "exception": false,
     "start_time": "2022-02-25T04:41:52.907805",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "What is the general trend of ride length for annual and casual members?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "a74eef26",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:41:53.498797Z",
     "iopub.status.busy": "2022-02-25T04:41:53.496290Z",
     "iopub.status.idle": "2022-02-25T04:41:53.762296Z",
     "shell.execute_reply": "2022-02-25T04:41:53.761307Z"
    },
    "papermill": {
     "duration": 0.457743,
     "end_time": "2022-02-25T04:41:53.762535",
     "exception": false,
     "start_time": "2022-02-25T04:41:53.304792",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>avg_ride_length</th><th scope=col>min_ride_length</th><th scope=col>max_ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>32.00095</td><td>-58.03333</td><td>55944.150</td></tr>\n",
       "\t<tr><td>member</td><td>13.63284</td><td>-54.08333</td><td> 1559.933</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & avg\\_ride\\_length & min\\_ride\\_length & max\\_ride\\_length\\\\\n",
       " <chr> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 32.00095 & -58.03333 & 55944.150\\\\\n",
       "\t member & 13.63284 & -54.08333 &  1559.933\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | avg_ride_length &lt;dbl&gt; | min_ride_length &lt;dbl&gt; | max_ride_length &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | 32.00095 | -58.03333 | 55944.150 |\n",
       "| member | 13.63284 | -54.08333 |  1559.933 |\n",
       "\n"
      ],
      "text/plain": [
       "  member_casual avg_ride_length min_ride_length max_ride_length\n",
       "1 casual        32.00095        -58.03333       55944.150      \n",
       "2 member        13.63284        -54.08333        1559.933      "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    group_by(member_casual) %>%\n",
    "    summarize(avg_ride_length = mean(ride_length), min_ride_length = min(ride_length), max_ride_length = max(ride_length))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "caa9f1c8",
   "metadata": {
    "papermill": {
     "duration": 0.195127,
     "end_time": "2022-02-25T04:41:54.159013",
     "exception": false,
     "start_time": "2022-02-25T04:41:53.963886",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We observed that there are negative values in ride length.\n",
    "Since we calculated ride_length as ended_at - started_at, this implies that in our data there are rows in which ended_at is less than started_at which could be an error while data feeding. \n",
    "We recheck this with our stakeholders and fix it."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "d0ce52ec",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:41:54.538846Z",
     "iopub.status.busy": "2022-02-25T04:41:54.536949Z",
     "iopub.status.idle": "2022-02-25T04:41:56.901559Z",
     "shell.execute_reply": "2022-02-25T04:41:56.899953Z"
    },
    "papermill": {
     "duration": 2.552209,
     "end_time": "2022-02-25T04:41:56.901726",
     "exception": false,
     "start_time": "2022-02-25T04:41:54.349517",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "ventiles = quantile(cyclistic$ride_length, seq(0, 1, by=0.05))\n",
    "cyclistic_without_outliners <- cyclistic %>% \n",
    "    filter(ride_length > as.numeric(ventiles['5%'])) %>%\n",
    "    filter(ride_length < as.numeric(ventiles['95%']))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "8da8f954",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:41:57.272688Z",
     "iopub.status.busy": "2022-02-25T04:41:57.271045Z",
     "iopub.status.idle": "2022-02-25T04:42:20.822610Z",
     "shell.execute_reply": "2022-02-25T04:42:20.821725Z"
    },
    "papermill": {
     "duration": 23.737797,
     "end_time": "2022-02-25T04:42:20.822810",
     "exception": false,
     "start_time": "2022-02-25T04:41:57.085013",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd3zU9f3A8c/lsggBEojKEAcBRQUVrRuLizrrqgMX7gX2p63iRMVdqQp1oNRa\nba0WB9W6wOLAbbWOuimCigqKEMIm6+73RxBpVQgB7pIPz+ejjz6+9727z73DceHl91YinU4H\nAACav5xsDwAAwKoh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIpGb7QEaKp1O\nV1ZWZnsKMiQnJ6dVq1YhhHnz5tXV1WV7HGhOcnNzW7ZsGUKYM2eOj6Bfo5SWlmZ7BLKvOYWd\nf+DXKDk5OSGEVCrlfocVkkwm6x8+dXV1wg7WNJ6KBQCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLCjidpll1123HHHbE8BzdI222yz1157ZXsKIAsS6XQ62zM0SCqVqqioyPYUrHa3\n3HLLo48++j87t9tuu8suuywr80Azcscdd4wePTqVSi29c+zYsdmahwwrKyvL9ghknyN2NC3f\nr7oQwj//+c/MTwLNzgMPPPA/VRdCcOgO1ijCjiZkn332+bGz/OMEy7b33nv/2Fn7779/JicB\nskjY0YR8/2AD0EDLeF1NdXV1JicBskjYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAEQiN9sDrIB27dplewSyyV8AaDQPn+jNnDkz2yPQJDSn\nsJszZ062RyCb/AWARvPwgTVEcwq7mpqabI9ANvkLAI3m4QNrCK+xAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIhEbmZu5utXLjr5mneX3nPCnfcf2K4whNT4USMeff7Nz+cmu/fY9rhfHt+lKEMj\nAQBEJkMVVfl2ZYt2Pz/z5M2W7Fm/VV4IYfLowcPu++zogWecUFr7+MhbLvpV9T0jBzqKCADQ\nCBkKu+kfzCnZdMcdd9zsv/amq2+478PyI647dI/yEELXoYlD+w+958vjjunUMjNTAQDEJENH\nx96eU1Xaq6Ru4Zyvplemv91ZNfv5KYvq+vbtVH+yoKR3r+L8N8Z/lZmRAAAik6Ejdm/Nq0m/\neONhN31Uk07ntlxrzyPPPPXnm1fPfyeEsGlR3pKLbVKUO/ad2eGoxScHDx48duzY+u3S0tJx\n48ZlZlqaprKysmyPAM2Vh0/0ZsyYke0RaBIyEXZ11V/OS+ZtULbjtfdcXpKe+88n/vjb2wcX\ndPvzQfnzQwjtcr87aliWl6ydtygDIwEAxCcTYZfM73T//fd/e6pg58PP/c/YN575w3u/OKtF\nCGFWbao4maw/b2ZNXbIkf8kV+/Xrt8suu9Rv5+XlzZ07NwPT0mT5CwCN5uEDa4jsfLZIr3Va\nPFXxTV7LniE8P2FhbeeCxWE3cWFtm94lSy7Wo0ePHj161G+nUqmKiooszEqTUVVVle0RoLny\n8IE1RCbePFH5n1tOPGngV9Wpb3eknpu6oGTTjQpLdu2Yn3zyxen1e2vmv/3a3Oqt9mifgZEA\nAOKTibBr3eXwdgu+Pm/IyNffmzDx/bdHDT/3+fmtTjlpo5DIP+eQ7h/fNeSpNyZMm/zeHy+5\nvqjD7v3XLc7ASAAA8cnEU7E5uWVX3HLZnbfdc+OVgxclW3Xp1uPcYUN6FeeFELoefuWAquGj\nhl0yc1GifIs+V15+sk8nBgBonAy9xq6gdLPTLrj6tO+fkUj2PfbsvsdmZgoAgJg5QAYAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYUcTUlxc/GNnFRYWZnISAGiOhB1NyIMPPphMJr+/P5lMPvzww5mfBwCaF2FH0/L4\n44/n5+cvvaewsPDxxx/P1jwA0IwIO5qcRx55ZNy4cbvuumsIoXfv3o7VAUADCTsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEjkZnuAFdCuXbtsj0Cm5eXl\nud9h5XkcRW/mzJnZHoEmoTmF3Zw5c7I9AhmSk7P4WHJtba37HVaexxGsIZpT2NXU1GR7BDIk\nmUzWb6TTafc7rDyPI1hDeI0dAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkshB2iypnLUilM3+7AABxy3TY\nLZr5yonHH3f39AXf7kiNH3Xz2QNOOOyYky+59vbJC2ozPA8AQDQyGnbp1MIR5/9ubt13h+sm\njx487L5Xtj/45EvP6l886emLfjUylcmBAAAiktGwe+uui95qs8t3p9PVN9z3YfkRlx+6xw6b\nbb3zmUPPmD/tyXu+nJ/JkQAAopGbsVua/fHfrh676Oo7fnHOUU/U76ma/fyURXWn9+1Uf7Kg\npHev4uFvjP/qmKPK6/csXLiwpqamfjudTicSiYxNS3YtfV+732HleRxFL5324nVCyFjYpaqn\nXXXxPXudN7JbUXLJzur574QQNi3KW7Jnk6Lcse/MDkctPnnVVVeNHTu2fru0tHTcuHGZmZam\nIy8vr127dtmeApo9j6PozZgxI9sj0CRk6KnYMUMvrtxq4Elbly29M1U1P4TQLve7GcrykrXz\nFmVmJACAyGTiiN30V2+588P2t921y//sz8lvEUKYVZsqTi4+jDezpi5Zkr/kAv369dtll8XX\nysvLmzt3bgampSnIyVmc+3V1de53WHkeR7CGyETYffPCO9Vzp53wiwOX7Hn8lCPGtdziLyN6\nh/D8hIW1nQsWh93EhbVtepcsuViPHj169OhRv51KpSoqKjIwLU1B8tvWT6VSVVVV2R0GIuBx\nBGuITIRdef8Lbzjo2/dApOacfc6QnS666tC12xWWlHXMv+3JF6fvsV/nEELN/Ldfm1t98B7t\nMzASAEB8MhF2heus33WdxdvpulkhhJL1u3Rp3zKEcM4h3QfdNeSpDuduVlrzyC3XF3XYvf+6\nxRkYCQAgPpn7uJMf1PXwKwdUDR817JKZixLlW/S58vKTfXktAEDjZDrsEsnSRx55ZOnTfY89\nu++xGZ4CACBCDpABAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARCI32wOsgLKysmyPQKbl5eW532Hl\neRxFb8aMGdkegSahOYVdZWVltkcgQ3JyFh9Lrq2tdb/DyvM4gjVEcwq72trabI9AhiSTyfqN\ndDrtfoeV53EEawivsQMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADiFxhYWG2RwAyRNgBxKC4uPjHznr44YczOQmQRcIOIAYP\nPvjgDx6ZW0bwAfHJzfYAAKwa9Ufm9t1337q6ukQikZOT8/jjj2d7KCCjHLEDiMqOO+4YQthl\nl12eeOKJbM8CZNqKHbGb89WUb+bXfH9/eXn5KpoHAIBGamjYLfzmqUP7HPH4hzN+8Nx0Or3q\nRgIAoDEaGna/3/+YJz6atc9p5/5ss/VyE6t1JAAAGqOhYXfVG99seMjox289YLVOAwBAozX0\nzRN5OWGDo7ZYraMAALAyGhp2F25R9sndb63WUQAA6hUlc7od8Xy2p8iOYeWlRe32a9x1Gxp2\nJz5x7zrPHXvydQ9MX1DbuFsCAGC1WtZr7DbccMOlT9aGmlcHHXbHucm2HTq1yv+vIvzkk09W\ny3QAADTYssJuyy23/J89P1mdowAATVG6uqour2BVfSjGql1teVK1lenckmRmbqwJWNZTsQ81\nWMbGBQAyY9QmZW3Wv+T13/963TbFLfKTJWt3OfrCP6dC+Ndd5/XaYJ0WBcUbbrrdkL9+sPRV\n5n32/Fn99lxvrZKClm2799rtspFPpFZitRDCOw9e06fn+i3zC8o6dT/izOu/rK5ryG3duXG7\n0vJhVZWvHb3LpsUFbefVLf/Tdqe9dM9hfX/SrlVhUZu1tt/7qAde/2bJWR8+csuBu2xV1qZl\nbn6LDuWbH3vujRW1ixdM1cy45fwTNi9vX5iX17pd590P/79XZyyqP+vczq1bdz536Zt4+7Kt\nE4nEp1V1y112ZTT0NXY77LDDdV/M+/7+r17+v513O2bl5wAAmpoF0+/pfcZdPzvt4lt/95ud\n2s2655pjt+vX56eDntn31MFXX3xK+pM3Lz/mJy/Oqa6/8PypD2+5yR4jHv3P7oeffMmgUzZv\n89mQ0/bd+ti7GrdaCOGbNy/Z6vBLW2z2s7PPHbhTlwWjbjxny+0GLkw16LZStRXHbrnX1537\nXn3jiBY5yzk6+NWLV3br0//xd3MPO/W8Qaf1m//63/rt1P2OT+aEED5/fGCPA3/53Ndtjv/l\neVcMHrRH19Sff3vm9sct/r6+4fts+cuhf15r24MvuvzyUw/b9rXRt+yxeb+aBuTZspddGcv5\nHLs5n3w8rbouhPDqq692+fDDCfNb//f56fcef/7lFz5d+TkAgKamdtHkc57+8re7dQwhHHvU\nZi3a7ffWwx8/99XknUoKQgj7l/+765HP3PTF3N6btgshXPezk6Ykuj435c0d2hWGEEL4zcNn\n9zrohuOvuvSgi7q0WdHVQgiz//Pc2X+bcN1BG4UQQnronQN6nXDbyKMfu2D0/usv97bmfn5V\n5Y3/GnfGVsv/IdPVx+x/VarkZ29OeqR7y7wQwgXnHdKp/W6Dj3zixFf6PXve/TkFnf/99lPr\nFdQ/nXv5Wuu2vm3syBD2rV34n0FPT+2814NP//Xg+pUObrXT/ne+9LcZCw9fq8Wyb3MZyzb0\nvvkRyzliN3qv7bp37969e/cQwr0/27b7/9rkkKv/Xbzu0Ss5BADQBOUVda/vsBBCYdt9WyVz\nynoMr++wEMJaO+4cQlhYkwoh1C54/4oPKrqf/qdvSyuEEPa55HchhPtu/c+KrlavuMMpi6su\nhJDIPWbYQ0XJnBcuGd+Q2wqJgj+f+r9vFfhBc78c9tSsRVsP/V191YUQCtv2efjWmy8+sSyE\ncMiLE76e+sG3+RXSqflV6XS6bkEIIZHTIj8RKj/8278+n1t/7g5DX/rmm2+WW3XLXnYlLeeI\n3Y6X33Bb5aIQwmmnndbnimFHfG/WnLxWO/zikJWfAwBoanJy2y19MjcRCtYqXXIykZO3ZHtR\nxZi6dPrd67dNXP+/i8x+d/aKrlavtOd/BUZuYdd92xY+8fULiyq+We5t5RdvuXZeg15vNmfi\nsyGEnXZbZ+mdO594+s4hhBCKStpWvD72T2Off/8/kz6b8umH7/z7y8qqwpIQQkgWdH7ymmP2\nu/Av267/1/V7bLfj9tv/dLc9Dz3kZ20b8L6QZSy7kpYTdhsffuzGIYQQRo0adeAJJ53asXgV\n3CYAEJmc/BBCz3P/uOSY3BIFbRp05Oz7vt9HuYmQyCloyG0lclo28FZSVakQQn7ih2ts9Nm7\nHzrs2U69dvv5rtvvt9NeZ1++xZen9D1j+uJzf3run6Yfd8HDDz82/vkXXxp31723D/v1r7Z/\n+L1n+y51KHGJdCrdwGVXRkO/K/axxx4LIcyfP/9/r59XUJDf0EUAgCgVtt0nmTirtnLjPffc\nccnO2oUfjX7k3+23KGrcmhXvPRxC3yUn66o+fXTmotY77F7YdvNVeFutN9oqhHEvvTYjrP/d\nGwmeOe/0u2eWjhy2/+HDnu28z22fPXbKkrPu/HajZt6EN9+vbLfF1v1OOaffKeeEED4cc8Wm\n+1xy5uC3Prh1h/qRl76hr/9VUb9RPffVZSy7khr6rtjiH1FYkJfMa7neRpsfevKgpz6qXEVT\nAQDNSW5h1yGbtp1497FPf/XdC8X+OvCAI444YkpDW+N/zZs64sLHJ397qu7ecw6YV5c6YOhO\nq/a2Wq9/wRbF+f/8v3M+WbS4w6pnv9L/d7c/9tratQs+qkun22659ZILL5j28vVfzg0hHUKY\n//Wt22+//WG/+e4LVzf4yTYhhNr5tSGEomTOoorHZ3z7ksFFM18d8MyX9dvLXnYlNfRg2223\n3vj78we9NTe95S57brPJhi0SNVMmvP7E02+02vKQI3dsN23Kf174y/C/3fWH2z789OSubVZ+\nLACgeTnriRG3b3TU3uU9Duq3/9bd2r73zH13j/tPz+PuPmbtRh6xK1ir8Df7b/reUSdsU97q\nrWfvf+i5TzvvecUtO6yzam8rkWzz978M6HbQ73p27XP80Xu2z6t86PbbptW1vOXB44rWKtyj\n3YBnf7vfGXnnbL1u0eT3X/3DbY+Uty+s/vzNG+954ITDhuyx1u+fvuKn+0w+fvvNuqQqP334\nD39M5rUbcnWvEML+x2x02ZWvb7Fb/3OP3q3mq4/uuuF3X5flhy9qQwhFa/VbxrInHrFSb11o\naNhtM/OBM6ra//XNfx2+RdmSnRXvPrjN9scWX/2f+/fsVD1nwtGb/uSiw+45+c0BKzMQANAc\nFa932DvvtDnvvGv+/rc7Hq7O77LRppfePmbwiXs1esHthr/c/z+33vznh8b9taJVx41PGHz7\nsCEnJlbDba1/wLAPn+j+66tv/vNNV1Qlijfb7ud/unL40RuVhBAefuvRgadc9PBNl96dt85W\nW+94+78mb7/wD9v0HTLotIG/OHTaI+8+dd6Zl/59zD3j7pnforTDVjsf+eCl1x64bnEIoddl\n429ecNJNo58edPq9Nel0p536/+O33/TecUwIIeQULnPZgxv9JxZCSKTTDTru99OSwumHPPXR\nH3r/z/5XBmy6x4M950+/L4Tw6d933+iIL6oXTFiZgX5MKpWqqKhYHSvTBCWTyauvvvrZZ5/t\n3bv34MGDsz0ONCdXXXXVCy+8sOuuu55//vkN/A1PHMrKypZ/ITIuVTXni29q11u3bWZurqHP\nRb+/oKao8w+8waTlei0XzfpH/XaLTi3rqqeustEAAJq5nILWGau60PCwO7FT8YRbLvu86r/e\n35Gqnnr58A+LOx5Xf3LMle8Wtt1n1c4HANBonz60X+kytd/gwGzPuCo19DV25z106a0/GbRp\nt51PP63fT7qvXxCqPpvw5v0jb3llZvL61wdXzX724H1PeuKlT39+25jVOi4AQMNtcNBjsw7K\n9hAZ1NCwa7flryc82/b4My787UVnLtlZ0m3nkc+MOmnLdvOnffDCpPzTfvO3W0/tvnrmBABg\nOVbgs4U77nzck/8+btrEt97+6LMFdbntN9xku83L6782o2WHAXOmDVxdMwIA0AAr9qURFV9M\nnpMq6rLRJiGEEGon/WfxG2A33njjVT0YAAArpqFht2jGU7/offgTE374A0e8ox4AIOsaGna/\nP+CYMRPn7nf6+XttvkHuD39PLgAA2dTQsLvy9W+6HP63R0fsv1qnAQCg0RoUdum6ud/U1PU8\nfPPVPQ0A0BTMnTt3Na3cqlWr1bQyoYEfUJxIFu9SUjj5rn+t7mkAAGi0Bj4Vmxj12BVb7X70\ncVfMv/bXR63TcsXeSxtCqJ7znz/ceMfL705alGy53oab/uKUgTutXxxCCCE1ftSIR59/8/O5\nye49tj3ul8d3KVrhxQGArEilUi+88ELnzp27dOmS7VkIoeFfKXbI+X9fp0Peny45rkOrwrKO\n63b+b8u7dnrEry95eUb7gYOvuuaiM7snP7runPNm1KRCCJNHDx523yvbH3zypWf1L5709EW/\nGplauZ8HAMiYV199dciQIYMGDcr2ICzW0MNjZWVlZWV7rL9lY26javazz0xf8KvrB+zQpiCE\nsOH5gx7rd/593ywY2CH/hvs+LD/iukP3KA8hdB2aOLT/0Hu+PO6YTi0bczMAQGbNnj17yf/T\nFDQ07B566KFG30ZObtkJJ5ywXav8xacTuSGEomRO1eznpyyqO71vp/rdBSW9exUPf2P8V8cc\nVV6/p6KiYuHChUvWKSoqavQMNC/JZLJ+I5FILNkGVkgymfQho2uOurq6bI9Ak7BiL2ib8PR9\nf33ylSnTK3567W398l7+59TN+/RYe7nXymu5+YEHbh5CmPX2P9+cNu3Np0evtdnPj1m7aOHU\nd0IImxblLbnkJkW5Y9+ZHY5afPKGG24YO3Zs/XZpaem4ceNWaFoikJubW1pamu0poDnJzV38\ni72kpCS7k5BJM2bMyPYINAkND7v0iON7D7zr5foTRRffuO+8G3ft9dhPT7rpqZEDG/iRxV+/\n+MzYj7/87LOFOxy8QQghVTU/hNAu97vX+ZXlJWvnLWr49ADAajVx4sRRo0alUj/8Gvhp06aF\n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\ncOvDF9zamKsXrXNibdWJIYTXT7vmf67+Y8tW1NQ1/EfIumWFXa9evRI5BW++8Wr99jIu+dZb\nb63iuQCAJiAvLy+EkDe7svTfb6/kImTAssKuuLg4kbP4IGRJSVP/Dg0AYJXr169f+Pb7J75v\n2rRpEyZMSCQSS3+pwf/IycmpX4QMWFbYvfDCC99upsaOHZuTX5CXWMbFAYDYdOvW7eKLL/6x\nc8eMGTN06NCcnJxLL700k1PxYxr0cSfpurklRS363j9pdU8DAECjNSjsEsk2Z2/SdvIfX1/d\n0wAAzUhubm4IIZlMLveSZEZDP6D44hee2PzzXw688e8zq5rTe0MAgNVn22233XnnnY8/3ndQ\nNRUN/biT/Q67KLXOereeddCtvypcp8NahXn/VYSffPLJapgNAGjS2rRpc/nll2d7Cr7T0LAr\nLCwMoeO++3ZcrdMAANBoDQ27Rx99dLXOAQA0Ha1atcr2CDRGQ19jBwBAEyfsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACKRm+0BVkAikcj2\nCGTI0ve1+x0ax2NnjZJOp7M9Ak1Ccwq7du3aZXsEMi0vL8/9DiskN3fxL/a2bdtmdxIyacaM\nGdkegSahOYXdrFmzsj0CGZJMJus3amtr3e+wQmpra+s3KisrHcWBNU1zCru6urpsj0CmpdNp\n9zs0Tl1dnbCDNY03TwAARELYAQBEojk9FdtMffbZZ++//362p2hmcnJypk6dGkL46quvnnji\niWyP08xstNFGXbt2zfYUAGSBsFvtLrroIm9WarSPP/74xhtvzPYUzUyLFi1Gjx6dk+N4PMAa\nR9itdrNnzw4hFCZz8v1Dy2pWk0ovrKtbuHBhTU1NQUFBtscBINOEXYac2W3D/Tutk+0piNyz\n02cOfndCtqcAIGscQwIAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIRG5mbiZdO+uh20eOefnfMxfldOjcbf9jTtuzV/sQQgip8aNGPPr8m5/PTXbvse1x\nvzy+S1GGRgIAiEyGjtj94+pz7nnu6/2P/79rrzhvt/KqEUMGPvz5vBDC5NGDh933yvYHn3zp\nWf2LJz190a9GpjIzEABAdDJxeKyu6vPb3pjR5+rrfr5ZaQihW/ee0147/OER7x149VY33Pdh\n+RHXHbpHeQih69DEof2H3vPlccd0apmBqQAAIpORsFv06fobbrhPl9bf7kj0alPwSuW8qtnP\nT1lUd3rfTvV7C0p69yoe/sb4r445qrx+T0VFxcKFC5esU1RUlIFpV7lEIpHtEVjjJJPJZDKZ\n7SnIsmQymU6nsz0FGVJXV5ftEWgSMhF2+W12Hj585yUna+Z99Mep89Y/fuPq+Q+EEDYtylty\n1iZFuWPfmR2OWnzyhhtuGDt2bP12aWnpuHHjMjAtRKCkpKSwsDDbU5AdubmLf7GXlJRkdxIy\nacaMGdkegSYh0+9U+OxfT9z4uz/WdNn7or3Wrf1sfgihXe53r/Mry0vWzluU4ZEAAOKQubCr\nnjXhjzfdOOatij6HnH7VkbsVJhJz81uEEGbVpoq/fc5oZk1dsiR/yVUGDBhw1FGLD98lEonK\nysqMTQvN2uzZsxct8t9Ia6glT8nNnj3bU7GwpslQ2M397Omzz7k52XPvobf337hs8TNEeS17\nhvD8hIW1nQsWh93EhbVten/33EHHjh07duxYv51KpSoqKjIz7arlFyuZV1tb6zV2a6wlv3Nq\na2v9/oE1TSY+7iSdWnDVeSMKdv+/EZecsqTqQgiFJbt2zE8++eL0+pM1899+bW71Vnu0z8BI\nAADxycQRuwXT7/lgQc3xPYve+Ne/vrvhFl233KzknEO6D7pryFMdzt2stOaRW64v6rB7/3WL\nMzASAEB8MhF2cz/+NIRw57VXLb2zdecL/3LL9l0Pv3JA1fBRwy6ZuShRvkWfKy8/2XecAQA0\nTibCrn3vqx7p/SPnJZJ9jz2777EZmAIAIHIOkAEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARCI32wMA/Kg33nhj0qRJ2Z6imfniiy9CCFOmTLn//vvT6XS2\nx2lmtt122w022CDbU0DjCTugiZo7d+4ll1xSV1eX7UGapUmTJmniRnj66adHjhyZ7Smg8YQd\n0EQtWrSovupqWrdO5eZlexwil1y4MHfhgvnz52d7EFgpwg5o6j45sv/crt2yPQWRa//0uE5j\nHsv2FLCyvHkCACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBK52R5gBSQSiWyPAM1DIpGI4PESwY9Ac9RM/+Kl0+lsj0CT0JzCrl27\ndtkeoTHqf0eMnPTZ3Z99me1ZiNzCurr6jbZt2xYWFmZ3mJVXW1ub7RFY4+Tk5DTTf2tmzJiR\n7RFoEppT2M2aNSvbIzReZU1tZY1/pciQysrKgoKCbE+xsmbPnp3tEVjjpFKpZv1vDTSnsKv7\n9mhE8+LwOJlXV1fXTB8vS4vgR6A58hePZs2bJwAAItGcjtg1ayV5uUW5/rRZvRbW1c2qrsn2\nFABkjdTIkFPL19+/0zrZnoLIPTt95uB3J2R7CgCyxlOxAACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACRyM3w7d11+rGFl9/Wb60W3+5I\njR814tHn3/x8brJ7j22P++XxXYoyPRIAQBwyWVHpiS/c8dDUykPT6SW7Jo8ePOy+z44eeMYJ\n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\nqQAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(data = cyclistic_without_outliners, aes(x = member_casual, y = ride_length, fill = member_casual)) + geom_boxplot()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5e28f776",
   "metadata": {
    "papermill": {
     "duration": 0.181973,
     "end_time": "2022-02-25T04:42:21.186120",
     "exception": false,
     "start_time": "2022-02-25T04:42:21.004147",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Observation: \n",
    "Casual members use bikes for more duration as compared to annual members because they are using bikes for leisure activites whereas annual members follow a fixed route to work."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c180690e",
   "metadata": {
    "papermill": {
     "duration": 0.181751,
     "end_time": "2022-02-25T04:42:21.547570",
     "exception": false,
     "start_time": "2022-02-25T04:42:21.365819",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**RIDE LENGTH AND WEEKDAYS**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "22f8e740",
   "metadata": {
    "papermill": {
     "duration": 0.178966,
     "end_time": "2022-02-25T04:42:21.905980",
     "exception": false,
     "start_time": "2022-02-25T04:42:21.727014",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "How does this ride length vary across different weekdays?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "e3236f10",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:42:22.273989Z",
     "iopub.status.busy": "2022-02-25T04:42:22.272505Z",
     "iopub.status.idle": "2022-02-25T04:42:44.049068Z",
     "shell.execute_reply": "2022-02-25T04:42:44.048145Z"
    },
    "papermill": {
     "duration": 21.962156,
     "end_time": "2022-02-25T04:42:44.049265",
     "exception": false,
     "start_time": "2022-02-25T04:42:22.087109",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdeZxN9R/H8e85d19m7izILmRforK1kBRZUiKpEApFpbIVKUsk2cmSlJJSUVLh\n95O95EclIYnKElOWMfvc/f7+uJqfH2bcuffMnZnvvJ5/zGPucj7nc88533Pf99xz71UCgYAA\nAABA8acWdgMAAADQBsEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAA\nACShL+wGLiMpKcnpdBZ2FwDOq1q16mWvP3HihNvtjnIzAHKT21BFiVIUg53P5/N4PIXdBYAr\n8Hq9DFUAKFJ4KxYAAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGw\nQ1F01+1tppzIKOwugJLLmbymdevWf3l8hd0IgPwh2AEAAEiCYAcAxZTP5y/EyXOv6+RwO1Bo\niuJPiqHo8GX/8ea0Bdt+3H/Gaazb9I4nhw+oatEJIVzn9s+b/sbXu39NdQVKV6rZ8eFhPVtV\nFkL8tXP1zLc+2X/0hGorXf/GTqOGPGDTKSLgaX1b20c+/LJnGWuwbNc7bm+2ZNWICvbc6gDI\nQ9c7bu/wytAdr8z67Zw3vlyNPmNeqXl0+cQ3vkzKUq+54Y7JYwc5dKoQwu89+8HcORu/23/8\nrKtircbd+w+5s15C6JMLIVL2r3tt7tJ9R5Lt5arf1euZPm1r5lH2rtvb9F32wV/zJn211/bJ\nJxMLb/EAJRpH7JC7gPe1/k+uORozcOTkaROeif9tzZBBbwRvWfTkc1vPVBk+cfqCOVO7Xe9/\ne8LjSW6fN/OnR0bNEk27vTpr3tgh9/+67q3nPj2S9xwuW6fAHxdQ/H085qPOI6YtfWtuS2vS\nrCcfeXFjYORrC2a91OfYt5+O3/JX8D6LhwxY/lPggSdHz50+vnNd8dqQh748kRn65EKI0aOW\nNeo6aPr0iV2vNbw7+bHF+5PzLrt16nP25j1mzh0a3YUB4H84YodcpR9d8O8k74zVz11r0wsh\nqk9PfW7CV8lef4JeLdvpoeF3dmkeZxJCVK7Qc+6K5w85vbFZu7J8/s733F43wSxq1pg2PuFP\nsyPvWVy2TjmjLgqPDijWajwx/q5mlYQQvZ6u/dmTuyaPG1DVrBPVuvQovXjjTynitvLZZ1Z8\ncCBl+uoXGtkNQoiadRp5v+n87oyfOk5tEcrkwbnUHja1123lhRD1GjbJ2t959dRND74WyKPs\nuXJP9m7fuJAWCQAhCHbIw+nt+4z2G4KpTghhTuw0c2an4P9d7+v84/aty48cT0pK+m3vt8Er\nLaW73VF7zYv3P9iw2Q0N6te/odnNN1ZNyHsWl60D4IoS6p9/1aS3m1RDmarm8y+HHDolEAgI\nITKO7QwE/M/c1fbCqeze40K0CGXyoC5NS+f836ZTxY/e3pRxzJpH2Qrtqmj6KAHkG8EOufJ7\nAopqvPR6n+fU6If7/WKrf1erGxq2qNehW5vHHnleCKHqHKPmf/zQvl3f/fjT3t3/Xv7m7Ebd\nJ7864IZLK7gDgTzqAMiny5xUo7MZVZ39iy8+Vi68VjGEOPmlNxhjDIqiy7usLfay9QFED+fY\nIVelWlRzp//nYPb5k96cyf/u2rXrzgxPxrF5O/92vbVg0iM9u7W5pVmV+POfgEve9/Hc+cur\n1G/WtWf/sa/OXfhU7R9WLcypluY9fxjAeW5Lhs8vhMitDoDI2ct3CvgzPz/rNZ9nenv08Gnr\nT+aryKofzuT8v+Gjo/aKbTUpC6DgcMQOuXJUf6pF3Obnh04dPuDuRH3qJzNed1taNbUbsrJr\nB/xbPtqwp0vjsmeO/PT+/DeFEEdPpjSKz1r50ZJ0e8LdzWspWSc+XXXMXqm7EEIohro2w8ap\n793+zD2GtCNLp01TFUUIYYi9fB1f7FWF+rgBGRhjmg++odSiJ0dbnnywXsWY79bMX7nvzORx\nZfNVZPukYR+4Bl9XwfLTv5cu+SNz8Fs3G2PskZcFUHAIdsiVorO89PaM+VMXzZ0wLMVvq3F9\nx5nP9BNCWEv3mDLwr9lvjvs0S1e99nV9xi1JmNTvnSf6Nvv881cHpS789I2n3kmzx5WpeV3H\nGc88ECw18bWnxr+27Km+H7l8/vrth7ROWZh3ncJ82IAsuryy0Dl72rIZ4856DJVrNBo16+Ub\n7Pl4q1SnT3ht0K0L35n29ilXxWtqPjZ+Sdcq9sjLAihQ/3eebBHx559/ZmVlFXYX0F7A7zqX\nHkhwmAu7EeRPzZo1L3v90aNHXS5XlJsBkJvchipKFI7YIXoU1ZRwhe8/AQAA4ePDEwAAAJIg\n2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAgiaIY7IrgdyYDuBRDFQCKmqL4\nBcWxsbEWiyXyOjqdLj4+/syZM1e+awhiY2ONRqPL5UpPT4+8mqqqCQkJycnJfr8/8moxMTEm\nk8nj8aSmpkZeTQhRqlSplJQUr9cbeSmbzWaxWLxeb0pKSuTVhBCJiYlpaWkejyfyUlar1Wq1\n+v3+5OTkyKsJIeLj47OysjT5MQaz2Wy32wOBwNmzZyOvJoRwOBwul8vpdGpSLSguLk6TjUSv\n1zscDg0fqcFgcDqdGRkZkVcL7kbOnj2rSYrVdjeiKEpiYuK5c+d8Pl/k1ex2u9lsLsq7EZ/P\nd+7cucirCSESEhIyMjLcbnfkpSwWi81m03A3EhcXl52dzW+6IGxF8YgdAAAAwkCwAwAAkATB\nDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABA\nEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsA\nAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ\n7AAAACRBsAMAAJAEwQ4AAEAS+sJuoOg6fPjwtm3bAoFA8KLRaNTpdD6fz+12R15cURSz2ex0\nOnPqRyLYm9/vd7lcEZZyOBz33HNP5C0BkfD7/atXr05OTg5jWpPJpKqq1+v1eDyRdxIcqtnZ\n2Xnc5+qrr77tttsinxcARI5gl6vZs2f/+uuvhd1FIahYsWLHjh0LuwuUaHv37l2wYEFhdxEq\nRVEaNWqUkJBQ2I0AAMEud8GjXwlGQxmzScOyv6Vnev45SmdQlOoxNg2LRyIQCBxMzxRCOJ3O\nwu4FJV3OEbKs8hWEmr8zRsxJJ1WfL/i/X6dzliuvcXMXUF0u8+lTgUCAUQOgiCDYXUHH8mUe\nq15Fw4Ldvvk+yXn+DdNSJuPiJg01LB4Jj99/66Ydhd0F8H9+fewJn9War0nqTxpn+uc9XI/D\nceDpYQXQ13n2o3/UmjOz4OoDQH7x4QkAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDs\nAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAk\nQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACShL+wG\nLsNqtaqqZokzPj4+vAl1Op1WPRQvNptNCBEbGxsIBCKvFlyVOp0u7BVxEUVRYmJiNOlNURQh\nhKqqWvWm0+lsNpvVao28VLA3RVG06k1VVZ1OZ7FY8jthSkpKbjfZbDZNhqqiKBc9UrvdHnnZ\naIqNjQ1lTQUXl9Fo1Gq1BmetSZ1gb3q9XtveNNyNaDhUVVW12+1Fczeiqmp4u5Fz585p0gCK\nu6IY7Nxut9/vj7xOcHhkZWWFN7kmPRRHLpdLCJGdna3JEjCZTEajMRAIhL0iLmK3251Op8/n\ni7yU0Wg0mUwa9maz2Vwul9frjbyUwWAwm81CCK16s1qtHo/H4/Hkd8I8nvxcLpcmT406nc5q\ntV74SIMbYTHidDpDWVMWi0Wv1/t8vuzs7MhnqihKcDhoMlTNZrPBYPD7/VptcjExMVoN1YLY\njWg1VAtiN+J2u8MYqkBQUQx2Xq9Xk206ePgk7GcITZ6xiqPgzs7j8Wiy19Pr9UIIv9+v1VO1\n3W4PL6BcKnhQNhAIaNWb1Wr1er2aVAseBtCwN7PZrFVvObxer1YbicViubC3Yves5na7Q1m2\nJpNJCOHz+bTaSOx2u9vt1iQ8GQyGYLDTaiOJiYlxu90a7kY0HA42m83j8bjd7shLqaoaDHZa\n9WaxWDweT7F7bYOig3PsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4A\nAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIE\nOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAA\nSRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwA\nAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRB\nsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAA\nkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEAS+qjN6Y9vVixbs/3ngyccFWt1eeTp\ntg0SojZrAACAkiBKR+zOfP/W01PeT2zS4YWJL7ar45w39tm9WZ7ozBoAAKCEiNIRu3nT11Ts\nMO7xexoIIerWmnwk6aUdh9IaXJsYnbkDAACUBNEIdu70b79Ld/e/r8Y/V6hPj50QhfkCAACU\nKFEJdmm7hBBX7f9y5PIvfvsr+6oq1Tv1frJ9o7I5d9izZ8/ChQtzLg4aNKhWrVpazd3hcIQ3\noaqW0E+WWK1WIYTdbg8EApFX0+l0wb9hr4iLKIpis9k06S24ihVF0ao3VVWtVqvZbNaklNC0\nN71er6qqyWTK74RpaWm53WSxWDQZJoqiXPRIbTZb5GWjKSYmJpQ1FRwOBoNBq9UqhLDb7ZrU\nCfam1+u17U3D3YiqqhruRqxWq8ViibxUcAho2JtOpwtvN5KamqpJAyjuohHsfK40IcT0edvu\nH/h4v6tMB7Z+vOClx11zl95T6fz+KDk5eefOnTn379Onj8Fg0GruYZdSFEWrHoqXnP27hjUV\nRdFwnRbl3nQ6XXABaqUo96bX6zUseOEj1bbPKNDr9aGvKVVVNXzdqOEWIkrSUNW2N1G0hypK\nlGgEO1WvE0K0fumlLrXjhRC16lybtL37qnn77nmlefAOZcqUuf3223PuHxsb63K5Ip+voihG\nozHsUpq80CyOPB5P8K/f74+8WvC5PxAIuN3uyKsJIUwmk1a96XQ6vV6vYW9Go9Hn8/l8vshL\nBXsTQmgyFoQQBoPB7/dr0lsOr9fr9Xojr6OqqsFguPCRBjfCYsTtdoeypgwGg6qqfr9fkwcY\n3MW53W5NdlbBoapVb0LToar5bsRoNHq9Xul3IyiZohHs9NYaQnzbqkpMzjXNylm3njmZc7Fe\nvXqTJ0/OuZiampqenh75fHU6ndFoDLuUJmO+OHI6nUKIzMxMTZ6zbTabxWLx+XyarFMhhNFo\nzMrK0uS5x2q1BvfIWvUWHx+fnZ2tSRQzm83Bt7G06s3hcLhcruDK1Up2drYmG0nw7b8LH2l2\ndnbkZaMpMzMzlDUVGxtrNBo9Ho8mq1VRlMTExMzMTE1CgN1u1+l0Gg5Vk8mk7W7E7/dr1VtC\nQkJ2drYmUcxisWi7G4mLi9NqN4KSKRqnkZnj28Xr1fW//vP2f8C3+URWTPXqUZg1AABAyRGN\nI3aKLmbkPTVGT3yx4hN9G1xl3L3u3a0ZhhGP1Y7CrAEAAEqOKH2PXd1erzwuZq98c+p7LmOV\n6nWemjzmxrh8fzoPAAAAeYjWT4op+ra9n23bO0pzAwAAKIFK6Fe1AQAAyIdgBwAAIAmCHQAA\ngCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAgCYIdAACAJAh2\nAAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACS\nINgBAABIgmAHAAAgCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEA\nAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAgCYIdAACAJAh2AAAAkiDYAQAASIJg\nBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAg\nCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0A\nAIAk9IXdwGUYDAadThd5HVVVhRBmszm8yRVFibyH4shgMAghjEajXq/B5hEsoqpq2CviUkaj\nUZMtJNiboiha9aYoisFg0GTLCa4FDXtTVTVYM7+cTmduNxkMBk02Ep1Od9EjNRqNkZeNJpPJ\nFMqaCu6UdDqdJqs1uKWZTCa/3x95teCY0nyoarWFiAIYqsHVESHNdyPBoRrGbiSPoYoSpSgG\nO71er8l4Cw4Mgl1+BZ/+TSZTIBCIvFpwVWq7RzYajUW2N62yTs4Q0PbZIoxA7HK5crtJq6fG\nS4dqeBm0EIUY7ILLX6tglzNrDYeDtsGO3UgYwt6NEOwQVBSDXXZ2tsfjibyOTqeLj49PSUkJ\nb3JNXgQXR1lZWUKI9PR0r9cbeTWbzWaxWHw+X9gr4iKJiYkZGRmabCFWq9Vqtfr9fq16i4+P\nz8rKyiMJhc5sNtvt9kAgoFVvDofD5XJpu+vPysrSZCPR6/UOh+PCR5qZmRl52WhKS0sLZU3F\nxsYajUa3252enh75TBVFSUxMTEtL8/l8kVez2+1ms9nr9aampkZeTQhRqlQpbXcjGg7VhISE\nzMxMt9sdeSmLxWKz2TTsLS4uLjs7W5PdCEomzrEDAACQBMEOAABAEgQ7AAAASRDsAAAAJEGw\nAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQ\nBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4A\nAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIE\nOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAA\nSRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwA\nAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEnoozObv78d\n3f+VvRde0+/tj+5JNEdn7gAAACVBlIJdyo8plsS7hvSvl3NNlRhDdGYNAABQQkQp2J36OS2u\n7o033ljvyncFAABAWKJ0jt2Paa74xnG+7LS/TqUEojNLAACAEiZKR+x2Z3gCX8/uPucXTyCg\nt5Vu9+CQgXc1zLk1OTn58OHDORcrVapktVojn6lOpxNCGAxhvuerKErkPRRHweWm1+s1WQKq\nqgohFEUJe0VcSq/XZrsN9iYi2EguoiiKTqfTpFpwLWi43MLuzePx5HaTTqfTZCO5dKhqtYqj\nRq/Xh7Jsg4tLVVVNVmuwmsFgyNmSI1FAQ1XD3YjQdKjq9fpAQIPjDMViqKJEicbe0+c+kaEz\nXF3qxleXjY8LpP9nzVuvLXrBVOPdPrXjgnfYs2fP8OHDc+4/b968pk2bajV3h8MR3oSa7CuL\no2CqttvtGtbU6XRhr4hL2Ww2rUoJIVRV1bA3TV6TXEjD3vR6vcViye9UZ8+eze0mq9UafFbT\nxIWPVPPFWNBiYmJCX1MGg0HD1artUNXr9UW2N213I9puY4qiFHpvZ86c0aoBFGvRCHY6Y4WP\nPvron0umW+4f8eu67ze+ua/P1JujMHcAAIASonDe72h8leWr5NM5F5s3b/7ZZ5/lXDSZTOfO\nnYt8LsEjMWGX8vl8kfdQHGVmZgoh0tLSNFkCFovFbDb7fL60tLTIqwkh4uLiMjIyvF5v5KXM\nZrPFYvH7/ampqZFXE0LExsY6nU632x15KZPJZLVaA4FASkpK5NWEEDExMW632+Vy5XfCPN6u\nyszM1GQj0el0MTExFz7SjIyMyMtGU2pqaihHp+x2u8FgcLvdwVEWIUVR4uLiUlNT/X5/5NWs\nVqvJZPJ6venp6ZFXE0LEx8cX2d2Iw+HIysrS5L3L4G5Ew6Gq4W4EJVM0gl3Kr68PnfLzxHlz\nyhqDb276t5zMiruuZs4dLBZLhQoVci6mpqZqeK5Aic1nYQs+Sfj9fk0WXTAWBAIBDVeEtr0J\nTTcSrXrLearWqrdAIKBVbzm0Khg8DevCUpoklWgKcVFoOxyCy42hGh5th6qGy60ghipKlGic\nRhZb7f7ErL9Hjl24a9/BQ/t/XD5zxNbMmAGP1rzylAAAAAhZNI7YqfpSE14f9/aCZbNffsGp\ni6lWo/6IGWMb2/mCYgAAAC1F6Rw7U3y9x56f9Fh0ZgYAAFAildBv9AAAAJAPwQ4AAEASBDsA\nAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ\n7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAA\nJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbAD\nAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAE\nwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAA\nQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7\nAAAASRDsAAAAJKEv7AYuw2az6XQ6raolJiaGN6GGPRQvdrtdCOFwODSppiiKEEKv14e9Ii4t\nGBsbq0mpIFVVNezNbrcHF6BWBTXsTa/X22y2/E6YnJyc2012u12rYXLRI42JidGkbNTExcWF\nsqaCw8FkMhmNRg1nrUmdYG8Gg0GrTU5ovRvR6XQaDgdtt7GisBs5e/asJg2guCuKwc7pdPp8\nvsjrqKoaExOTlpYW3uR+vz/yHoqj7OxsIURmZqYma8FsNptMJp/Pl5GREXk1IURsbGxWVpbX\n6428lMlkMpvNfr8/PT098mpCiJiYGKfT6fF4Ii9lNBotFosQIuwN+CJ2u93tdrvd7vxOGAgE\ncrspOztbk2Gi0+nsdvuFjzS4ERYjGRkZoawpq9VqMBg8Hk9WVlbkMw2+yMnIyNBkLVgsFqPR\n6PV6MzMzI68mhHA4HCVnNxIIBDQcqi6XS5PdCEqmohjsfD6fJtt08FhC2KXyeD6TW3BH7PV6\nNdnrBY9MBAIBDfdTXq9Xk2oGgyH4j1a9BQIBbbdeDZeb3+/XqrccPp9Pk40kEAhc9Eg1KRtN\nIW6Twb2K3+/XZEUEj2N5vV5NwpPJZBIFMFQ13I2IIjlU9Xq90HS5adgbSibOsQMAAJAEwQ4A\nAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIE\nOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAA\nSRDsAAAAJEGwAwAARY5Vp9Z4YGthd1E4ZlSPtyZ2Cm9agh0AAIAkCHYAAACSINgBAIA8Bdwu\nb6CIVrsSvzfFF7WZFQGhBrtKjW4fPf3dg6edBdoNAAAoIpbXKeWo8uKuN56t6LBbjLq4MtV6\njnrXL8R3S0Y2vvoqi8letW6zsR/8fOEkGUe3Pt2jXeXScSZbQu3Gt41buMYfQTUhxE8rXmnV\noIrNaCpVofYDQ6adcPtCmdfbtRLjq89wpezseWtduykhw3flHJn0zbLud9yQGGO2Oko3b//Q\nx7tO59x0YPXr99x6XSmHTW+0lKve8OERs5P/CaZ+z5nXn+vXsHpZs8EQm1ipzf1P7ThzPimN\nqBQbW2nEhbP4cdz1iqIccfmuWDYSoQa70im7Jg19uE7ZuGYder++fH2yx3/laQAAQHGWdWrZ\nzU8safvYmPmzJt+UeG7ZKw8369Gq5fCNHQe+MGnMgMAfP4zvdcPXae7gnTNPrmpU5/Z5n//a\n5v7+Lw4f0NBxdOxjHa9/eEl41YQQp3948br7X7LUazt0xOCbqmUtnz2sUbPB2f6Q5uX3Jj/c\n6M6/K90xafY8i6rk/TD/+vrlGq16f7lX333gyOGP9cjc9UmPm2ov/iNNCHH8y8H173lyy9+O\nvk+OnPDC8Nuv8b/72pDmfdYEJ5zZodGTU94t3fTe0ePHD+zedOfK129v2MMTQjzLu2wk9CHe\n74cj5w58/cWyZcs+WP7RE2uXPmOt0PGBh3r17n1Py3q8mwsAgJS8zt+HbTjx2m3lhRAPP1TP\nkthp96rDW/76/aY4kxCic/U91zy4cc6f6TfXTRRCTG376DHlmi3HfmiRaBZCCDF51dDGXab3\nnfhSl9HVHPmtJoRI/XXL0E8OTu1SUwghAlPeHtS434KFPb94fmXnKlecV6CRgtQAACAASURB\nVPrxiSmzv1v/xHVXfpABd6/OE/1xbX/4bXVtm0EI8fzIbhXK3vbCg2se+bbHppEfqaZKe378\nqrJJJ4QQYnzpirEL1i0UoqM3+9fhG05WunPFhg/uDVa6N+amzm9/88mZ7PtLW/KeZx5lQ103\nuQg9lal1bu788vwPD589u/3zJQM61/166bSurerHX33DoBdn7TiUHGEfAACgqDFYawdzmBDC\nnNAxRqeWqj8zmMOEEKVvvEUIke3xCyG8Wfsn/Jxc+/F3/klaQgjR4cVZQogP5/+a32pB9nID\nzqc6IYSi7zXjU6tO3fbi5lDmJRTTuwMbhfIY00/M+Oqc8/ops4KpTghhTmi1av7cMY+UEkJ0\n+/rg3yd//id+iYA/0xUIBHxZQghFtRgVkXLgk++OpwdvbTHlm9OnT18x1eVdNkL5PtymqLYW\nnR6e+8G/d29f3r5WXNrR7+dPePrGWqVqtrhr6rIS+n0zAABISdUnXnhRrwhT6fici4pqyPnf\nmbzWFwjsndZUuYAprpUQInVvan6rBcU36PZ/9zdf0zHBnPX3tlDmZbQ3KmMIKeSkHdokhLjp\ntqsuvPKWRx4f9OjtQghrXELW4W0zJox6tNf9d7RqVikxcd7JjOB9dKZK/3qlV+D4B02rxFVt\neONDA55duPxfIZ4nl0fZCIX6VmyO43s2r1ixYsXKFdsP/K0oulrNO9zX/b5SZ3e8uXjp8J5f\nrDu4/avxLTTpDAAAFBuqUQjRYMRbOcfkcpgcIR05u9SlZ8bpFaGoplDmpai2EOfid/mFEEbl\n8ufhrRza5r4Zmyo0vu2u1s073XTn0PHXnhhwxxOnzt/acsQ7p/o8v2rVF5u3fv3N+iXvL5rx\n7DPNV+3bdMcFhxJzBPyBEMtGItRg99t361euWLFi5cpdh88qilqjabvR0+7rfl+3hpVihBBC\n9Hlq3NSXrqs6eVpfMf4XDfoCAADFhzmhg0552ptSq127G3Ou9Gb/snL1nrLXWsOrmbxvlRB3\n5Fz0uY58ftYZ26KNOaGhhvOKrXmdEOu/2XlGVInNuXLjyMeXno1fOKPz/TM2Veqw4OgXA3Ju\nevuffzwZB3/Yn5J47fU9BgzrMWCYEOLA2gl1O7w45IXdP88PHuT6vy9a+fu78+etudN35FE2\nQqG+FXtNk7bPTXkzJaHJqKmLfzhy7uCONS8/2/efVCeEEIrO3qZOgt4Q5soDAADFl958zdi6\nCYeWPrzhr/+dKPbB4LsfeOCBY+F+yjLj5LxRX/7+zyXf+8PuzvD5755yk7bziq3y/LV243+e\nGvaH83wOc6d+23vWoi92lvFm/eILBBIaXZ9z56yk7dNOpAsREEJk/j2/efPm3Sfvzrn16hua\nCCG8mV4hhFWnOpO/PPPPKYPOszsGbTwR/D/vshEK9Yjd86+9ed993RpXcVx0fcCflZ4pYmOs\nQohWyw9qcNYfAAAohp5eM29RzYfaV6/fpUfn62sk7Nv44dL1vzbos7RXmTAP+phKmyd3rrvv\noX5Nqsfs3vTRp1uOVGo34fUWV2k7L0Xn+Oy9QTW6zGpwTau+PduVNaR8umhBks/2+oo+1tLm\n2xMHbXqt0xOGYddXtP6+f8ebC1ZXL2t2H/9h9rKP+3Ufe3vpNzZMaNnh977N61XzpxxZ9eZb\nOkPi2EmNhRCde9Uc9/Kua2/rPaLnbZ6/flkyfdbfpYziT68Qwlq6Rx5lH3mg25VazkuoyXbS\nsEcuTXVCiD+/6pJYuk4kHQAAAAnYK3f/6acv+rWtvPWTxWMmzNp1OuGlRWt/eKtn2AWbzdy+\naEzv419/OunlmV//EdPvhUX7vhytFMC8qtw948Ca+W2qpb47Z8KEGW8H6t31ztaDj9WME6p5\n1e7Pe95WZdWcl55+YerXv/oXfff7qo/HVI5xD39scGogZvXer5647+b9a5dNGPXc9EWfxd38\n4IqdBx+saBdCNB63ee6zD8Qc3zD88UeHj30tpUGPf3/U6vz88iyb4o3oq4JDPWIX8GXMfbr/\nOxu+O5vtvfD6v44dVSx1I+kAAAAUQT0OnOnx/9cke/7vpLGYSqMDgdEXXuOo2W7Bp+0WaFEt\nyxfMN288Mvby7eUxr74Hz/a9/ES5qn7nwM/uHHjp9bZKbZasbfP/1w3/I3n4+X+vunH28vWz\nL1dQUa2Dp70/eJrwu9L+PO2tXDFBCBH4573WvMs+89u5Z/LZf45Qj9jtHn/rU3OXp8VVrVnO\ne+TIkdoNG13bsLb+7EklofW8z9aFO3cAAACZqabYYKqLjlCP2I2asz+x/su/bh8d8GVUs8ff\nPPfd0ZVisk9tqV+1Q0b5UD9RDAAAEE1HPu3UuN83edzB5Gj115FVUeunoIUa7LaluesM7SSE\nUHT2XmWsG384O7pSjKVMq3f7XH13t0VP7x9xxQoAAABRdnWXL851KewmoijUt2Lj9Yon3RP8\nv1lF24nPzn9kt8q9FVMOzyiQ1gAAAJAfoQa7RyvEHH578nGXTwhRqXOFP9e8Ebz+rw1/F1Rr\nAAAAyI9Qg93At/pnn/6keqnKfzh91Xs/mnVqaYu+I14b/0ynafsS6o0s0BYBAAAQilDPsSvX\nasruleXGLfxcVYSt3MAPnl7x0MypOwKB2OrtVqy7zMeDAQAAEGWhBjshxLVdnvmky/nvVbl/\n+vr2z/z6R6a5bq3Khsv/bC4AAACiKq9g99lnn11x+iMHdwsh7r77bs06AgAAQFjyCnb33HNP\niFUCAQ1+thYAAACRyCvYbd68Oed/v+fUmIf67Mou3+/JAbc1rx+ncx7a/+2CKXOSKnXbvGZ6\ngbcJAACiKD09vYAqx8TEFFBliLyDXatWrXL+3/RY/V1ZNbYe/U+zBFPwmjs6dBkwuO+t5Rp3\nG93rwOK2BdsmAAAAriTUrzsZ8f6h6j3n56S6IL21zoxHa/724bACaAwAABR1J0+e7Nmz56uv\nvlrYjeC8UIPd4WyvarzcnVXhc/2pZUcAAKCY+Omnn06cOPHVV18VdiM4L9Rg17209fC7I4+4\nfBde6XMdG7X4kLVMjwJoDAAAFHXBT0/yGcqiI9RgN3rBg66ULdfWbz9z6ac7dh848ON/Pls2\nu0ODhl+dcz4w/7kCbREAAAChCPULiit3Xrhxpr77iIXP9F6fc6XOWHrQzA2vd65cML0BAIBC\ndujQoeXLl/v9/svempSUJITw+/3jxo3LrYKqqj169KhRo0ZBtYgL5OOXJ1oPef1kv+H/+mL9\nvt9OelRzhWsa3N6hbWW7Pv23TTHVWxdciwAAoLAsX75848aNed8nEAhc+BVplzVmzBjNekLu\nQg12Qz84MO2BOoaYqzs90L/TP1cGvMmLxwx5dvL7qR5fXhMDAIDiyePxCCFKm0wNHPYwJt+b\nmnHa5QoWQRSEGuxm9Gzk9/8w46F6OdccWDu//8AR3xzPKHPdvfmapTPlnD82zqryE7MAABQP\ndWPtExrUCmPCUT8d3HLapXk/2kow6Lr8fGZxjfjCbkQDoQa7V++rPrJ3Y7/v+1m9G2Sf+mHM\noAHTVn6vt1QeOueDVwZ3uvL0/3Ce/faRRye3nP/+wLK2sBoGZNCtW7fMzMzC7WHt2rWF2wCK\nu6KwGUtPUZQ1a9YUdhcoTkINdsM/+FGvv25on+vP7O21afY7SW5f8x7PvfH62Ab//5XFeQv4\ns+c9Nyvdx4eiUXLdeeedhd3CecFO7Hb7ihUrCrsXFDNFZzOWXiAQCC7tJk2aTJgwobDbQTEQ\n6tedCMX4zNLds3rVeX/qW8mW69/496/ffvBKvlKdEGL3ktG7Hbfmt0VAGkXw6TAjI6Nv376F\n3QWKkyK4GZcEu3bt2rZtW2F3UeA8GftHPNi+ZoU4a9xVbXoM25tx/sy87FPbH+/SsmycXW+y\nVq1/y6SPfwlef2Tdgo5N6ibYTKUqVLv7sclpwSNHAZeiKBOP/++3bsub9I8cOpdHHZnk41Ox\nQjE8ueR7nb7pk+/+ek6x5ndOqYc/mbTOOWlx12EPcVQZKEKC31YAhKJbt26F3ULJNXHixHXr\n1kV/vikpKUKI41nZ7x09Ecbkx7OyhRAuVwin2QXc/Rvf9IW9w6K3vyyrPzV7cL9bm4mz+6cK\nIZ67qePKhPvfXv1aBYt3y/sjnn2g6QN3navg3t6w0+Bbnl+wZsENWce+7f3AUx1q3/X10/Xy\nmMNl61Q168J4XEVWXsGuV69el7k2UCtW7Hm+ff0fe3TKWRJLly7NezZ+d9LEMcvuHLmwhvUy\ni++7776bNWtWzsXhw4fXrVv3Co0LIYTYsGFD3p/BVhQl7K/DPnPmTHgTFneff/75rl27NPwa\ncUVRhHbfSx7JOr1sNRGt3jZt2qTJXApCXFxcbjelpqbmdpPValXVkI7653eonj59OpSyRcei\nRYus1iu/3A1ub6I4D4eMjAytZocw5DFUg/FLc6dPn963b58Q4vfMrPmHj4Zd5/Dhw1e8T/KB\n4e/+7t6cvKSlwyiEaLjhTKeH3k9y+8sZ1asHPL+4z5MdS1uEELWrj3p6Zqfdme7E9HXpPv/A\nQQ81L2cV1zf+amW5Q9bEvGdx2TpVzZawH1cRlFewy+2VgT4uIUGI9fl53bB2ypiU6wY/en2p\ngO/cpbemp6cfOHAg56LT6dTrQzqUePTo0Q0bNoTeBkKxb9++4DBGyRHiiLuITqfT6UJ6pSv9\nUP32228LuwWUCOEN1Ug4HI7Y2NjU1FSDqlp0IZ++dYFsn9/j98fHX/kDp3+u3m6ObxtMdUII\nW/n+mzb1D/7/9LOPb1q9csq+g0eO/P7j118Gr7RXfKZnk7fvvbpqq/Ztb77ppjva33NX/bJ5\nz+KydSST1yai1YvmUztef/tA2QVLbs3tDhUqVLj33v99Z0p8fLzT6QylcqVKlVq3zvW7kRVF\nUVXV5wvzO/Z27txZMj/wVa9evXLlyvn9fk2OBKiqGjyokNu3lueXTqfTtjchRNgbyUXy7m3z\n5s1F9ucUQxxxF/F4PCF+N1V+h+qZM2f27t0bRkuFpXnz5hbLlV/0F/3hcMXeivKB55IgvKEa\nCaPR2LBhw23btt2YGD+pYdhfd3K2fPnyV7yn3+VXVPOl1/tcxzvXqb/TcfOA++64pdON/YY8\n2OTaTkIIVV9q6c4/R32z7t+bt32z8d0pzz9x67C1ayffcWkFpz+QRx3J5C/7H9zw4Qf/+vbY\nqeSWry7oYdj+n5MNW9Uvc8WpTm/7yZ2e1K/rPTnXfDnggfW2a1d8cP4DPjVr1hw1alTOramp\nqSEe7W/SpEmTJk1yu1Wn08XHx4f9jurAgQNLZrDr3Llz165dU1JSvF5v5NVsNpvFYvF6vVq9\nTZCYmJiWlqbJd11arVar1er3+5OTkyOvJoSIj4/PysrK7VSSkSNHFtmzzsN7f83pdIa4keQ9\nVPV6vcPhOHv2bM41O3bsKF7BbsCAAaE8b8XGxhqNRpfLlZ6efsU7X5GiKImJiefOndPklYnd\nbjebzR6PJ48334UQW7du1eqFEPJLURS53wqv0Kmhc8LK7zI8N9gNQoisv5dWbzTi7Z+P3HBs\n6NqjziTn51cZVCFE1qllwfv//c30Vz51z5z6XJ2bOgwR4ucFNzYePkJM3h28Ndlz/iVK1qmP\nz3n9Qohzv1y+jmRCD3aBeX1vHrxke/CCdczsjhmzWzf+ouWjc75aOFif55cNV+89anqX80/D\nAX/a0GFjbxo98b4yV3gjHJCPqqpaHarRUKGcjo1i6ssvvyyyr0/kpiiK9N89WarRnLuu+rjj\n7QMWv/J4eePZ2YOecdq73hlvSs9sEvB/PHX55idaVz2xf+vkoaOFED//dqpVmfRZ08Ymx5Ud\n1PF6JfW3ua8fdNQaKoQQiql5rGl5/0kPzhtkTP554oDHVEURQpgSL1/n7sQqhfq4NRbq++W/\nLbt38JLtbQbP3HPo/Idi4mtMmTSgxZZFT3RecIVPC5uvqnJNjupVhRBxVapVq3rlV7eAZNas\nWWM0Ggu7i/9DqkN+rVu3LudTIIga6VOdEELR2T/cu7F7heNDHrzj1i4Dj9Z7dPN3c4QQMRWH\nr5syaPWo+2vXu/HZqesHrdzfv0mlcTfXP1Ju1NppT+x5a2TLJtd1eujZ040e3bx5eLDU6n/P\nqX3qo1vqVWt4Y4c/m4y/v7Qljzo/Zkj1c2ehHrF7eej6hDrPfTV3yP+mtNZ+bsE37u2lXh07\nQTwu5/FMQHOrV68O5W5ms9lutwcCgQvfoIyEw+FwuVzRP0EHUgolZJQqVUrbMzp8Pt+5c5f5\n+F0YEhISMjIy3G535KUsFovNZtPwjI64uLjs7OyQvhwkun5Oyxiz92B4E4Z+Z1NC0zkrv5pz\nyfXthr9+cPjrORfv3HnsjeB/z86589lL7y5KN+u/YW//gD/77+RA2VJWIQbnXSdZop+8DzXY\nrTiTXefZBy+9vkvvauOe+zz0+Sm6+BCf2AAAQKEzGAxCiNMu18ZT4cfNYJEoU1RL2VLRn20h\nCzXYVTbp0g+lXXr9uf2pOhNvqgIAIKcePXoIIXI7PzgpKengwYOKorRq1Sq3CqqqBosgCkIN\ndqOalenzXu8dr+xvXup/H0XOOrmx74e/l7rujYLpDQAAFLIaNWqMGTMmt1vXrl07ZcoUVVVf\neumlaHaF3IT64Yl7P3yjsnKsVdVGA4eNF0LsX/7WhOF96tZod8xfbs7H3QuyQwAAAIQk1GBn\nKd1h957VXZuob04fK4TY/MLQl6a9F9P8vk93/9S1nK0AGwQAAEBo8vEFxbE12r+/sf3i03/s\n/+2kV2epWKNexThTwXUGAACKuNjY2Jy/KArC/+WJRv5tW/aF9MsTAABASi1atHjhhRcqV65c\n2I3gvGj88gQAAJCSqqpt2rQp7C7wP9H45QkAAABEQajBLueXJxpec/5b64K/PDGuQeKWsRMK\nrD0AAFCkpaamavIzHtBEqMFuxZns6n0u/8sTzrP5+OUJAAAgjYMHD3br1m3IkCFXviuiItRg\nxy9PAACAi/z+++9er/fQoUOF3QjOCzXYjWpW5vB7vXec+b9fED//yxONRxZAYwAAAMgffnkC\nAABAEqF+3UnwlyceGzg055cntii6eq27fzp3Xid+eQIAAEkdOnRo+fLlfr//srcmJSUJIfx+\n/7hx43KroKpqjx49atSoUVAt4gL88gQAAMjV8uXLN27cmPd9AoHA5s2b877PmDFjNOsJuQs1\n2G376dgtDSsLISylq95QumpBtgQAAIoKj8cjhPA44jKuvjqMye1HjhhSU4JFEAWhBruW11aJ\nrVS/ffsOHTt2uLPtzaXNugJtCwAAFB2ZlSv/3qtvGBNWf2dx3N4UzfsJW9bfi21lH/3D6b3a\nJGeSCfXDE88/8XDd2PQVi17rffetZWMSm7frPn7WO98dOl2gzQEAACB0oQa7SXOWfLvvSPqp\n39Z9/NaIgXcrJ/4z7pm+TWqWuapmk75Pjy3IDgEAQIni81z+oxrRmTxX3qwidOgxN6EGuyBL\nqartuvV9Ze47X3/3w1fvTWldO/7Uoe+WzMr1gzAAAAAhKm/Sv7D+rcZlY0x6Q9lrmr2x8/R3\n7wyvXS7eZC/VrMvTZ/7Ja373yVcGd7u2RkWzPbFBq/uWbP8rX5MLIU7tePv2RldbjObytZqN\nfff7vMsmGHRzjh0fel/rClV7R3FhhCkfn4r1ZZ/euW3bli2bN2/e8vV/9mX6/DpDXJPb7m7d\nunXB9QcAAArRn3/+KYSwHTtabenbYUxuO3ZUCJGWdpkfr7qs6V2mzfjoqzZX62c+1HHQLQ3K\n39bzw3/tVI7/q+3dQ3qsfPKrHtWFEKNbXbcw/ZY5s5bWSVS//XTuIy2v8R448WgNR4iTCyE6\nd5o0ePb0CdfYtrz78qg+TTw1kia2uCqPsise7dDmgclbXr0+jCUQZaEGu7YtGnyz6+csn1/V\n2Rve2HLA6F6tW9/W8uZGDn3+jvkBAIDiIikp6Y8//hBCGFJT4/f8GHado0ePhnjP62Z+MrBD\nLSHEC/Oazrtp3ZcrJzew6kXDGiMqvfDBttOiR/WMEzNe/c/pTcnvtYozCSGua9bK81ni+EHb\nHl3fKZTJg3Nptmj9mB7VhRAtbmmXtj1x4aPLn/+3P4+yp6rOerHvbWE//GgKNdit37FPCFG6\nQbvRo5/t0rZV5Xi+wQ4AAMldddVVFSpUOHHihMduzy4Xzk/DW5JOGjIyKlSoEOocbyoV/McQ\nZ9aZKjewng8qiXo14A8IIVJ+WRcI+G+NN184VZz7oBCdQpk86Ik7K+b8/9CAGtNf/CjlF3se\nZa/pUzfUB1zYQg12Hy6euW3r1q3btj3do90ziq5KvaYtW7Vs2bJVy5a31ChrL9AWAQBAoVBV\ntVq1aidOnMisWu23hx8Jo0L1dxbH7f0pISEhvPlfepXBYVH1cakpfyoXXKmoxhAnv/QGY4JR\nUQ15l41NuGz9oijUN1K79xsyZ8nKPb+dSv3zwOr353e/pfqvW5YP7NGxZrmY8jWLwVvOAABA\nAo5q/QO+1IUnPbbzrC/d3W7Ae7/nq8jrX53M+f+DaQccNXtpUrYoyMeHJ4JiK9Tu0LVc2TKl\nE+LjjZ73th48l3Toh4LoDAAA4CLmhI4z7qjw/M2d7bOfb1Ezfv3iYbO+ObHm46vzVeTz3ne8\n6pzR5hrb1qUTx+5Nm7nvbnNCfORli4JQg13An71/x9aNGzdu3Lhx89e7Uz0+VWdr1PKO0Y+0\nb9++fYG2CAAAkOPJL77PemrApEHd/3KZajduvXTrqjvyc+q/zljuX9PvGzmu/0vHndc0uv61\nT/Y9VSc+8rJFRKjBrmxM7KksrxAipmK99n2ead++/Z3tWpa15vuAHwAAKHZsx46F+3Unx0K/\n80mXN+f/xDorPdn/u+nxQ8mP//O/aijz/PxVz88PZ3LrVY94XY8IIXY99spFk+dWNtnjC/0h\nFLpQk1nFph37t2/fvkOHm+pXKtCGAABA0WEwGIQQhtSUSL7uJFgEURBqsPt+06oC7QMAABRB\nPXr0EEL4/Zf/la6kpKSDBw8qitKqVavcKqiqGiyCKOC9VAAAkKsaNWqMGTMmt1vXrl07ZcoU\nVVVfeumlaHaF3PC7EQAAAJIg2AEAAEiCYAcAAMJUvnx5RVFC/8UwFDTOsQMAAGG69tprlyxZ\nEh8fX9iN4DyCHQAACF/lypULuwX8D8EOAABcLCYmprBbQDg4xw4AAEASBDsAAABJEOwAAAAk\nQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMA\nAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASegLu4HLMBgMer0Gjamq\nKoSwWCzhTa4oSuQ9FEdGo1EIYTKZDAZD5NWCq1JV1bBXxKVMJpMmW0iwiKIoWvWmKIrRaAxu\neBHSvDdVVY1GYxhbtdPpzO0mo9GoyUaiqupFjzS4ERYjZrM5lDWl0+mCfzVZrcG1aTKZAoFA\n5NUKaKhquBvRfKgGV0eEgg9Q86Eaxm4kOztbkwZQ3BXFYKfT6TR5agzu9cJ+hiixwS64DzUY\nDJo8WwR3ncHdaOTVgqX0er0me+SczUzb3jTZejXvLVhQ22BXcENVkzQQTQaDIZQ1FXykwWdu\nrWZtNBo1GarBValtbyVnN6J5bwQ7hK0oBjun0+nxeCKvo9Pp4uPjU1NTw5vc7/dH3kNxlJWV\nJYTIyMjwer2RV7PZbBaLxefzhb0iLpKYmJiZmanJFmK1Wq1WayAQ0Kq3+Pj4rKwsl8sVeSmz\n2Wy32zXszeFwuFyuPFJaGLKzszXZSPR6vcPhuPCRZmZmRl42mtLT00NZU7GxsUaj0ePxpKen\nRz5TRVESExPT09N9Pl/k1ex2u9ls9nq9Wm1ypUqV0nY34vf7teotISEhKyvL7XZHXspisdhs\nNg17i4uLy87O1mQ3gpKJc+wAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATB\nDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABA\nEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsA\nAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ\n7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAA\nJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbAD\nAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBL66MzGnfbrm7MXb9/7m1Nnq1y1\nbtcBg2+qYo/OrAEAAEqI6ByxC8x79sXtZ8oOfmHiK6OH1Nb9MnXYyDMef1RmDQAAUFJEI9i5\nUjdtPJX1yLhBLRrUqlHvun7PDfe5jn94OisKswYAACg5ohHsVH2pfv36NYsxnr+s6IUQVh2n\n9wEAAGgpGufYGWwN77mnoRDi3I//+SEp6YcNK0vXu6tXGWvOHZKTkw8fPpxzsVKlSlar9TKF\n8kmn0wkhDAZDeJMrihJ5D8VRcLnp9XpNloCqqkIIRVHCXhGX0uu12W6DvYkINpKLKIqi0+k0\nqRZcCxout7B783g8ud2k0+k02UguHapareKo0ev1oSzb4OJSVVWT1RqsZjAYcrbkSBTQUNVw\nNyI0Hap6vT4QCEReqlgMVZQoUd17/v31xnWHTxw9mt3i3qsvvH7Pnj3Dhw/PuThv3rymTZtq\nNVOHwxHehJrsK4ujYKq227X8dItOpwt7RVzKZrNpVUoIoaqqhr1pHSZkmgAAHmtJREFU8prk\nQhr2ptfrLRZLfqc6e/ZsbjdZrdbgs5omLnykmi/GghYTExP6mjIYDBquVm2Hql6vL7K9absb\n0XYbUxSl0Hs7c+aMVg2gWItqsKv9xPOvCZF1cufAJyaNK1d3wu0Vojl3AAAAuUUj2KUd3rbt\nN1PHducPwlnLN70rwfzlv/4S/wS7W265ZePGjTn39/l8eRwkCJ1Op4uLiwu7lM/ni7yH4igj\nI0MIkZqa6vV6I69ms9nMZrPX601NTY28mhAiISEhPT1dkzcdLBaL1Wr1+/3nzp2LvJoQIi4u\nLjs72+VyRV7KbDbbbLZAIJCcnBx5NSFEbGys2+12Op35nTCPt6syMjI02Uj0en1sbOyFjzQ9\nPT3ystGUkpISylGWmJgYo9Hodrs1eYCKoiQkJKSkpGiys7Lb7SaTyePxpKWlRV5NCJGYmKjV\nbsRqtVosFp/Pl5KSEnk1IUR8fHxmZqbb7Y68lOa7EYfD4XQ6NdmNoGSKRrDzZG95Y8H+Zrct\nK2VQhRAi4Nuf5bVe+7+dYHC3nnMxNTVVk/1U8AlJk7MoSpSc5abJosspouGK0Kq3CwtqWKpE\nLTcNH+yFpYrdsM3XotB2RZS0TU7DUiVnuaFEicZpZPG1B1Y3up57ZfH3+w4ePrDnw9nDf8w2\n9exZLQqzBgAAKDmiccRONZR+efqoeQvfnzb+X15DTOWraz89+cWb4k1RmDUAAEDJEaUPT1gr\n3DBs/A3RmRcAAEDJVEK/0QMAAEA+BDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDs\nAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAk\nQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATBDgAAQBIEOwAAAEkQ7AAAACRBsAMA\nAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABAEgQ7AAAASRDsAAAAJEGwAwAAkATB\nDgAAQBIEOwAAAEkQ7AAAACRBsAMAAJAEwQ4AAEASBDsAAABJEOwAAAAkQbADAACQBMEOAABA\nEgQ7AAAASRDsAAAAJPHf9u48Por6/uP4d3Z2Z89kNweIgkRChAgqh/2JWq1dTfFog1jFWxF+\nAloUqSLa4kGtYFU8wEqlKFYpFemvav3h/cNfPUp/WkDF+2h/4AUiCQmbzd47vz8G1vwg0CT7\nZXfyzev5h4/srPOZz87MZ/ad2QUIdgAAAIog2AEAACiCYAcAAKAIgh0AAIAiCHYAAACKINgB\nAAAogmAHAACgCIIdAACAIgh2AAAAiiDYAQAAKIJgBwAAoAiCHQAAgCIIdgAAAIpwFruBdvj9\nfl3XZVWrqKjo2ooSe+heAoGAECIYDEqppmmaEMLpdHb5QOxesLS0VEopi8PhkNhbIBCwdqCs\nghJ7czqdfr+/sys2Njbu6alAICBrTHZ5pSUlJVLKFkwoFOrIkbLGwe12G4YhcdNS6li9uVwu\nWaeckH0Z0XVd4jjIPcfscBlpaGiQ0gC6OzsGu1gslslk8q+j63pJSUlzc3PXVpfSQ3cUi8WE\nEC0tLVL2gNfrdbvdmUwmEonkX00IEQwGo9FoOp3Ov5TH4/F4PNlsdvv27flXE0KUlpbGYrFU\nKpV/KcMwfD6faZpdPoF3EQgEUqlUIpHo7Iqmae7pKVmjaiXOtq+0tbU1/7KFFIlEOnKk/H6/\ny+VKpVLRaDT/jWqaFgwGI5FINpvNv5rP5zMMI51Ot7S05F9NCBEKhWx7GZE4qm632+v1ShzV\nkpKSRCKRTCalVEMPZMdgl81mpbxtW29IUkr1KNaFOJPJSNl11luOaZoSD4Tc3oS8k8Q0TVln\nr9O5YzYl9iZrv+XILdi2VLf7taqDu8K6KMk6Saz7WJlMRsru6lGjKuT15nK5hNT9ti9GFT0K\n37EDAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAAABRBsAMA\nAFAEwQ4AAEARBDsAAABFEOwAAAAUQbADAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATB\nDgAAQBEEOwAAAEUQ7AAAABRBsAMAAFAEwQ4AAEARBDsAAABFEOwAAAAUQbADAABQBMEOAABA\nEQQ7AAAARRDsAAAAFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAAABRBsAMAAFAEwQ4AAEARBDsA\nAABFEOwAAAAUQbADAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATBDgAAQBEEOwAAAEUQ\n7AAAABRBsAMAAFAEwQ4AAEARBDsAAABFEOwAAAAUQbADAABQBMEOAABAEQQ7AAAARRDsAAAA\nFEGwAwAAUATBDgAAQBEEOwAAAEU4C7MZM73ticWLnl39dkPcsf+BB4+58NKTRvQpzKYBAAB6\niALdsXth7oxlL389ZsK023557QkDEwtnT33y85bCbBoAAKCHKMQdu0zi8/vXbj1+7rz6oWVC\niINrD9v0xtlPLnx37K1HFWDrAAAAPUQh7thl4huqBgw4tbp05wJtRNCdauKOHQAAgEyFuGNn\nBI+7557jcg9TLR8u+aqlasLg3JI1a9bMnz8/9/Caa64ZMmRI/tvVNE0IEQqFura6w9FD/2SJ\nz+cTQpSUlJimmX81azfqut7lA7ELTdMCgYDE3hwOh6zeHA6Hz+fzer1SSgkhNE2T1Zuu67qu\nezyezq7Y3Ny8p6d8Pp+UMdE0bZdX6vf78y9bSKWlpR05UrquCyEMw5B1WK1NSxwHp9MpsTe5\nlxG5o+r3+61rXf6lhNTedF3v2mWkqalJSgPo7gr0hydyNq55ZsH8JanqU2ad3C+3MBKJfPDB\nB7mH8Xjc6ZTWWJdLWbmwB7Lee6z/yqJpmsRjKrc3kcdJsjs796ZpmtxfV6ywKKta21cqfTfu\na7qud/xI2Xkc6K3L7NwbepTCBbvkto+W3Lvg2Tcbjz/zsjnnneBpE5uqqqrGjx+fe1hRURGL\nxfLfoqZpHo+ny6Wk/KLZHSWTSSFEIpHIZrP5V3O5XE6nM5vNJhKJ/KsJIbxer6zenE6ny+Uy\nTTMej+dfTQjh8XhSqVQmk8m/lNWbEELKLAgh3G53Op2W0luOdarkz+FwuN3utq9UVuWCicfj\nHTlShmHoup7JZGS9QK/XG4/HpVysrN7sOarSLyMejyeZTNrzMrIvRhU9SoGCXWTjqqtn/Fo/\n7JTbF180uHLXD4Oqq6uvuOKK3MPm5uZoNJr/Rq0PnrpcSsrMd0fWpTMWi6XT6fyr+f1+64os\n5ZgKITweTzweT6VS+Zfy+XzWFVlWb4ZhJBIJKe89Ho9Hbm9OpzOZTMp677EkEgkpJ4nT6TQM\no+0rldtnAcRisY4cKeseZzqdlnJYNU3zer2xWExKCNA0zQqdsk45qzeJlxGJ4+B2uxOJhJR4\n7fV65Y6qy+WSdRlBz1SIYGdmW+dcu9B94rQFl4Z76KebAAAA+14hgl3rlmXvt6YmHOZbu2bN\ntxv21gwfKu0rugAAAChEsIt8ukEI8dBtc9ouLD3w57+/j7/HDgAAQJpCBLs+x8556tgCbAcA\nAKBH66F/VRsAAIB6CHYAAACKINgBAAAogmAHAACgCIIdAACAIgh2AAAAiiDYAQAAKIJgBwAA\noAiCHQAAgCIIdgAAAIog2AEAACiCYAcAAKAIgh0AAIAiCHYAAACKINgBAAAogmAHAACgCIId\nAACAIgh2AAAAiiDYAQAAKIJgBwAAoAiCHQAAgCIIdgAAAIog2AEAACiCYAcAAKAIgh0AAIAi\nCHYAAACKINgBAAAogmAHAACgCIIdAACAIgh2AAAAiiDYAQAAKIJgBwAAoAiCHQAAgCIIdgAA\nAIog2AEAACiCYAcAAKAIgh0AAIAiCHYAAACKINgBAAAogmAHAACgCIIdAACAIgh2AAAAiiDY\nAQAAKIJgBwAAoAiCHQAAgCIIdgAAAIog2AEAACiCYAcAAKAIgh0AAIAiCHYAAACKINgBAAAo\ngmAHAACgCIIdAACAIgh2AAAAiiDYAQAAKMJZ7Aba4XK5nE4JjTkcDiGE1+vt2uqapuXfQ3dk\nGIYQwu12u1yu/KtZh9LhcHT5QOzO7XZLOUOsIpqmyepN0zTDMKwTL0/Se3M4HIZhdOGsjsfj\ne3rKMAwpJ4nD4djllVonYTfi8Xg6cqR0Xbf+K+WwWkfT7Xabppl/tX00qhIvI9JH1TocebJe\noPRR7cJlJBaLSWkA3Z0dg52u61LeGq2rXpffIXpssLOuoS6XS8q7hXXptC6j+VezSjmdTilX\n5NxpJrc3KWev9N6sgnKD3b4bVSlpoJBcLldHjpT1Sq13blmbNgxDyqhah1Jubz3nMiK9N4Id\nusyOwS4ej6dSqfzr6LpeVlbW3NzctdWz2Wz+PXRHra2tQoiWlpZ0Op1/Nb/f7/V6M5lMlw/E\nLioqKqLRqJQzxOfz+Xw+0zRl9VZWVtba2ppIJPIv5fF4AoGAxN6CwWAikdhLSuuCWCwm5SRx\nOp3BYLDtK41Go/mXLaRIJNKRI1VaWmoYRiqVikQi+W9U07SKiopIJJLJZPKvFggEPB5POp2W\ndcpVVlbKvYxks1lZvZWXl7e2tiaTyfxLeb1ev98vsbdQKBSLxaRcRtAz8R07AAAARRDsAAAA\nFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAAABRBsAMAAFAEwQ4AAEARBDsAAABFEOwAAAAUQbAD\nAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAAABRBsAMAAFAE\nwQ4AAEARBDsAAABFEOwAAAAU4Sx2A3a3dMOXSzd8uY+Kb4onvrtq9T4qDihg+I0/y2d1d2Pj\nETOulNUMANgfd+z2KBQKFbuF4uixLxz2UVZWVuwWOsHlcgUCgWJ3AQBCcMduL2bOnLl27dp0\nOm099Hg8TqcznU7H4/H8i2ua5vf7o9GoaZr5V7N6y2QysVgsz1K9e/ceNmxY/i0B+Rg8ePDc\nuXM3b97chXW9Xq+u66lUKpFI5N+Jw+Hw+Xx7H9WamprS0tL8twUA+SPY7VFFRcXo0aNzD0tL\nSw3DSCQSkUgk/+IOh6O8vLyxsTGbzeZfraSkxO12p1Kp5ubm/KsBdjBy5MiurRgMBl0uVzwe\nb2lpyb8NXdfLysoaGhqk/A4GAPsaH8UCAAAogmAHAACgCIIdAACAIgh2AAAAiiDYAQAAKIJg\nBwAAoAiCHQAAgCIIdgAAAIog2AEAACiCYAcAAKAIgh0AAIAiCHYAAACKINgBAAAogmAHAACg\nCIIdAACAIgh2AAAAiiDYAQAAKIJgBwAAoAiCHQAAgCIIdgAAAIog2AEAACiCYAcAAKAIgh0A\nAIAiCHYAAACKINgBAAAogmAHAACgCIIdAACAIgh2AAAAiiDYAQAAKIJgBwAAoAiCHQAAgCJU\nDnaZTKahoUFWteuuuy4cDt9yyy1SqmWz2YaGhmw2K6Xa3Llzw+Hw1VdfLaWaEKKhoSGdTksp\ntXDhwnA4PGnSJCnVhBCNjY2pVEpKqWXLloXD4XHjxkmpJoRoampKJBJSSq1cuTIcDo8ePVpK\nNSHE9u3bZfUmXTqdbmxslFVt2rRp4XD4rrvuklLNuoyYpiml2qxZs8Lh8E033SSlmmmaDQ0N\nmUxGSrU77rgjHA5Pnz5dSjUh9TKyaNGicDg8YcIEKdWEENu2bUsmk1JKrVixIhwOn3766VKq\nCSGam5ttO6roFpzFbqAdwWCw2C20I51ORyKRbDZbWVlZ7F7aEYlE0um0DXtzOByRSCSRSNiw\nN13XI5GI1+u1YW+GYUQiEcMwbNhbTigUKnYL7Ugmk5FIRAhhw12XzWZtfhlJpVI27M0a1Xg8\nbsPenE5nJBJxuVw27A09k8p37AAAAHoUgh0AAIAi7PhRrD0NHz7c5/MdeuihxW6kHUOHDk0k\nEjU1NcVupB2DBg2qq6s74IADit1IOwYMGFBXV2fPj/779etXV1fndDKhnfad73ynV69etbW1\nxW6kHcOGDXO5XPa8jAwZMiQajVZXVxe7kXbU1NTU1dXtt99+xW6kHVVVVXV1dYFAoNiNADto\nsr4UDAAAgOLio1gAAABFEOzQQ8WbtrVmuV0N2B2jCnQK3+D5F3532XjPzfef08u7c0H2L8sX\n/ucr6z6P6LWHHnnxFROqfUXYh2Z62xOLFz27+u2GuGP/Aw8ec+GlJ43oY5P2kts/fmDBg6vf\n+Udc9/cfMOSMyVO/WxWwSW858Ya//fslv/reb/4wpY/fJr19/bdZk259p+2SiQ+tGFvhsUNv\n3YINR9XOcyoY1a5iVGFznHZ7YX7y6oNPfNU0rs3XEP/5p+vvfmzjBVMvn1iWfnrRfbN+mly2\naGrhb3u+MHfGsvdLL548rfYA//pVjy6cPTX264fHHhiwQXvmwqtuXBMYNfX6iZWO6H8/du+8\nGdcO/sO9lS6HDXrb2WI2tvC6+ZGMvQ5r01tN3or6KycNzS2pKnHZpDfbs+mo2nhOBaPaZYwq\n7M5Ee75efffF555RX19fX1+/9OvojqXZxNRxY3/62KfWo/i2V+vr6x/5oqXAvaXjn40dM+bu\ndxt3Lsjee9G48df9zQ7txZtW1dfXv9QUtx6mou/V19f/+suIHXrLWfvgTy+4+jf19fX3b2ox\nTbsc1lcuv2Dy7e/uutQevdmZbUfVznNqMqp5YFRhc/w60b7Q0HGzbv7VvNuubbsw0fzKZ/HM\nD37Q13roDh07ImCs/cvmAveWiW+oGjDg1OrSnQu0EUF3qqnFDu05nJUTJ04cVWLsbM0phPDp\nDjv0Zmn+9PG5z8VvuOmM3BKb9PbW9kTZiFAmtn3zlqbcDQqb9GZnth1VO8+pYFTzwKjC5vgo\ntn1Gad+aUpFJetouTEbXCyGG+Fy5JYf4nM+tbxbnF7a34HH33HNc7mGq5cMlX7VUTRicjP6x\n6O25/IePHXu4EGLbW6+v27Rp3ao/9Rpaf2FvX+wrW+y6bHLTnBuWnXztooN9em6hTQ7rmy0p\n87UFZ937Yco0nf5eJ5135ZT6w23Sm53ZdlTtPKeCUc0DowqbI9h1QjYRFUJUOL+9zVnp0tMt\n8eJ1JDaueWbB/CWp6lNmndwvvdFG7X392kvPffrlxo2xo398kLDNrnv29huaRk695IhKM7Mt\nt9AOvWWSX7boroMqj7lt2c0hM/L6M0vuWHy9++BHTjeK31t3ZIdj2pZt51Qwqp3EqML+CHad\n4DC8Qoht6WxA3/FLZEMqo4eMva60ryS3fbTk3gXPvtl4/JmXzTnvBI+mRezUXu3lP7tDiNav\n3phy+dxf7D9kZm3xe9vyP/c99EGf+3/3/V2W2+Gw6kbfFStW7HzkPu7smR8/t/alB949Y3rx\ne+uO7HBMLTafU8GodhKjCvvjO3ad4PIfJoT4KJbOLfkklg4eGip8J5GNqy6ffN3bYtjtix+6\n6vwTPZpmk/a2f/rq08+/kXvoO+DI+nLPZ89vtkNv37y6PhlZP/GMsWPGjDnt9PFCiKcnn3vm\nuTfYobfdjdjPm9r+jT17sz+b7DfbzqlgVOVhVGE3BLtO8ITCBxj6869tsR6mom+9EUmOrOtT\n4DbMbOucaxe6T5y28MbJgyu//WqRHdpLxV7+7f13b01ld/aaea817evvs0NvAy/6+V073Tlv\nthDiu7Pm3D73Mjv01vTxff9+ydTNyZ37TWRf/qo1NGSQHXrrjuyw3+w8p4JR7SpGFfbHR7Gd\noRkzzqy95nez/2v/mUPLUk/dd6dv/xMv6lfof/u5dcuy91tTEw7zrV2zJrfQ6a0ZPjRU9PbK\naqcMNKZcd+uDl/34e0E9vvaFh9+KuWdeUG2HXefZr6pm578hbn1xJ1RVXd3HL4Qoem+l1WdX\ntF567exFl593QkiLrX3x969ES268ZJDQXEXvrVuywflm5zkVjGpXMaqwP800+ada9iiT/OL0\nM39y1gPLL+jt27HIzLz4yD2PvfhGQ1wbOOz4S6+aVOMvdDje/Nqsybe/s8vC0gN//vv7jrJD\ne61frlm46A/rPvws7Srpf1DtDy+aEh4cEsIWuy7HzGw77fTxP/ztozv+Onsb9JbY9t5D9y/7\n69ufxPWS6oMPHTtx8tH9Azbpzf5sOKo2n1PBqHYVowqbI9gBAAAogu/YAQAAKIJgBwAAoAiC\nHQAAgCIIdgAAAIog2AEAACiCYAcAAKAIgh0AAIAiCHYAAACKINgB3diNVcGS/Sft6dntG6/X\nNO38jxrz3MrdA8t8FT/Ks0hnLT+k0ltWV+CNAkB3R7ADujGH06k7FZniLa9fX19fv3p7stiN\nAEA3pshbAtAzzf5HQ9Pni4rdhRytm/+2cuXKzalMsRsBgG6MYAd0S9l0k70TkBlPZYvdAwD0\nOAQ7oNt4aHBF2cC7E01vXPD9IQF3eUvGnDsg1PY7dn9f/qu679SUeIyK/Q8+58p7tiT/X7Rq\n2fjK9HNO6t8r5PaX14444ReLnula8tpLneWHVAarbtz03wtHVpV5Dd1f0XfUyeP/64tobt1N\nrz189qnf6xfy9eo39Cfzntnw5xM1Tducys4dEBow9iUhxBmVvtIDZ+b+/9jm1ZPHfLei1Oev\n6Dvq5ItebFMKALA7Z7EbANAJ2XTj+OEnNxx34dwF07wOre1T6+8758jLH/NUjDh30tWV6S/+\n/ODMI1+uyj0b/erJ4Yec9ZnW9/wJk2oq9bf/8sfZl/7wydUPvfnwxZ1q4F/WSW5/7d9OeaX6\nrJ/cfUzt1vXP3b5o6Wkjt27f8rQuROP6+bXhqzL7HXPxpde6t32y9Odjnhlaaq117sOP91t1\n9fib37p+xVPf7z3YWphJfF439ETXj6bceMf536x79vbFvx97RFPk66f4fRQA9sgE0E0sGVSu\nadpJ967NLZlzUDDQ5xLTNNOxT3obum+/+ne3J62nWr5YNdjnEkKc92GDaZqzh1a4fIes3hrL\nrfvEVcOFELf8o+lfbveu6pC3/IfWz3uv82hthRBi1Oy/fPvsWdVCiBe2xU3TnNA34C4d9WE0\nZT31zZpfa5omhNiUzJim+b9PniCE+NPWVuvZHaV+8W2pp88eKIR4uSnRiV0GAD0Mv/oC3Yrm\nfmTK8N0Xf7PuZ1uSmdEP3ze0xGUt8fc9YelPaq2f063v/fL9xtrLHj66wpNb5dQb5wshHvvN\nxx3feEfqOHTfEz87LvfssLOqhBCRTDbe+J8PfdkyZPpvBvt2fFBQecTU6/uX7O216t7/uO7Y\n3MNB9X2FEC1ZvroHAHtEsAO6EyMwvLernbHd8uoGIcQ5IyvbLhw4YYT1Q7zx2YxpvnPnkVob\n7tDxQojmd5o7vvWO1HH6Dt3f+LZDzbnj8+LY1seFEAPP6t+24Imjeu31xY7sZ+i7lwIA7Anf\nsQO6E83hb3e5w+kQQvz/L90Jh6ds50+GEOKwmUvuOOGAXVZ0B9u5/7dHHaijaa52VzWzid0X\n7j2raZpnL88CAHZHsANU0Ou4AUK8sfythnF1/XILN6/6u/WDp/xUXZuebhp80knH5J5Nxz78\n01Nv9xnm6/hW8qnjKTtRiEf/+fjnYmhFbuFfX9/a8a0DAP4lPooFVFB5+K29Df2F8Vd+FE1b\nS5LNb186c531s9NTM3tI+SdLx6/a3Jpb5dGpp5177rmfdeYakE8dX+/xp1V635s39Z+xHR02\nvrP4hn/u+kGwaXaiHwDALrhjB6hA9wx4cd6Ph03744gBR194wcm9xdcrf7e0+ajzxHNLrP9h\n+jMLFw86/5SBh55+zpgjDi5/96XHlr748WEXL72wdyfu2OVVR3M+8Pzc2qNmDKv9waTxo91N\nnzyyeHn9kZVPvv6Nz6EJIVwlLiHEb+99IHHIkeedM6orewEAejzu2AGKOPyKFf+zbM5R/Rr/\nsPBX85c+N/C8eev/Y0bu2UD/s9avXzlxdP9XHn/whl/O//s35Tctfnbdkgs6u5V86lSOnP7J\nuuV1A6NL7/zlw89/NG35m1PLvZruLdU1IUTvUbf9aORBr8y5asatz3e2KwCARTP55ANAIZhr\n164zgoMOq/n2rzh5YHDFtK1HtzasLGJbAKASgh2AAjkq6PkgOLX5szuth+nW96vKDzdGP/W/\nT51a3MYAQBl8xw7o0TY88aMRE/+6l//BHTx+84YnpWzr/uuPHzHzrmMv9k45ZYQW+Wz5XTdv\nzpQs/+33pRQHAAju2AEopKcXXHPLA3/+4NMNaXf58GNOunL2vHH/tre/oxgA0CkEOwAAAEXw\np2IBAAAUQbADAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAA\nABTxf5OOztMEuOJOAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(cyclistic_without_outliners, aes(x = weekday, y = ride_length, fill = member_casual)) + geom_boxplot() + \n",
    "facet_wrap(~member_casual) + coord_flip()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7efce73f",
   "metadata": {
    "papermill": {
     "duration": 0.184172,
     "end_time": "2022-02-25T04:42:44.419791",
     "exception": false,
     "start_time": "2022-02-25T04:42:44.235619",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**5. MONTHS**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "81c57aba",
   "metadata": {
    "papermill": {
     "duration": 0.188299,
     "end_time": "2022-02-25T04:42:44.795302",
     "exception": false,
     "start_time": "2022-02-25T04:42:44.607003",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "What are the seasonal trends of bike rides?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "c8d0ae4d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:42:45.170518Z",
     "iopub.status.busy": "2022-02-25T04:42:45.168801Z",
     "iopub.status.idle": "2022-02-25T04:42:45.451940Z",
     "shell.execute_reply": "2022-02-25T04:42:45.450072Z"
    },
    "papermill": {
     "duration": 0.471122,
     "end_time": "2022-02-25T04:42:45.452105",
     "exception": false,
     "start_time": "2022-02-25T04:42:44.980983",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 12 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>month_year</th><th scope=col>total_rides</th><th scope=col>casual_member_percent</th><th scope=col>annual_member_percent</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>01-2021</td><td> 96834</td><td>18.70934</td><td>81.29066</td></tr>\n",
       "\t<tr><td>02-2021</td><td> 49622</td><td>20.41635</td><td>79.58365</td></tr>\n",
       "\t<tr><td>03-2021</td><td>228496</td><td>36.77657</td><td>63.22343</td></tr>\n",
       "\t<tr><td>04-2021</td><td>337230</td><td>40.50678</td><td>59.49322</td></tr>\n",
       "\t<tr><td>05-2021</td><td>531633</td><td>48.32582</td><td>51.67418</td></tr>\n",
       "\t<tr><td>06-2021</td><td>729595</td><td>50.80641</td><td>49.19359</td></tr>\n",
       "\t<tr><td>07-2021</td><td>822410</td><td>53.75129</td><td>46.24871</td></tr>\n",
       "\t<tr><td>08-2021</td><td>804352</td><td>51.30478</td><td>48.69522</td></tr>\n",
       "\t<tr><td>09-2021</td><td>756147</td><td>48.12424</td><td>51.87576</td></tr>\n",
       "\t<tr><td>10-2021</td><td>631226</td><td>40.75276</td><td>59.24724</td></tr>\n",
       "\t<tr><td>11-2021</td><td>359978</td><td>29.70432</td><td>70.29568</td></tr>\n",
       "\t<tr><td>12-2021</td><td>247540</td><td>28.17242</td><td>71.82758</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 12 × 4\n",
       "\\begin{tabular}{llll}\n",
       " month\\_year & total\\_rides & casual\\_member\\_percent & annual\\_member\\_percent\\\\\n",
       " <chr> & <int> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 01-2021 &  96834 & 18.70934 & 81.29066\\\\\n",
       "\t 02-2021 &  49622 & 20.41635 & 79.58365\\\\\n",
       "\t 03-2021 & 228496 & 36.77657 & 63.22343\\\\\n",
       "\t 04-2021 & 337230 & 40.50678 & 59.49322\\\\\n",
       "\t 05-2021 & 531633 & 48.32582 & 51.67418\\\\\n",
       "\t 06-2021 & 729595 & 50.80641 & 49.19359\\\\\n",
       "\t 07-2021 & 822410 & 53.75129 & 46.24871\\\\\n",
       "\t 08-2021 & 804352 & 51.30478 & 48.69522\\\\\n",
       "\t 09-2021 & 756147 & 48.12424 & 51.87576\\\\\n",
       "\t 10-2021 & 631226 & 40.75276 & 59.24724\\\\\n",
       "\t 11-2021 & 359978 & 29.70432 & 70.29568\\\\\n",
       "\t 12-2021 & 247540 & 28.17242 & 71.82758\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 12 × 4\n",
       "\n",
       "| month_year &lt;chr&gt; | total_rides &lt;int&gt; | casual_member_percent &lt;dbl&gt; | annual_member_percent &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| 01-2021 |  96834 | 18.70934 | 81.29066 |\n",
       "| 02-2021 |  49622 | 20.41635 | 79.58365 |\n",
       "| 03-2021 | 228496 | 36.77657 | 63.22343 |\n",
       "| 04-2021 | 337230 | 40.50678 | 59.49322 |\n",
       "| 05-2021 | 531633 | 48.32582 | 51.67418 |\n",
       "| 06-2021 | 729595 | 50.80641 | 49.19359 |\n",
       "| 07-2021 | 822410 | 53.75129 | 46.24871 |\n",
       "| 08-2021 | 804352 | 51.30478 | 48.69522 |\n",
       "| 09-2021 | 756147 | 48.12424 | 51.87576 |\n",
       "| 10-2021 | 631226 | 40.75276 | 59.24724 |\n",
       "| 11-2021 | 359978 | 29.70432 | 70.29568 |\n",
       "| 12-2021 | 247540 | 28.17242 | 71.82758 |\n",
       "\n"
      ],
      "text/plain": [
       "   month_year total_rides casual_member_percent annual_member_percent\n",
       "1  01-2021     96834      18.70934              81.29066             \n",
       "2  02-2021     49622      20.41635              79.58365             \n",
       "3  03-2021    228496      36.77657              63.22343             \n",
       "4  04-2021    337230      40.50678              59.49322             \n",
       "5  05-2021    531633      48.32582              51.67418             \n",
       "6  06-2021    729595      50.80641              49.19359             \n",
       "7  07-2021    822410      53.75129              46.24871             \n",
       "8  08-2021    804352      51.30478              48.69522             \n",
       "9  09-2021    756147      48.12424              51.87576             \n",
       "10 10-2021    631226      40.75276              59.24724             \n",
       "11 11-2021    359978      29.70432              70.29568             \n",
       "12 12-2021    247540      28.17242              71.82758             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    group_by(month_year) %>%\n",
    "    summarize(total_rides = length(ride_id), \n",
    "              casual_member_percent = ((sum(member_casual == \"casual\")/length(ride_id))*100),\n",
    "              annual_member_percent = ((sum(member_casual == \"member\")/length(ride_id))*100))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "a31d0409",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:42:45.839265Z",
     "iopub.status.busy": "2022-02-25T04:42:45.837643Z",
     "iopub.status.idle": "2022-02-25T04:42:52.726143Z",
     "shell.execute_reply": "2022-02-25T04:42:52.725363Z"
    },
    "papermill": {
     "duration": 7.085263,
     "end_time": "2022-02-25T04:42:52.726281",
     "exception": false,
     "start_time": "2022-02-25T04:42:45.641018",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(cyclistic, aes(x = month_year, fill = member_casual)) + geom_bar() + coord_flip()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "da87cb6a",
   "metadata": {
    "papermill": {
     "duration": 0.190845,
     "end_time": "2022-02-25T04:42:53.106445",
     "exception": false,
     "start_time": "2022-02-25T04:42:52.915600",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Observation: \n",
    "1. Months between May and October observe highest bike rides which implies that bike rides are least prefered during the winters.\n",
    "2. The trend is same for both casual and annual members"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "78e5bdb7",
   "metadata": {
    "papermill": {
     "duration": 0.187875,
     "end_time": "2022-02-25T04:42:53.484081",
     "exception": false,
     "start_time": "2022-02-25T04:42:53.296206",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**6. HOUR**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "57ad1ff7",
   "metadata": {
    "papermill": {
     "duration": 0.189911,
     "end_time": "2022-02-25T04:42:53.863515",
     "exception": false,
     "start_time": "2022-02-25T04:42:53.673604",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "During which hours is bike riding most prefered?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "f807e3ff",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:42:54.250543Z",
     "iopub.status.busy": "2022-02-25T04:42:54.248843Z",
     "iopub.status.idle": "2022-02-25T04:42:59.490671Z",
     "shell.execute_reply": "2022-02-25T04:42:59.489217Z"
    },
    "papermill": {
     "duration": 5.435007,
     "end_time": "2022-02-25T04:42:59.490833",
     "exception": false,
     "start_time": "2022-02-25T04:42:54.055826",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIpFd0gsAWKY1XzC5/AY9\npc3KbtM2YWK11gMs1RyxAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiMQSCLvu\nWTM7C8XBv1wAgLhlB/nyuqc/dtDB3/rElTcfNrpxUWcUHr71inse+fPrbZm11/vY/l87YFxD\nNoTwzmOnH3LeX+fe7sDrbt9lZF3iJQMALB0GNeyKha4rTrm4LZ/ocN1Ld54x5bZX9z7q6AOH\n99979eWnf733pquPSocw68lZ9SM/f+wh6w5suUpzTeIlAwAsNQY17J64/vQnWj4Z3vn5oo8o\n9l5427Or7fmd3bZbLYSw+vmp3fY9/6Y39t9npcZ3n5nTus4WW2yx7gJnAABEafCeYzf773ed\ne1/3N878ytxnFvtn/Piqbx1z2AFf2X2vr5367Qefm/lv3y32vPLK63Of0zP7kde689tvv1Lp\ny9rWrTZqyj3+8NshhCfn9AzfqDXfNeftd2d5Bh8AsAwapCN2hd63zvnGTTuefPUaDZm5z7/x\n1OPu61r30EOOHzss9dxj915yymH5K67/zJiG0nfz3S8fd/x5d991w8D2vR1PhRDWafjX31g/\n3JC976nZYa/wRHtf8beX7H7pc33FYrZxuR2+euxhn99gYLM333xz9uzZpdOpVGr06NGVLDuV\nSpX+m80muqGqNSedTldxTggh4ZxMJjNwonQdE64nk8kUi1XI8nQ6nfCqVWtO6WZJPmco7/qB\nmQnnJFnP3AMj2/UVqtalDNqcgT2ezWaT3HsM/Gx8u35h/6/v7+9PcnFEY5DC7hfnf2PWxkcd\nvMmoYv5fx+S6p//0zhdmn3Pz8es11oQQVltzvfwf9rr1yr995qxN5zen0NMRQhiZ/dcDyaia\nTH97d773jfZMzaqjtvj2TZNbi21/+Pm1F1xzRu0aP9x/7dbSZldcccV9991XOj18+PD777+/\n8sXX1tbW1tYuzNWdt5qamtbW1uRz0ul0VeaEEKo1Z9iwYVWZ09TUVJU5DQ0NDQ0NyecMtV2f\nyWSqMieVSlVr17e0tFRlTnNzc1XmVGvX19XV1dVV4aVXuVwul8uV36Yn+cWE0NraOtTmVLhl\ntXZ9Y+MivyDv39TX19fX1yefM/j3Hu+9917yiyMCgxF27/7+8uueHX3V9Z/8j/Pb//nnYrF4\n2p7/9sfZxv43QnHj7p6+EEJ/d08Iobu7u/St2rq6dK4+hDCzv9D0wb/2pvflM625TG6l22+/\n/YMZtVuPP+mF+x7/1fef3v87Wy22qwUAMLQMRthN+81TvW1vHfiVXQbOuffQPe9v/Mj3z6pL\nZRpvu+W6uTdOpWs6p92yx8EDlRZ233330omLbv/JmMb1Q3jk+a7+sbXvh92LXf0tW83jXzMb\nrVD/wIxpA18eeeSRe+211/sXkUrNmjWrkpU3NzdnMpmenp6urq6Krup8NDQ05HK5vr6+jo6O\nJHNKRxEKhcKcOXOSzMnlcqWjGhXeDvOTzWZLx9jmzJlTKBQWeU46nS4d82tvb0/414SWlpZU\nKtXZ2dnb25tkTrV2fWNjY01NTfJdX19fX1tbm8/n29raksypra2tr68vFosDz0xYNDU1NaUD\nJLNnz07y1/NMJlM6YNPW1pbP55MsqXRUI/muHzZsWDqd7u7uHvgn5aJpamrKZrO9vb2dnZ3l\nt6zC0aEQZs2aNdTmlN+gWrs+lUqVDht3dHT09fUt8pzwwb1HV1dXT0+io5ZD7d6DZc1ghN1q\n+5524Zfe//+tWJhzwomTtjz9nN2WH9kw6s1Q+ON9M/K7jCkdQi9e+41TZm11zPE77D116t4h\nhP6u53bd69+eYxdqPzUmd9Uvf/vudjuPDSH0dTz5x7beL283etYLl59w/jPnXHHp6Fzpr7SF\nX7/Z2brxmgM/N2bMmDFjxpROFwqFGTNmVLLy0iNWsVhMWBvVmlOKp+RzBp6xkXDOwLNb8vl8\nkrvmgSdp5fP5qjxNpFAoDJE5pV2ffE61dn1NzfvPT004Z+5dlqTpB6KwWrt+6PwKVWvXV6ha\nlzL4c/r7+xOGXelEfLu+Wv/Xs6wZjLCrW2GV1Vd4/3TpOXatq4wbN7oxhDEHbzjyhpPPrjt0\n17VXanry/mvveXb6mScvX25WKnfirmtPuH7SAyuetO7wvqmXf7dhxU/vu3JT6B8/svPwkydd\nffRXt21NdT1+/48e6WieePCa5UYBAMRlsD954j/sPHFKz/cuu+Oqb8/sq1l53AbHn3f6hk0L\neFfh1ceffWTPRbdOmTi9O7XaR7Y5e/Ih6RBCdtRZl3/zuqtuuuTsM7ozzePWWO+kKZM2WtAo\nAICYDHbYpTLDp06dOteXLbsecfquR8x742z92v/2d9gPfmb7/U7Yfr//PLt2+LqHn3ru4VVc\nKwDAUmXw3qAYAIDFStgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEYgm/QTHAUqr5gsll\nvlsIoSeEVAjNZYe0TZhY3VUByzhH7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAikV3SCwAgTs0XTC7z3Z4QQggNZSe0\nTZhYxfXAssAROwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEj4\n5Alg2VL+4xD6QgghZEJoLjvEJyIAQ5MjdgAAkXDEDlg6VPLBo7kQcmWHONIGxM0ROwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASPhIMWDxquSjwOrL\nTvA5YAAVcsQOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEtklvQAAqqBup/HJh0xLPgJYohyx\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIachkx6jT0fWdKrWDKmrDa8YeTOi/azwg4AIBLCDgAgEsIOACir2NvT\nXxyi0xak0D8rP2gXNgQIOwBgHm798KiWVSb+3/eOX7mlqT6XaV1+3N6n/bAQwp+uP3mjVVeo\nr2360Dofn3TLM3P/SPurjxy3xw7/s1xrbeOItTfa9ptX/7yQYFoI4akfn7fN+qs05mpHrbT2\nnsd+943efCWXdd1aI4evNqVn1h/3/uQ6TbUj2vML7si3fnfT7tt/dGRzXUPLcpvttNcd/zdt\n4FvPTr18l09uPKqlMZurX3G1DfY76ZIZH4Rpoe+9y085cIPVRtfV1AwbOfbT44/5/XvdpW+d\nNHbYsLEnzX0RT35zk1Qq9UpPfoFjk8gmHwEARKnz3Zu2OnrmXsd94+Nja6decd5N5+33/Es/\n+NuDnccff8a++ZcvPufSyft8dLvPzdpqWC6E0PHm3Rt+ePfXUivtdcAhq4/K/OXhOyYd/rm7\nH73uiRv2X4RpIYRpf5648e2Pbrfbfid8sfkvv/7xrZec+MAjL772+FX16QVfVqF/xn4b7jh9\n633OveSY+nSq/NV8+7dnr/HJM4ujNt33sJOXz8y46wff32PL++Y8//JBHxr2+r1HrbfLlcPW\n2ubgr508Itf/zO/u+uEFxz725mov/OhzIYSLPrvhiQ++/anxh+528Ng5r/3pqmsu3+43r818\n4+6aBVxgKD82CWEHAMxbf/dLJz74xgXbjgkh7LfXuvUjd37i7r//+u2XtmytDSF8YbW/rP7V\nX136z7at1hkZQvjOZw5+LbX6r1/78+Yj60IIIXzr7hM2+tKFB5xz5pdOH9eysNNCCLNf+PUJ\ndz3/nS+tGUIIxfOvO3KjA6+6eu+fnXrnF1ZZ4GW1vX7OrEv+dP/RGy/4ShZ79/nCOYXWz/z5\nH1PXbqwJIZx68q4rjd72jK/+/KDH9njo5NvTtWP/8uQD/1ObCSGEMHm5lYdddd/VIXyuv+uF\nCQ++OXbHHz94y5dLk77cvOUXrvvdXe91jV+uvvxllhlb6b6ZD3+KBQDmraZh7VKHhRDqRnyu\n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\nX7FY+OTwurl/qrX3+RB2ruTHS47eceWB03sdusaFE2+f9VxTmbGr779OVa/lYiTsAIChaR5P\nGKtpqU9nW2fP+ufcH5CQSucq/PH//kZuRC6Vrik/dtiIec4fioQdAENa8wWTy3y3J4QQQm0I\ntfPfpm3CxOouiSWoZdwhxfzUq9/sO2GN1hBCCMUTt9v67fE/+NEha1U+5PIH3vz0rh8qnb7l\nu8+2rHlBy7jlko8dCoQdALDUqBvxuSnbr3TqVl9ouuTUzdccfv8PTrz4d2/8/I5VF2rIPftu\n/+3uKZ9evfGRG8+Z9Nc5Fz39xboRw5OPHQqEHQCwNPnazx7vPObQc4/c/e2e2rU3+tSNj9y9\n/fAyR2z/Uya34i8v3O3kbx5y5uvdq2+4yQV3PX3Mh4cnHztECDsAYEh4s6d/4PTID9/Z1/Wv\nbx3x4owjPjidrln+1CvvPvXKRfnxhhUO6u85KITwf4ef9x8/Pr+xM/qWps8f8z52AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR8D52AMA8zNlkgyW9BBaasAMA/lNzc/OSXgKL\nwp9iAQAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACLhDYohkeYLJpf5bjGE\nntJmZYe0TZhYxSUBsMxyxA4AIBLCDgAgEsIOACASnmMHUSn/nL/gOX8AUXPEDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLZJb0AIIQQ\nmi+YXH6DntJmZbdpmzCxWusBYGnkiB0AQCSEHQBAJIQdAEAkBuk5dsX+mT+55upfPPqX6d3p\nFceu8YV9Dt9ho9GLOqzw8K1X3PPIn19vy6y93sf2/9oB4xqyIYR3Hjv9kPP+Ovd2B153+y4j\n6xKvHQBg6TBIYfe/55540zPD9j/0mLXHND714C1XTDqq67IbdhnbtAijXrrzjCm3vbr3UUcf\nOLz/3qsvP/3rvTddfVQ6hFlPzqof+fljD1l3YMtVmmuqdw0AAIa6wQi7fM/rVz3+3jbnfufz\n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\nAIiEsAMAiISwAwCIhE+eAICF4PNvGMocsQMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiER2SS8g\nEs0XTC6/QU9ps7LbtE2YWK31AADLIEfsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACLhs2IBYAmo22l88iHTko8gLo7YAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEwkeKMUiaL5hc5rs9IYQQ6kKo\nm/82bRMmVndJABAZR+wAACIh7AAAIiHsAAAiIewAACIh7AAAIuFVsUNL+ZeOhg9ePdpcdhuv\nHgWAZZMjdgAAkRB2AACREHYAAJEQdgAAkRB2AACRWNZfFVu30/jkQ6YlHwEAkJgjdgAAkRB2\nAACREHYAAJFY1p9jx6BJ/nRGz2UEgPIcsQMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiET56ojuQfqxB8sgIAkIywi1PzBZPLb9BT2qzsNm0TJlZrPQDAIPCn\nWACASAg7AIBICDsAgEh4jh0LUP7peqXn6jWUneC5egAwOByxAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiIS3OxlafOYsALDIHLEDAIiEsAMAiISwAwCIhLADAIiEsAMAiIRXxbIAyV+o\n61W6ADA4hF2cvG0KACyD/CkWACASwg4AIBLCDgAgEoP2HLvCw7decc8jf369LbP2eh/b/2sH\njGtY5Iue36gqXgQAwNJnkI7YvXTnGVNue2yzLx9y5nH7Nv3jwdO/fnWh2qOqeBEAAEujQQm7\nYu+Ftz272p6Td9tu83U32frY84/ueOuXN73RUc1RVbwIAICl02CEXc/sR17rzm+//UqlL2tb\nt9qoKff4w2+HEIr9M3581beOOeyAr+y+19dO/faDz82c+weLxZ5XXnm9klFlLgIAYBkxGM9C\n6+14KoSwTkPNwDkfbsje99TssFe48dTj7uta99BDjh87LPXcY/decsph+Suu/8yYhtJm+e6X\njzv+vLvvumGBo3o/Od+LKLn11luffPLJ0umGhoaTTz65ilewubnZnKVoThVHmbN0zaniKHOW\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(cyclistic, aes(x = hour, fill = member_casual)) + geom_bar() "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "5b9b4ebe",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:42:59.885110Z",
     "iopub.status.busy": "2022-02-25T04:42:59.884496Z",
     "iopub.status.idle": "2022-02-25T04:43:16.617465Z",
     "shell.execute_reply": "2022-02-25T04:43:16.616890Z"
    },
    "papermill": {
     "duration": 16.932194,
     "end_time": "2022-02-25T04:43:16.617604",
     "exception": false,
     "start_time": "2022-02-25T04:42:59.685410",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\npYgcc8T0cNf+z9//rydXLNs9ERSRL035+7Zfe+ym/yb3mNYlItd+9sS3tG2ffOtvn+wKiYjI\nt+8/b8ZB1x935bcOumRye6OliUjv60+e94vXrj1oqohIZcGdp884/rbFR/7m4p9/aeuN1pV8\n+8qeRc/+/szdNt7JSv6oL11ZTnz2b//36x2ipohcfOEhEzf/zNyvPXjCn7/6+IX3BYKT/v7C\nIx8Iqo9zL9tkq7bbHl4s8sVi5vULHn1n0ud+9ujdX1ElfSW++5fu/OMvVmVmb7KRP8WpU+xA\n58YDH8UCAIDazMgOKg8TkVDnF+N6YMJON6g8TEQ2mbmniGQKZREppv95+cvdO5z2w3WZlojI\nF+bdKCL33vp6o6UpsS1OXpvViYhmHLXwlxE98Id5TwykLtGCPzrlQwPpY3L5wkfWZD+84EaV\n1YlIqHOv+2/97v87YYKIHPLUa++98/K69Esq5VSuUqmU0iKiBcKWJj2v/OLZt9f+vfknF/zx\n/fff32hWV7/YIeKMHQAAqC1gdDn/aWgS3KTD/qcWWH/BxWz3Q6VK5R/XfUy7zl1I7z96Gy1N\n6dj5kA0eH9r2i52hB9/7Q7b7/Y3WZcU+tKk5oLNXfW88LiK7f2YzZ3DPE07bU0REIonO7r8+\n/MOHl/7z9f/7z1v/fuXFvy/vyYUSIiJ6cNLvrj5q/2/+z8e2vnvrnT4+8xOf+NRn9jv0kM92\nDuDvQuoUO0QkdgAAYMgClojsPOcO+5ycLdg+oDNn1arzI0MTLRAcSF1aIDrAWsq5sohYHpeg\n//l5+xy68PGJMz5zwKc/sf/unzvvsl2XnzzrzJVr7/3UnB+uPPbi++//zRNLn/rj7+/6ye0L\nv3HuJ+5/6fFZjlOJtkq5MsBih4LEDgAADFWo8wu69vViz/b77TfTDhYzr/7813/ffNfa1+Le\nqO6X7heZZf+zlPv3A6uzbZ/cJ9S5yzDW1TZ1N5Hf//GZVbJ1mx187MLTfry6Y/HCL81e+Pik\nL9z2n9+cbN9157obhf7X/vbPnq5dP/zVk8//6snni8grD10+7Qvzzpn7/Mu3flI12VnRe892\nqxv55NN1ih0ivmOHUSH0+dnV/7W6UQCAgTJC286f1vnGj495dMX6L4rdfcaXDz/88LcGm2v0\nv3PLN3+7bN2/Sj85/8v9pfKXF+w+vHW1bX3xrjHrL2ef/2Z2bR6W7/3z0Tfe/ptnNi2mXy1V\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#hours and weekdays\n",
    "ggplot(cyclistic, aes(x = hour, fill = member_casual)) + geom_bar() + facet_wrap(~weekday)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fed9b677",
   "metadata": {
    "papermill": {
     "duration": 0.196668,
     "end_time": "2022-02-25T04:43:17.012594",
     "exception": false,
     "start_time": "2022-02-25T04:43:16.815926",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Obseravtion: \n",
    "1. Bike rides are prefered during afternoon.\n",
    "2. This trend is same for all weekdays.\n",
    "3. Casual members ride during weekends while annual members during business days."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0004a4ff",
   "metadata": {
    "papermill": {
     "duration": 0.198113,
     "end_time": "2022-02-25T04:43:17.405330",
     "exception": false,
     "start_time": "2022-02-25T04:43:17.207217",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**7. RIDEABLE TYPE**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a200e404",
   "metadata": {
    "papermill": {
     "duration": 0.197186,
     "end_time": "2022-02-25T04:43:17.796887",
     "exception": false,
     "start_time": "2022-02-25T04:43:17.599701",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Does the type of ride also affect the distribution?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "b7c69fe9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:43:18.194247Z",
     "iopub.status.busy": "2022-02-25T04:43:18.192195Z",
     "iopub.status.idle": "2022-02-25T04:43:18.476396Z",
     "shell.execute_reply": "2022-02-25T04:43:18.474561Z"
    },
    "papermill": {
     "duration": 0.483927,
     "end_time": "2022-02-25T04:43:18.476585",
     "exception": false,
     "start_time": "2022-02-25T04:43:17.992658",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 3 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>rideable_type</th><th scope=col>casual_member_percent</th><th scope=col>annual_member_percent</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>classic_bike </td><td>38.96174</td><td>6.103826e+01</td></tr>\n",
       "\t<tr><td>docked_bike  </td><td>99.99968</td><td>3.201608e-04</td></tr>\n",
       "\t<tr><td>electric_bike</td><td>46.75935</td><td>5.324065e+01</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 3 × 3\n",
       "\\begin{tabular}{lll}\n",
       " rideable\\_type & casual\\_member\\_percent & annual\\_member\\_percent\\\\\n",
       " <chr> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t classic\\_bike  & 38.96174 & 6.103826e+01\\\\\n",
       "\t docked\\_bike   & 99.99968 & 3.201608e-04\\\\\n",
       "\t electric\\_bike & 46.75935 & 5.324065e+01\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 3 × 3\n",
       "\n",
       "| rideable_type &lt;chr&gt; | casual_member_percent &lt;dbl&gt; | annual_member_percent &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| classic_bike  | 38.96174 | 6.103826e+01 |\n",
       "| docked_bike   | 99.99968 | 3.201608e-04 |\n",
       "| electric_bike | 46.75935 | 5.324065e+01 |\n",
       "\n"
      ],
      "text/plain": [
       "  rideable_type casual_member_percent annual_member_percent\n",
       "1 classic_bike  38.96174              6.103826e+01         \n",
       "2 docked_bike   99.99968              3.201608e-04         \n",
       "3 electric_bike 46.75935              5.324065e+01         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    group_by(rideable_type) %>%\n",
    "    summarize(\n",
    "        casual_member_percent = (sum(member_casual == \"casual\")/length(ride_id)) * 100 ,\n",
    "        annual_member_percent = (sum(member_casual == \"member\")/length(ride_id)) * 100 )\n",
    "    "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "66ba3357",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:43:18.884178Z",
     "iopub.status.busy": "2022-02-25T04:43:18.882028Z",
     "iopub.status.idle": "2022-02-25T04:43:25.705310Z",
     "shell.execute_reply": "2022-02-25T04:43:25.703848Z"
    },
    "papermill": {
     "duration": 7.029369,
     "end_time": "2022-02-25T04:43:25.705518",
     "exception": false,
     "start_time": "2022-02-25T04:43:18.676149",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd2CU9f3A8e9lTyCAAxQXoCiKexX3wIqIWsWqFBAHblFxD4bgrIoKKE5Uqriw\nWhf9OXBU1Fq1VRHciOJACSMQAknufn8EKVUMByQEvr5ef12ee+77fC4Eefvc3ZNEKpUKAACs\n+TIaegAAAOqGsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiERWQw/wm5NKpWbN\nmrXy6+Tn5+fk5FRVVc2bN2/lV1s9ZWVlFRQUzJkzp6EHqS+JRKJRo0YhhPLy8srKyoYep74U\nFBQkk8mKioqGHqS+5Obm5uXlJZPJsrKyhp6lvtT8rJaVlSWTyYaepb4UFxdnZGRUVFQsWLCg\noWdZQSUlJQ09Ag1P2K1qqVSqurq6TpbKyMhIJBJ1tdpqKCMjIyMjI+InmEgkMjIyQp3+VKy2\nIn6CqVSq5s8x4udY87NaXV0dcdgt/vsY8Z8jvwVeigUAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiERWQw/Aiku89FpDj8CqU/Hs\nQw09worLCKG4oWeoVwtCCP/7HMvO698wowC/bc7YAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEouHD7pjDDrn5m7kr8MC533797cyFS72ra9eud39fvrwLLpj1XNeuXadXJn9twcry97t2\n7fp+eeVyzwoAUP8aPuxW2KsDzx/y4OdLvevAAw9sl59Vh8eq8wUBAOpcbLFSvWBeZm7hKaec\nUrfL1ixYudwnAQEAVp1VF3apqtKxd97+yrsfTZu5sGXrDof26rNvu5J0dqiumDp6+N1vfDD5\nx4rsdtvvfeIZvTbMy7zt2COfLq0I357f7bWOj/zlgmMOO+SY2++afvfQ8R/kjx596RGHHNL5\n9jHHrVOw1MfWPuesj54fdsfDk6bOLFx34993O/nofdqEEGoW7FH8390Wzpk04LTLynfofcOZ\nB2Umlv3sAADq26oLu9EXnTVufvs+J57TqlFi8utP33zhSdW33NOpZcEydmiRM6zv+W/l73B6\n3wElmbOeHHnzxf3C/SOOO/720euefuy4rS66sc/mNQ9/bdigrffodVWv1v89ZKpqqY+tfc4h\nlz9yUJ/ju7fI/WD8w6Nv6lfV8t4e7Zr8bJ+FZZMHntZ/cdUt89k98cQTEydOrLmdn59fJycU\ns7OzV34RoJ4UFRU19Ah1r7CwMJVKNfQU9SUjIyOEkJOTU3NjjTN37oq8W534rKKwq5jxxNiP\nZ1/xwDlbFmaHEFpvumX1m90fvHVip8E71r7Drn3+Pf67qivHnNW+ICuEsNGQOYOvf2VmVaok\nJzcnkcjIysnNXdQ3s9c58aj9Oix50LKvRy39sVmJWkbd9IzBf9x93RBCu/bblU/qPm7Yqz1G\nHLzkDgvnTB50/uXTt+hx209Vt8xn99Zbb40bN67mdklJydlnn71S301gtZeXl9fQI9S93Nzc\nhh6h3mVlZWVlrZFvUhJ21FhFP75zv34nlUpdfPThS24srJoWwo617zDjzUnZRdvWlFkIIa/p\nAVdcccBSD9Fi31Y/25L+Y5fUZbtmi2/v9fsWT9z/agj/E3a3nT0wmZcx94spi/+/dZnPrnXr\n1jvttNOi7YWFlZV18LnazMxlvKYMNKA6+Wu+WsnOzo7vSS0pKysrkUhUV1cnk0u5NgKsKVZR\n2GUV5iQyCx8aM2rJjYmM7GXuMG3sy4mMnHQOUVD88+eSrEyl+dj/OegSt7OKshOJn/fTOp3P\nvaxrZs9jr7hy3GH9D2xVy/CLb/fu3bt3796LpkomS0tLl3eqX4ryhR6IxuzZsxt6hLqUSCSa\nNWtWVlYWcfSUlJRkZmYuWLCgvNwH5ViDraJ3EhSsc0BIlo8rrc5bJPeBKwaMGP/dMndotuNG\nC8v+9WlFdc1uC2aN79Wr1ztz0/q/xhV77DP//m91vfL4VwXr7f2zHY48fIecxjsN7LbpO3f2\n/2h+VTrPDgBgFVhFYZdTvMMJ2zT7ywVDxr369pTPP3r8tgufnDRjn45rL3OHRpuctFOT1KBL\nh7/1/sefTXr71v53Lszbabui7BBCRiLM//6bmTPn/NpBa3lsLf459LKxL/3z04/ee3zkpWOm\nlHfru/NSd9vsqEHbFcy95qpx6Tw7AIBVYNW9RbRL/6ELbh/+yMhrZlZmr79Jh3OuumSb/22s\nX9kh+/xhQ+4ePvqO6/rPTha02brTlad2r9m//SE7L7h72Cnn7vHgXUv/LEIiI+/XHvtrMrJK\nBh2/2z1jhj/w48IWG7fpffHwg1st/RXPREZB3wFH9Ox3x30fduy5Rckynx0AQH1LRPzZ9dVT\nHb7HLv+Nt1d+HdYUFc8+1NAjsBzKzuvf0CPUpZr32JWWlkb/Hrvy8vI19z12zZs3b+gRaHhr\n5NV6AAD4pTXyaj0rY9639w6+adJS78prss/ACzut4nkAAOrKby7sClv0uvrqhh4CAKAeeCkW\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASWQ09ACsutVfHysrK2bNnN/Qg9SU7O7tRo0YzZsxo6EHqSyKRaNasWQih\nrKxswYIFte9ctmX/VTJU3SsuLk4mk/PmzWvoQepLfn5+YWFhMpksLS1t6FmA3zpn7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIpHV0AOw\n4hIvvVbx7EPFDT3GYmXn9W/oEQDgN80ZOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASGQt194fvfDQmL+/PnV66R7XjDwqe8Kb33TY\nc8u162kyAACWS/phl7ql926n3TOh5ouCy24+aO7Ne2/71B4nDHv+ttOyEvU0HgAA6Ur3pdjP\n7v/DafdM2Pe0G//zybSaLSVtr72yz64v33F615GT6208AADSlW7YDen3XNPNL3x+eN8ObVrW\n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\nS8/cUO9jAgCwLLWF3Z577rn49viTt3yrvO0rX765c9NFrzfv3/mwPqf13qvFtkdc0mPSXZ3q\nd0wAAJYl3cudnP/AJ63/dOviqquRVbD50BM2/eyhc+thMAAAlk+6Yffp/KqMnKXtnBGqF3xd\nlxMBALBC0g27I9cq+PS+C6YsqF5yY/WCqRff9UnB2kfVw2AAACyfdMPukpHHLJj18tZbHnjj\n6L++8e6kSf9+84n7b+68VYfnZ1YcfeuF9ToiAADpSPcCxRt0ve3FG7OOPP+2s3s+t3hjZs5a\np974woiuG9TPbABAg5mzfYeGHoHlthy/eWLvviO+Oe68vz/13AeffVOZkbdem63269xpg6Ll\nWAEAWCO4jPAaavmyLLt4oy5Hn9ilnmYBAGAl1BZ22267bSIj952336i5Xcue7777bh3PBQDA\ncqot7IqKihIZiy5c16RJk1UyDwAAK6i2sHv11Vd/upkcN25cRk5udmIVjAQAwIpI63Inqeqy\nJgX5+z/8WX1PAwDACksr7BKZjftt3vTzu9+q72kAAFhh6V6g+LJXn+nw1Rmn3fzEjP/95RMA\nAKwm0r3cSZcjL0mus8GtZx1269l567RYKy/7f4rwiy++qIfZAABYDumGXV5eXggtDzqoZb1O\nAwDACks37J588sl6nQMAgJWU7nvsAABYzQk7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBIZDX0AKy41F4dKzvuNHv27IYeBABYLThj\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\niayGHoAVl3jptYYeAQgVzz60IIQQQnEDD1K/FoRQ2NAz1KuqEKpCyFzlf45l5/VftQckcs7Y\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEYrUIu2MOO+Tmb+bW4YJdu3a9+/vy5X3UglnP\nde3adXpl8tcWrCx/v2vXru+XV9bFjAAAdWy1CLs6d+CBB7bLz1qdFwQAqHNxxsopp5xSHwtW\nLvdJQACAVWeVhl11xdTRw+9+44PJP1Zkt9t+7xPP6LVhXuaSOyycPfmuEfe+/t5ncxYmm7ds\nc8DRp3fruH4IYfo7z478y1OTv/o2Udhs850OOOfkwwsyErVsP+KQQzrfPua4dQqWecRfmvXR\n88PueHjS1JmF6278+24nH71Pm8UL9iheYtQ5kwacdln5Dr1vOPOgzERIVZWOvfP2V979aNrM\nhS1bdzi0V59925XU9fcPAKA2qzDsUlXD+p7/Vv4Op/cdUJI568mRN1/cL9w/4rgld7n3/EET\ninfve1nvpjnVE18edeef++2x45hmVZPOuHxk+26nDji17YIfJg+97vZB6+90TdcNqsonLnX7\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(cyclistic, aes(x = rideable_type, fill = member_casual)) + geom_bar() + coord_flip()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5c39ee09",
   "metadata": {
    "papermill": {
     "duration": 0.202974,
     "end_time": "2022-02-25T04:43:26.111960",
     "exception": false,
     "start_time": "2022-02-25T04:43:25.908986",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Obseravtion: \n",
    "1. There is least preference of docked bikes(could be because the company does not manufacture enough of docked bikes)\n",
    "2. There is more preference for classic bikes(which are also manufactured more in number)\n",
    "3. Any conclusion is not certian based on the bike type."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "96ead4c9",
   "metadata": {
    "papermill": {
     "duration": 0.200008,
     "end_time": "2022-02-25T04:43:26.514834",
     "exception": false,
     "start_time": "2022-02-25T04:43:26.314826",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Guiding questions**\n",
    "\n",
    "● How should you organize your data to perform analysis on it? The data is combined into one file for easy analysis\n",
    "\n",
    "● Has your data been properly formatted? Yes \n",
    "\n",
    "● What surprises did you discover in the data? That tehre are several unexpected factors which makes casual riders different from annual riders.\n",
    "\n",
    "● What trends or relationships did you find in the data? \n",
    "1. There are more annual members than casual mebers.\n",
    "2. Bike rides are preferd more during weekends.\n",
    "3. Casual members use bikes for more duration than annual members.\n",
    "4. Bike riding is preferd during summers and spring.\n",
    "5. Most rides take place in noon and evening across all weekdays.\n",
    "6. Type of ride does not have any direct relation with type of members.\n",
    "\n",
    "● How will these insights help answer your business questions? These insights will help me to find the difference between casual and annual memeners and in turn will help business to derive solutions for converting casual to annual members.\n",
    "\n",
    "**Key tasks**\n",
    "\n",
    "1. Aggregate your data so it’s useful and accessible.\n",
    "2. Organize and format your data.\n",
    "3. Perform calculations.\n",
    "4. Identify trends and relationships."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8764ae2f",
   "metadata": {
    "papermill": {
     "duration": 0.202081,
     "end_time": "2022-02-25T04:43:26.918982",
     "exception": false,
     "start_time": "2022-02-25T04:43:26.716901",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **SHARE**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "23503744",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-02-25T04:43:27.326026Z",
     "iopub.status.busy": "2022-02-25T04:43:27.324327Z",
     "iopub.status.idle": "2022-02-25T04:43:27.336612Z",
     "shell.execute_reply": "2022-02-25T04:43:27.335123Z"
    },
    "papermill": {
     "duration": 0.215423,
     "end_time": "2022-02-25T04:43:27.336763",
     "exception": false,
     "start_time": "2022-02-25T04:43:27.121340",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#The analysis is shared via presentation."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "db9d8da7",
   "metadata": {
    "papermill": {
     "duration": 0.20176,
     "end_time": "2022-02-25T04:43:27.738344",
     "exception": false,
     "start_time": "2022-02-25T04:43:27.536584",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Guiding questions**\n",
    "\n",
    "● Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently? Yes\n",
    "\n",
    "● What story does your data tell? That both members use bikes for different reasons.\n",
    "\n",
    "● How do your findings relate to your original question? I was able to find the differnece between both members which was our goal.\n",
    "\n",
    "● Who is your audience? What is the best way to communicate with them? My audience is my stakeholders. The findings from this analysis might seem complex to them and they might not have the time to understand that. So the best way is to present my insight in the form of presentation with simple and easy to understand derivations and conclusions.\n",
    "\n",
    "● Can data visualization help you share your findings? Yes it will make my analysis easy to comprehend.\n",
    "\n",
    "● Is your presentation accessible to your audience? Yes\n",
    "\n",
    "**Key tasks**\n",
    "\n",
    "1. Determine the best way to share your findings.\n",
    "2. Create effective data visualizations.\n",
    "3. Present your findings.\n",
    "4. Ensure your work is accessible."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2f1a4508",
   "metadata": {
    "papermill": {
     "duration": 0.200882,
     "end_time": "2022-02-25T04:43:28.145008",
     "exception": false,
     "start_time": "2022-02-25T04:43:27.944126",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **ACT**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7eaecde2",
   "metadata": {
    "papermill": {
     "duration": 0.198628,
     "end_time": "2022-02-25T04:43:28.544306",
     "exception": false,
     "start_time": "2022-02-25T04:43:28.345678",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Guiding questions**\n",
    "\n",
    "● What is your final conclusion based on your analysis? Both members use bikes for different purposes which has direct relation with their membership. The casual members use bike for longer duration for liesure activitees whereas the annual members use it for lesser duartion as they are follow a fixed route for commuting to work.\n",
    "\n",
    "\n",
    "● How could your team and business apply your insights? The insights can be applied to undersatnd the difference between the type of customers they will be addressing and devise effective strategies based on these findings to acheive the business goal.\n",
    "\n",
    "● What next steps would you or your stakeholders take based on your findings? The next step will be use the findings of this analysis to make marketing strategies with an aim to convert casual members to annual members.\n",
    "\n",
    "● Is there additional data you could use to expand on your findings? No\n",
    "\n",
    "**Key tasks**\n",
    "\n",
    "1. Create your portfolio.\n",
    "2. Add your case study.\n",
    "3. Practice presenting your case study to a friend or family member."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5c1c5b65",
   "metadata": {
    "papermill": {
     "duration": 0.204057,
     "end_time": "2022-02-25T04:43:28.950741",
     "exception": false,
     "start_time": "2022-02-25T04:43:28.746684",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**TOP 3 RECOMMENDATIONS**\n",
    "\n",
    "1. Since the casual members use the bikes for liesure purposes, the focus of the marketing campaigns should be to address the benifits of riding bikes for work purpose as well - promoting environment-friendly habit.\n",
    "2. The marketing team should highlight the health advnatage of riding bikes on daily basis - thereby addressing the business goal.\n",
    "3. A strategy needs to be devised to prevent revenue loss during winters.(Attractive offers etc)  "
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 358.134425,
   "end_time": "2022-02-25T04:43:29.463654",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-02-25T04:37:31.329229",
   "version": "2.3.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
