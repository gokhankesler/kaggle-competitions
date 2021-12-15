# Titanic Machine Learning with Disaster
The sinking of the Titanic is one of the most infamous shipwrecks in history.

On April 15, 1912, during her maiden voyage, the widely considered “unsinkable” RMS Titanic sank after colliding with an iceberg. Unfortunately, there weren’t enough lifeboats for everyone onboard, resulting in the death of 1502 out of 2224 passengers and crew.

While there was some element of luck involved in surviving, it seems some groups of people were more likely to survive than others.

In this challenge, I try to build a predictive model that answers the question: “what sorts of people were more likely to survive?” using passenger data (ie name, age, gender, socio-economic class, etc).

# Data

The data has been split into two groups:

* training set (train.csv)
* test set (test.csv)

The training set is used to build your machine learning models. For the training set,Outcome (also known as the “ground truth”) for each passenger is provided. Model is supposed to be based on “features” like passengers’ gender and class. We can also use feature engineering to create new features.

The test set is used to see how well your model performs on unseen data. For the test set, the ground truth for each passenger is not provided. Mission is to predict these outcomes. 
