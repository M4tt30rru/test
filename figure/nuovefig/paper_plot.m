mysample80_1=csvread('/home/cristina/R/studio-releases/releases/NetBeans/mysample80_1.csv',1,2);
remnants_1=csvread('/home/cristina/R/studio-releases/releases/NetBeans/remnants_1.csv');
fit_sample_1=csvread('/home/cristina/R/studio-releases/releases/NetBeans/fit_sample_1.csv');

fit_sample=linefit(mysample80_1(:,1),mysample80_1(:,2));

figure;
sample_plot=scatter(mysample80_1(:,1),mysample80_1(:,2),'*','red');
xlabel('log(n.comm)'); ylabel('log(max avg bug n.)');
title({'Netbeans: log-log plot n.comm vs max avg bug n.';' ' },'FontSize',12.5);
hold on
remnants_plot=scatter(remnants_1(:,1), remnants_1(:,2), 'blue')
