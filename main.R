install.packages('aws.s3')
library("aws.s3")

# NOTE: read system environment again if session token expires 
readRenviron("~/.Renviron")

bucketlist()

# get objects from buckets on the research gateway AWS account
get_object("s3://rg-mgbrctdemo-ez957s3bucket-b5d/framingham.csv")
s3load("framingham.csv", bucket = "rg-mgbrctdemo-ez957s3bucket-b5d")

# get objects from buckets on the MGB AWS acccount 
get_object("framingham.csv", bucket = "ez957-test0")
# save file locally
save_object("framingham.csv", file = "/home/ez957/framingham.csv", bucket = "ez957-test0")
# import dataset 
data <- read.csv("/home/ez957/framingham.csv")
class(data)
retval <- subset(data, age == max(age))   #This willextract the details of the student who secured highest marks 
View(retval)
