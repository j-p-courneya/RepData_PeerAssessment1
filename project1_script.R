#set the working directory "git init'd"
setwd("~/Desktop/Coursera/ReproducibleResearch/RepData_PeerAssessment1")
#unzip the data files
unzip ("activity.zip", exdir = "./")
#read the data into R
activity <- read.csv("~/Desktop/Coursera/ReproducibleResearch/RepData_PeerAssessment1
                     /activity.csv")
#find total steps per day
activity_totalsteps <- aggregate(steps ~ date, data = activity, sum)
#mean steps per day
activity_meansteps <- aggregate(steps ~ date, data = activity, mean)
#median steps per day
activity_mediansteps <- aggregate(steps ~ date, data = activity, median)
