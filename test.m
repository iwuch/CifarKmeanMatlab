clc
num = 2;
% vec1 = fdata(1,:);
% vec2 = fdata(2,:);
% D = distance(vec1,vec2,1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Step 2: 编写簇C内样本间的平均距离 avgC(cls,order)
%输入：cls ->簇矩阵，每一行表示这一簇中的一张图片的信息，行数代表该簇的图片数量
%输出：argC->簇C内样本间的平均距离，是一个正实数
%距离可以分为L1和L2两种，通过order指定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% cls = clsGet(clsVectorL1,2,fdata);
% avgC(cls,1)
% miu = miuC(cls)
% showSingleImage(miu)
DBI1 = getDBI(clsVectorL1,10,fdata,1)
DBI2 = getDBI(clsVectorL2,10,fdata,2)
% order = 1
% clsi = clsGet(clsVectorL1,1,fdata);
% clsj = clsGet(clsVectorL1,2,fdata);
% miui = miuC(clsi)
% miuj = miuC(clsj)
% D = (avgC(clsi,order)+avgC(clsj,order))/distance(miui,miuj,order)

% function DBI = getDBI(clsVector,K,imgData,order)
%     sumMaxD = 0
%     for i = 1:K
%         for j = 1:K
%             MaxD = 0
%             if i==j
%                 continue
%             else
%                 clsi = clsGet(clsVector,i,imgData);
%                 clsj = clsGet(clsVector,j,imgData);
%                 miui = miuC(clsi);
%                 miuj = miuC(clsj);
%                 D = (avgC(clsi)+avgC(clsj))/distance(miu1,miu2,order);
%                 if maxD > D
%                     maxD = D;
%                 end
%             end
%         end
%         sumMaxD = sumMaxD + maxD;
%     end
%     DBI = sumMaxD/K;
% end