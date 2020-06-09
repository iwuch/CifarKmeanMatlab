%使用kmeans函数对fdata进行聚类，聚类种数为10
%如果将Distance参数设置为'cityblock'，则采用L1范数，即街区距离
% clsVectorL1 = kmeans(fdata,10,'Distance','cityblock')
% randomShowClsVector(clsVectorL1,fdata)
%kmeans默认采用的是用L2范数作为距离，即欧几里得距离
clsVectorL2 = kmeans(fdata,10);
% randomShowClsVector(clsVectorL2,fdata)

