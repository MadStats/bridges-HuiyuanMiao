
total = read.csv("2014_bridge.csv",header = TRUE)

subdata = total[,c(1,2,9,67,68,69)]
lack_zero_state = which(subdata[,1]<10)
subdata[,1] = as.character(subdata[,1])
subdata[lack_zero_state,1] = gsub("(.)","0\\1",subdata[lack_zero_state,1])
lack_zero_county1 = which(subdata[,3]<10)
lack_zero_county2 = which(subdata[,3]<100 & subdata[,3]>10)
subdata[,3] = as.character(subdata[,3])
subdata[lack_zero_county1,3] = gsub("(.*)","00\\1",subdata[lack_zero_county1,3])
subdata[lack_zero_county2,3] = gsub("(.*)","0\\1",subdata[lack_zero_county2,3])
subdata$fipscode = paste(subdata$STATE_CODE_001,subdata$COUNTY_CODE_003)
