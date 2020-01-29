function corr_mat=correntropy_fn(pic_stack,thrshld)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Correntropy %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    n_pic=size(pic_stack,3);

    corr_mat=zeros(n_pic,n_pic,2);
    n_pix=size(pic_stack,1)*size(pic_stack,2);
    
    for i=1:n_pic
        
        pic_i=pic_stack(:,:,i);
        std_i=std(pic_i(:));
        
        kern_w1=std_i*(4/(3*n_pix))^(1/5);  % rule-of-thumb bandwidth estimator

        for j=1:n_pic
            
            pic_j=pic_stack(:,:,j);
            std_j=std(pic_j(:));

            kern_w2=std_j*(4/(3*n_pix))^(1/5);
            
            mean_kern_w=(kern_w1+kern_w2)/2;

            corr_mat(i,j,1)=sum(sum(exp(-((pic_i-pic_j)/mean_kern_w).^2/2)))/n_pix;
            if corr_mat(i,j,1)>thrshld
                corr_mat(i,j,2)=1;
            end
        end
    end

end