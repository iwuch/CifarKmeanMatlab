%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Step 3: 编写簇C的中心点 miuC(cls)
%输入：cls ->簇矩阵，每一行表示这一簇中的一张图片的信息，行数代表该簇的图片数量
%输出：miuC->簇C的中心点，是一个1024维的矩阵代表该簇的中心点
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function miu = miuC(cls)
    sumImg = 0;
    siz = size(cls);
    N = siz(1);
    for i = 1:N
        sumImg = sumImg + cls(i,:);
    end
    miu = sumImg/N;
end