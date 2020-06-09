%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Step 1.5: 簇矩阵生成函数 clsGet(clsVector,clsNum,imgData)
%输入：簇的编号clsNum、聚类向量clsVector、图片数据库imgData
%输出：簇矩阵，每一行表示这一簇中的一张图片的信息，行数代表该簇的图片数量
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function cls = clsGet(clsVector,clsNum,imgData)
    indexVec = find(clsVector==clsNum);
    N = length(indexVec);
    cls = zeros(N,3072);
    for i = 1:N
        cls(i,:) = imgData(indexVec(i),:);
end