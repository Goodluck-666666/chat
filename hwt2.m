function y=hwt2(x)
%%%长期预测的城镇女性死亡率随时间的函数
if x==90
    y=180;
else
y=0.0002.*exp(0.15.*x);
end