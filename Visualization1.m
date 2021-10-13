%%
%中短期预测数据可视化部分代码

%数据可视化脚本1
%预测中短期全国总人口随时间的变化
figure(1)
N=mt+wt+mc+wc;%求每一年全国总人口矩阵
N=sum(N).';
t=1:1:20;
plot(N,'b-');
axis on
grid on
set(gca,'Xtick',t);
title('预测中短期全国人口随时间的变化');
xlabel('时间（2010+x年）');
ylabel('人口（人）');

%预测中短期全国出生人口与死亡人口随时间的变化
figure(2)
B=mt(1,1:20)+wt(1,1:20)+mc(1,1:20)+wc(1,1:20);
B=B.';
D=zeros(20,1);
for t=1:1:20
for a=1:1:90
D(t,1)=mt(a,t)*hmt1(a)./1000+wt(a,t)*hwt1(a)./1000+mc(a,t)*hmc1(a)./1000+wc(a,t)*hwc1(a)./1000;
end
end
subplot(2,1,1)
bar(B,'r');
title('预测中短期出生人口数随时间的变化');
xlabel('时间（2010+x年）');
ylabel('出生人口（人）');
subplot(2,1,2)
bar(D,'k');
title('预测中短期死亡人口数随时间的变化')
xlabel('时间（2010+x年）');
ylabel('死亡人口（人）');

%预测中短期全国分段人口随时间的变化
figure(3)
N=mt+wt+mc+wc;
y=sum(N(1:17,:),1).';
ad=sum(N(18:59,:),1).';
o=sum(N(60:90,:),1).';
subplot(2,1,1)
bar(1:40, [y ad o], 0.5, 'stack');
axis([0 20 0 1500000000]);
set(gca, 'XTick', 1:20);
title('预测中短期全国分段人口随时间的变化');
xlabel('时间（2010+x年）');
ylabel('人口（人）');
legend('青少年人口（0-17岁）', '成年人口（18-59岁）', '老年人口（60岁以上）','Location','southoutside');
subplot(2,1,2)
N=sum(N).';
y=y./N.*100;
ad=ad./N.*100;
o=o./N.*100;
bar(1:40, [y ad o], 0.5, 'stack');
axis([0 20 0 100]);
set(gca, 'XTick', 1:20);
title('预测中短期全国分段人口占总人口比例随时间的变化');
xlabel('时间（2010+x年）');
ylabel('比例（%）');
legend('青少年人口（0-17岁）', '成年人口（18-59岁）', '老年人口（60岁以上）','Location','southoutside');

%预测中短期全国男女人口随时间的变化
figure(4)
N=mt+wt+mc+wc;
NM=mt+mc;
NW=wt+wc;
m=sum(NM(1:90,:),1).';
w=sum(NW(1:90,:),1).';
subplot(2,1,1)
bar(1:40, [m w], 0.5, 'stack');
axis([0 20 0 1500000000]);
set(gca, 'XTick', 1:20);
title('预测中短期全国男女人口随时间的变化');
xlabel('时间（2010+x年）');
ylabel('人口（人）');
legend('男性人口', '女性人口','Location','southoutside');
subplot(2,1,2)
N=sum(N).';
m=m./N.*100;
w=w./N.*100;
bar(1:40, [m w], 0.5, 'stack');
axis([0 20 0 100]);
set(gca, 'XTick', 1:20);
title('预测中短期全国男女人口占总人口比例随时间的变化');
xlabel('时间（2010+x年）');
ylabel('比例（%）');
legend('男性人口占比', '女性人口占比','Location','southoutside');

%预测中短期城镇化率随时间的变化
figure(5)
N=mt+wt+mc+wc;
NT=mt+wt;
NC=mc+wc;
t=sum(NT(1:90,:),1).';
c=sum(NC(1:90,:),1).';
subplot(2,2,1)
bar(1:40, [t c], 0.5, 'stack');
axis([0 20 0 1500000000]);
set(gca, 'XTick', 1:20);
title('预测中短期全国城乡人口随时间的变化');
xlabel('时间（2010+x年）');
ylabel('人口（人）');
legend('城镇人口', '农村人口','Location','southoutside');
subplot(2,2,2)
N=sum(N).';
t=t./N.*100;
c=c./N.*100;
bar(1:40, [t c], 0.5, 'stack');
axis([0 20 0 100]);
set(gca, 'XTick', 1:20);
title('预测中短期全国城乡人口占总人口比例随时间的变化');
xlabel('时间（2010+x年）');
ylabel('比例（%）');
legend('城镇人口占比', '农村人口占比','Location','southoutside');
t=t./(t+c).*100;
subplot(2,2,[3 4])
plot(t,'b-');
axis on
grid on
title('预测中短期城镇化随时间的变化');
xlabel('时间（2010+x年）');
ylabel('城镇化率（%）');