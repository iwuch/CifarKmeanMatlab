%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Step 1: 编写距离函数dist(svec,evec,order)
%输入：svec,evec ->起点向量和重点向量，在这里把图片视为1024维空间中的点
%输出：dist->两个向量之间的距离，是一个实数
%距离可以分为L1和L2两种，通过order指定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function dist = distance(svec,evec,order)
    dist = norm(svec-evec,order);
end