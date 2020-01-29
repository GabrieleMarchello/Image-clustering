function ssim_mat=struct_sim_fn(pic_stack,thrshld)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% Structural similarity SSIM %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    num_pic=size(pic_stack,3);

    ssim_mat=zeros(num_pic,num_pic,2);
    
    for i=1:num_pic
        for j=1:num_pic
            ssim_mat(i,j,1)=ssim(pic_stack(:,:,i),pic_stack(:,:,j));
            if ssim_mat(i,j,1)>thrshld
               ssim_mat(i,j,2)=1; 
            end
        end
    end

end