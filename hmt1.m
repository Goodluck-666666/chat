function y=hmt1(x)
%%%中短期预测的城镇男性死亡率随时间的函数
if x==90
    y=600;
else
y=0.078.*exp(0.098.*x);
end
end