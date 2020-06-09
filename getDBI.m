%%%%%%%%%%%%%%%%%%%%%%%%%
%最后编写DBI计算函数getDBI(clsVector,K,imgData)
%输入：聚类向量clsVector、图片数据库imgData、聚类数目K
%输出：DBI指数，是一个实数
%%%%%%%%%%%%%%%%%%%%%%%%

function DBI = getDBI(clsVector,K,imgData,order)
    sumMaxD = 0;
    for i = 1:K
        for j = 1:K
            MaxD = 0;
            if i==j
                continue
            else
                clsi = clsGet(clsVector,i,imgData);
                clsj = clsGet(clsVector,j,imgData);
                miui = miuC(clsi);
                miuj = miuC(clsj);
                D = (avgC(clsi,order)+avgC(clsj,order))/distance(miui,miuj,order)
                if MaxD < D
                    MaxD = D;
                end
            end
        end
        sumMaxD = sumMaxD + MaxD;
    end
    DBI = sumMaxD/K;
end