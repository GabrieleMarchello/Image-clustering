clear all
close all
clc

my_folder=pwd;     		% Current folder
file_patt=fullfile(my_folder,'*.png');    % load all .png images in the folder

%% Save, align and size the images

pic_stack_bw=stack_fn(file_patt);
num_pic=size(pic_stack_bw,3);

%% Similarity measurement

% Normalised cross-correlation

normxcorr_thrshld=9e-1;      
 
nxcorr_mat=norm_xcorr(no_dirt_stack,normxcorr_thrshld);
 
figure, subplot(1,3,1), imshow(mat2gray(nxcorr_mat(:,:,1)))
xlabel('Pictures 1...N')
ylabel('Pictures 1...N')
title('Original matrix')
colorbar
subplot(1,3,3), imshow(mat2gray(nxcorr_mat(:,:,2)))
xlabel('Pictures 1...N')
ylabel('Pictures 1...N')
title(['Thresholded matrix' - threshold=' num2str(normxcorr_thrshld*100) '%'])
suptitle('Normalised cross-correlation')


% Structural similarity SSIM

ssim_thrshld=9e-1;
 
ssim_mat=struct_sim_fn(mat2gray(no_dirt_stack),ssim_thrshld);
 
figure, subplot(1,3,1), imshow(mat2gray(ssim_mat(:,:,1)))
xlabel('Pictures 1...N')
ylabel('Pictures 1...N')
title('Original matrix')
colorbar
subplot(1,3,3), imshow(mat2gray(ssim_mat(:,:,2)))
xlabel('Pictures 1...N')
ylabel('Pictures 1...N')
title(['Thresholded matrix' - threshold=' num2str(ssim_thrshld*100) '%'])
suptitle('SSIM')


% Correntropy

corr_thrshld=9e-1;

corr_mat=correntropy_fn(mat2gray(no_dirt_stack),corr_thrshld);

figure, subplot(1,3,1), imshow(mat2gray(corr_mat(:,:,1)))
xlabel('Pictures 1...N')
ylabel('Pictures 1...N')
title('Original matrix')
colorbar
subplot(1,3,3), imshow(mat2gray(corr_mat(:,:,2)))
xlabel('Pictures 1...N')
ylabel('Pictures 1...N')
title(['Thresholded matrix' - threshold=' num2str(corr_thrshld*100) '%'])
suptitle('Correntropy')
























































