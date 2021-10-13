function y=hwt1(x)
%%%中短期预测的城镇女性死亡率随时间的函数
if x==90
    y=200;
else
y=0.000327.*exp(0.144.*x);
end
end