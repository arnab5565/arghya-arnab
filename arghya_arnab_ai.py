#==============================================AI Brain section by arnab=================================================== 
#=============================================the project for creating a sentiment analyser================================
from textblob import Textblob
print("This is a AI and under the colllaboration")
text=input("Write your feelings here ")
obj=TextBlob(text)#creating a object for the sentiment
#======================================SENTIMENT CALCULATION FOR THE OBJECT========================================
sentiment=obj.sentiment.polarity 
print(sentiment)
#==============if the sentiment is negative its is sorrow and if positive then it is a good feeling=================

#============================================this is arnab maiti section=============================================
#=============================================this is below section is Arghya's one===================================
