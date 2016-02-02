clear;
setdata;
options = optimset('Algorithm','interior-point', ... %'Display','iter', ...
                  'MaxFunEvals',20000);
%
x = fmincon(@(x) Gencost(x,alph,beta,gamma), ...
%x = knitromatlab(@(x) Gencost(x,alph,beta,gamma), ...
       xx0,[],[],[],[],[],[], ... 
       @(x) constraints(x,AA,TE_whole_0,TJ_whole_0,TE_whole_1,TJ_whole_1,genlist,loadlist,snet,droop_gain,LB,UB),...
       options);
   
results_out