# Image-clustering
Three different approaches to measure images similarity

# Description
Measuring similarity between images is pivotal to many applications, including tomographic reconstruction, classification, quality evaluation and registration. 
Here we propose an algorithm to measure the similarity between series of images by using three different approaches: _normalised cross-correlation, structural similarity (SSIM)_ and _correntropy_.
The measurements span from a minimum of 0 (totally different images), up to 1 (perfect match). These values are saved into an output variable and graphically represented on a 2D matrix, having the similarity values expressed in grayscale. 
The coordinates (rows and columns) of the pixels represent the compared images. As a consequence, the matrix have all whites (ones) on the main diagonal, where the images are compared to themselves. 
In order to pool the images in classes according to similarity, it is possible to threshold the similarity values, binarising the output: 0 for the absence of similarity, 1 for images belonging to the same class. 

# Implementation
The algorithm is written in Matlab and receives the images in input, which are later converted into a 3D matrix. Then, all the images are converted into black and white and normalised. Then, the functions modelling the three different similarity algorithms are called, receiving in input the stack, the threshold value and producing in output the similarity matrix.
The single functions contain the algorithms to actually compute the similarity between two images and have a few variables to be tuned by the user.
  
  
## How to cite:
@InProceedings{Marchello_cluster,  
  author = {Marchello, Gabriele},  
  title = {Image clustering},  
  year = {2020},  
  publisher = {GitHub},  
  journal = {GitHub repository},  
  howpublished = {\url{https://github.com/GabrieleMarchello/Image-clustering/blob/master/README.md}},  
  commit = {4f57d6a0e4c030202a07a60bc1bb1ed1544bf679}  
}
