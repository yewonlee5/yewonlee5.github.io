# Dataset
Data has been retreived from Stanford AI Lab(https://ai.stanford.edu/~amaas/data/sentiment/). This dataset consists of 50,000 movie reviews with binary sentiment classification(25,000 for training an 25,000 for testing).

# Methodology
As the reviews were already processed into bag of words formats and provided, what I did for pre-processing the data was checking the length of the samples and padding. I used 4 methods to fit the models to data -- Simple Recurrent Neural Network (RNN), Gated Recurrent Unit (GRN), 1D Convolution Neural Network (1D CNN) and Multi-Kernel Convolution Neural Network (Multi-Kernel CNN) and compare the accuracy rates from each model to see which model has a highest accuracy rate.

# Results
The model using simple RNN has the lowest test accuracy of 0.7965 and the model using 1D CNN has the highest test accuracy of 0.8885. The models using GRU and Multi-Kernal CNN have similar test accuracy rates with 1D CNN's, 0.8830 and 0.8836, respecitvely. Also, 1D CNN model shows the significantly least training time among three the models having similar test accurac rates.
