function y=hwc1(x)
%%%中短期预测的农村女性死亡率随时间的函数
if x==90
    y=200;
else
y=0.01758.*exp(0.10192.*x);
end
end