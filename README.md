A worked example of collider bias inspired by The Book of Why, Judea Pearl & Dana Mackenzie

Data: results of 100 tosses of 2 coins         
(if you're curious, the coins were both US quarters)

Hypothesis: among all tosses, coin toss results are independent, but among tosses with at least one head, coin toss results will not be independent          
Explanation: restricting to toss result induces collider (aka selection) bias and creates a spurious correlation between coin results 

CoinToss.csv data dictionary                       
Coin1, Coin2: H=Head, T=Tail              
Coin1_h, Coin2_h: 1=Tail, 0=Head          
Toss: 1-100 = toss number                
