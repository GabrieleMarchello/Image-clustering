function corr_mat_max=norm_xcorr_fn(pic_stack,thrshld)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% Normalised cross-correlation %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    num_pic=size(pic_stack,3);
    corr_mat_max=zeros(num_pic,num_pic,2);
    
    for i=1:num_pic
        for j=1:num_pic
            corr_mat_max(i,j,1)=max(max(normxcorr2(pic_stack(:,:,i),pic_stack(:,:,j))));
            if corr_mat_max(i,j,1)>thrshld
                corr_mat_max(i,j,2)=1;
            end
        end
    end

end