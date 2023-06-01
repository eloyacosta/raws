install.packages('aws.s3')
library("aws.s3")

Sys.setenv("AWS_ACCESS_KEY_ID" = "ASIAYCBRLCLSNPDLUCPB",
           "AWS_SECRET_ACCESS_KEY" = "7yd7GpMYGB85jcxk2njrOK7sl+nIl/Zow1zEpuZS",
           "AWS_DEFAULT_REGION" = "us-east-2",
           "AWS_SESSION_TOKEN"="IQoJb3JpZ2luX2VjEIz//////////wEaCXVzLWVhc3QtMSJHMEUCIHMPjY1s0GHVHP7avHttIDmooZnMHerjMpe9Nd5hAFxTAiEAlFc5IzaSAo4kB0D0oc6k5I5Py998e3oJJGOikygdH1wqhgMIxP//////////ARAAGgw1NTQxNTQyNjczNjQiDHou7I2fjxQnxBaYnSraAioHCb617QQwqieMxrU/tkL/53BuXdZdetOcUjk44SxCCspYsgb7yp+s+Gmz1kxhN1PJtQwUOLJ1WmS1I2PpRKNv67zo8FyFIld/b5sb+hu8osKJHFKH2OYSi3WPPJhgEkUNLwx5bIAZQ/xbxSrw9pEqMeOA+VpwdNkH1Fnt9GvnMlbHG1hbo994/JCP3P5y7kobPpepFVOGyT0Rayjvt5I/XQkVPGutNsD13rZQtiCTux/TTzytblahioVKsjJYN/g1q91/ANAEM9/9Htk18Y9u1RGMEZ+DAuhI4fkuAsZt7/MhjFi3VKxyRHkPSiXo3SWPBuVwbNR+cx/Oz0LuIupga6PtgBzQj0MrMPGOaWg+9DZazrZgJQ+WLkRWZu4VzXklT/Zr1EXnhJ7Ri2JpmZ8lym0mUxzfgHbAmbm+TESh4F/P0FV4Kr2uW8CwlYnFFRiK0sZaXJxuR2Iwkt7jowY6pwGbOYnc4vFRuBCxIo2uDmOzAV0IJLQW7Us/u91fhWopJaJxyQ4EVfbQE0OS5ThK0RTfRziJmUwJqzIIGE+BslpN/ndWexDXy+EENjniDXvX3GWc1K7PTjFW9cz6hLXQfM8uuntYkPAkXStWnv75UbXATUWAkTMrAELBqFazF1/t0AZVHMEscppA/hPbA5qxQQ2KAN9v7sgWEvPM71yY1yNQ4S1goYPFXg==")

bucketlist()

get_object("s3://rg-mgbrctdemo-ez957s3bucket-b5d/framingham.csv")
s3load("framingham.csv", bucket = "rg-mgbrctdemo-ez957s3bucket-b5d")

# get object to test access
get_object("framingham.csv", bucket = "ez957-test0")
# save file locally
save_object("framingham.csv", file = "/home/ez957/framingham.csv", bucket = "ez957-test0")
# import dataset 
data <- read.csv("/home/ez957/framingham.csv")
class(data)
retval <- subset(data, age == max(age))   #This willextract the details of the student who secured highest marks 
View(retval)
