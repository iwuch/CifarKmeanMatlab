%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Step 2: 编写簇C内样本间的平均距离 avgC(cls,order)
%输入：cls ->簇矩阵，每一行表示这一簇中的一张图片的信息，行数代表该簇的图片数量
%输出：argC->簇C内样本间的平均距离，是一个正实数
%距离可以分为L1和L2两种，通过order指定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function avgDist=avgC(cls,order)
    totalDist = 0;
    siz = size(cls);
    N = siz(1)
    for i = 1:N-1
        for j = i+1:N
            totalDist = totalDist + distance(cls(i,:),cls(j,:),order);
        end
    end
    avgDist = 2*totalDist/(N*(N-1))
end