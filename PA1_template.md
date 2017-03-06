# Reproducible Research: Peer Assessment 1


## Loading and preprocessing the data

```r
activity <- read.csv("~/Desktop/Coursera/ReproducibleResearch/RepData_PeerAssessment1/activity.csv",
                     stringsAsFactors=FALSE)
```

## What is mean total number of steps taken per day?

### What is mean total number of steps taken per day?

1. Make a histogram of the total number of steps taken each day

2. Calculate and report the **mean** and **median** total number of steps taken per day

```r
activity_totalsteps <- aggregate(steps ~ date, data = activity, sum)
mean(activity_totalsteps$steps)
```

```
## [1] 10766.19
```

```r
median(activity_totalsteps$steps)
```

```
## [1] 10765
```
## What is the average daily activity pattern?

steps_interval <- aggregate(steps ~ interval, data = activity, mean)


## Imputing missing values



## Are there differences in activity patterns between weekdays and weekends?
