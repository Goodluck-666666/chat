function y=hmc1(x)
%%%中短期预测的农村男性死亡率随时间的函数
if x==90
    y=300;
else
y=0.037035.*exp(0.09728.*x);
end
end