# Abstract
This paper focuses on enhancing the recognition of automotive parts by applying Convolutional neural network (CNN) and Siamese neural networks with contrastive loss and triplet loss. Simple CNN model encounters challenges due to class imbalance and the difficulty of learning distinct features for each category. To overcome these limitations, a Siamese neural network with Contrastive loss is implemented. This approach involves utilizing pairs of images and employing two identical models, leading to improved generalization to unseen data and achieving a test accuracy of 70.24%. However, when utilizing triplet loss in the Siamese neural network, the test accuracy remains low. The inadequate performance of the triplet loss model can be attributed to suboptimal sampling methods and a lack of control over the distances between anchors, positive anchors, and negative anchors during triplet selection. Overall, this study demonstrates the potential of Siamese neural networks with contrastive loss for enhancing automotive part recognition, highlighting the need for careful selection of loss functions and sampling strategies in improving model performance.