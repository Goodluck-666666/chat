function y=hmc2(x)
%%%长期预测的农村男性死亡率随时间的函数
if x==90
    y=300;
else
y=0.018.*exp(0.11.*x);
end