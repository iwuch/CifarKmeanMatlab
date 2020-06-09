load test_batch
test_feats = data;
test_label = labels; 
%因为有RGB三个通道，所以特征集的位数是3072=3*32*32
train_features = zeros(5,10000,3072);
train_labels = zeros(5,10000,1);
% 使用for循环读取了5个batch中的样本数据和标签数据
for i = 1:5
    %通过字符串拼接的方法获得数据集文件的文件名
    dat_name = strcat('data_batch_',num2str(i))
%   file_name = strcat(dat_name,'.mat')
    %通过load方法来加载数据集，注意在这里使用load()可以将字符串当做变量来使用
    load(dat_name);
    train_features(i,:,:) = data;
    train_labels(i,:,:) = labels;
end
% 随机抽取训练集中的数据并且显示出来，同时显示其标签
% image = train_features(1,1,:);
% A = reshape(train_features(1,2,:),32,32,3)./256
% image = imrotate( A, -90 );
% RGB = imshow(image)
for m = 0:4
    %以下是可视化显示部分的代码，每个batch随机选择五张 
        N=5
    for i = 1:N
        randnum = randi(10000)
        A = reshape(train_features(i,randnum,:),32,32,3)./256
        %将图片顺时针旋转90度
        image = imrotate( A, -90 )
        title_string = '类别：';
        if    train_labels(i,randnum,:)==0
              result_string = ('airplane')
        elseif    train_labels(i,randnum,:)==1
              result_string = ('automobile')
        elseif    train_labels(i,randnum,:)==2
              result_string = ('bird')
        elseif    train_labels(i,randnum,:)==3
              result_string = ('cat')
        elseif    train_labels(i,randnum,:)==4
              result_string = ('deer')
        elseif    train_labels(i,randnum,:)==5
              result_string = ('dog')
        elseif    train_labels(i,randnum,:)==6
              result_string = ('frog')
        elseif    train_labels(i,randnum,:)==7
              result_string = ('horse')
        elseif    train_labels(i,randnum,:)==8
              result_string = ('ship')
        elseif    train_labels(i,randnum,:)==9
              result_string = ('truck')
        end
        %通过num2str函数把数字转换成字符串，用于后面标题字符串的构造
        num = num2str(train_labels(i,randnum,:));     
        %通过subplot方法来在一张大图中画出多个子图显示多张图片及其显示结果
        subplot(5,5,m*5+i);imshow(image,'InitialMagnification','fit');title(strcat(title_string,num,'(',result_string,')'));
        hold on;
    end
end




