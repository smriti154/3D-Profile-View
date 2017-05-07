# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

print("This line will be printed.")



dataset = 'Senior Software Test Engineer Person should have very good hands on experience on Selenium. Person should have some experience on overall Selenium framework as well so that he is aware how the entire test automation process work on top of Selenium. Experience on Protractor test would be a plus. End to end automation experience. Person shoud be flexible to jump to do manual testing on need basis. Person may also need to guide junior manual QA.'
import re
import nltk
nltk.download('stopwords')
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
corpus = []
review = re.sub('[^a-zA-Z]', ' ', dataset)
review = review.lower()
review = review.split()
ps = PorterStemmer()
stop = set(stopwords.words('english'))
review = [ps.stem(word) for word in review if not word in set(stopwords.words('english'))]
review = ' '.join(review)
corpus.append(review)