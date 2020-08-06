#==============================================AI Brain section by arnab=================================================== 
#=============================================the project for creating a sentiment analyser================================
from textblob import Textblob
print("This is a AI and under the colllaboration")
text=input("Write your feelings here ")
obj=TextBlob(text)#creating a object for the sentiment
#======================================SENTIMENT CALCULATION FOR THE OBJECT========================================
sentiment=obj.sentiment.polarity 
print(sentiment)
#now let us do it
if(sentiment<0):
  print('please dont be so much sad the life is like this nothing to do ')

else:
  print('Good i wish you that you are always cheerful in your life')
#==============if the sentiment is negative its is sorrow and if positive then it is a good feeling=================

#============================================this is arnab maiti section=============================================
#=============================================this is below section is Arghya's one===================================
