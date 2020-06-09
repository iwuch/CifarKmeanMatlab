clc
%加载数据集
load test_batch
%将数据集中的特征数据读出来并且转换为double型
fdata = double(data);
%使用kmeans函数对fdata进行聚类，聚类种数为10
%kmeans默认采用的是用L2范数作为距离，即欧几里得距离
clsVectorL2 = kmeans(fdata,10);

for j = 1:10
    %显示clsVectorL2第j类中的的5张图片
    clsIndex = find(clsVectorL2==j);
    % 从clsIndex中随机选取5个index值
    randIndex = randchoose(clsIndex,5);
    for i = 1:5
    %在j=6的时候新打开一个figure，每张figure显示5*5=25张小图片使比例协调        
        if j == 6
            figure(2)
        end
        if j<=5
           subplot(5,5,5*j+i-5);
           showSingleImage(fdata,randIndex(i));
        else
           subplot(5,5,5*j+i-30);
           showSingleImage(fdata,randIndex(i));
        end
    end
end


