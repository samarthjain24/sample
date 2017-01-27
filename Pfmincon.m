clear all
clc
format long
A = [];
b = [];
Aeq = [];
beq = [];
lb = [80 0.26 5 0];	
ub = [250 0.47 12 45];
options = optimoptions('fmincon','Algorithm','sqp', 'Display','iter')

x0 = [224;0.35;5;45];

[x,fval,exitflag,output] = fmincon('Pfunc_fmin',x0,A,b,Aeq,beq,lb,ub, ...
    'P_cons_fmin',options)