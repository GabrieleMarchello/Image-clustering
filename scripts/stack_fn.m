function pic_stack=stack_fn(file_patt) 

    files=dir(file_patt);

    num_pic=length(files);                  % Count number of images

    for i=1:num_pic

        base_pic_name=files(i).name;    % Get the base file name

        full_pic_name=fullfile(my_folder,base_pic_name); % Combine it with the folder to get the full filename

        img=imread(full_pic_name);    % Read the image file into a matrix

        pic_stack(:,:,i)=rgb2gray(img);                % Create stack

    end

end