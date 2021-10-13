function y=hmt2(x)
%%%长期预测的城镇男性死亡率随时间的函数
if x==90
    y=180;
else
y=0.017.*exp(0.1.*x);
end