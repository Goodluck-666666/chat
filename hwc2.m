function y=hwc2(x)
%%%长期预测的农村女性死亡率随时间的函数
if x==90
    y=200;
else
y=0.01.*exp(0.11.*x);
end