install.packages('aws.s3')
library("aws.s3")

# NOTE: read system environment again if session token expires 
readRenviron("~/.Renviron")

bucketlist()

# get objects from buckets on the MGB AWS acccount 
get_object("framingham.csv", bucket = "ss3sklT-test0")
# save file locally
save_object("framingham.csv", file = "~/framingham.csv", bucket = "ss3sklT-test0")
# import dataset 
data <- read.csv("~/framingham.csv")
class(data)
retval <- subset(data, age == max(age))   #This will extract the details of the oldest patient
View(retval)
