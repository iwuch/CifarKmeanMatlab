% 根据聚类结果向量clsVector，对每一类随机挑选5张进行显示
function randomShowClsVector(clsVector,imgData)
    for j = 1:10
        %显示clsVectorL1第j类中的的5张图片
        %取出分类为j的图片的index
        clsIndex = find(clsVector==j);
        % 从clsIndex中随机选取5个index值
        randIndex = randchoose(clsIndex,5);
        for i = 1:5
        %在j=6的时候新打开一个figure，每张figure显示5*5=25张小图片使比例协调        
            if j == 6
                figure(2)
            end
            if j<=5
               subplot(5,5,5*j+i-5);
               %调用自己写的showSingleImage函数显示图片
               showSingleImage(imgData,randIndex(i));
            else
               subplot(5,5,5*j+i-30);
               showSingleImage(imgData,randIndex(i));
            end
        end
    end
end