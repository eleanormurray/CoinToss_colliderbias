##################################################
# CoinToss_colliderbias code                     #
# Ellie Murray, July 2018                        #
# Github: /eleanormurray                         #
#                                                #
# Program inspired by                            #
# The Book of Why, Judea Pearl & Dana Mackenzie  #
#                                                #
# Data: results of 100 tosses of 2 coins         #
# Hypothesis: among all tosses, coins independent#
#   but among tosses with at least one head,     #
#   coins are not independent                    #
# Explanation: restricting to toss result induces#
#   collider (aka selection) bias and creates an #
#   spurious correlation between coin results    #
#                                                #
# CoinToss data dictionary                       #
# Coin1, Coin2: H=Head, T=Tail                   #
# Coin1_h, Coin2_h: 1=Tail, 0=Head               # 
# Toss: 1-100 = toss number                      #
##################################################

#load package
install.packages("gmodels")
library(gmodels)

#Read in full dataset
all_tosses<- read.csv("CoinToss.csv", stringsAsFactors = FALSE)

#Create counter for number of heads
all_tosses$heads_count<-all_tosses$Coin1_h + all_tosses$Coin2_h

#Create dataset containing only tosses with at least one head (heads_count ge 1)
some_tosses<-subset(all_tosses, heads_count!=0)


#Compare Coin1 and Coin2 in full dataset
CrossTable(all_tosses$Coin1, all_tosses$Coin2, prop.chisq = F, prop.t=F, chisq = T)


#Compare Coin1 and Coin2 in selected dataset
CrossTable(some_tosses$Coin1, some_tosses$Coin2, prop.chisq = F, prop.t=F, chisq = T)
