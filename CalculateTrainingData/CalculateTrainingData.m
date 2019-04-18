% Features Extraction For Training Data Of SVM algorithm
clc;
clear all;
close all;
%Features of Bactrial leaf spot
for i=1:10
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['D:\Project\Plant Database\Bactrial Leaf Spot\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    imshow(img);title('Leaf Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Bacterial_Leaf_Spot(i,:) = feat_disease;
    save Bacterial_Leaf_Spot;
    close all
end


% Features of Moises
for i=1:10
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['D:\Project\Plant Database\Moises\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    imshow(img);title('Leaf Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Moises(i,:) = feat_disease;
    save Moises;
    close all
end

% Features of Healthy
for i=1:10
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['D:\Project\Plant Database\Healthy\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    imshow(img);title('Leaf Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Healthy(i,:) = feat_disease;
    save Healthy;
    close all
end