


cc_bugs_NB_1_2=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/bug_cc_df1..2.csv', 1, 1);
cc_bugs_NB_1_3=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/bug_cc_df1..3.csv', 1, 1);
cc_bugs_NB_1_4=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/bug_cc_df1..4.csv', 1, 1);
cc_bugs_NB_1_5=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/bug_cc_df1..5.csv', 1, 1);
cc_bugs_NB_1_6=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/bug_cc_df1..6.csv', 1, 1);

cc_bugs_EC_1_2=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/bug_cc_df1..2.csv', 1, 1);
cc_bugs_EC_1_3=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/bug_cc_df1..3.csv', 1, 1);
cc_bugs_EC_1_4=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/bug_cc_df1..4.csv', 1, 1);
cc_bugs_EC_1_5=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/bug_cc_df1..5.csv', 1, 1);

fit_cum_1_2_NB_cc_bugs=polyfit(cc_bugs_NB_1_2(:,1),cc_bugs_NB_1_2(:,2), 1);
fit_cum_1_3_NB_cc_bugs=polyfit(cc_bugs_NB_1_3(:,1),cc_bugs_NB_1_3(:,2),1);
fit_cum_1_4_NB_cc_bugs=polyfit(cc_bugs_NB_1_4(:,1),cc_bugs_NB_1_4(:,2),1);
fit_cum_1_5_NB_cc_bugs=polyfit(cc_bugs_NB_1_5(:,1),cc_bugs_NB_1_5(:,2),1);
fit_cum_1_6_NB_cc_bugs=polyfit(cc_bugs_NB_1_6(:,1),cc_bugs_NB_1_6(:,2),1);

fit_cum_1_2_EC_cc_bugs=polyfit(cc_bugs_EC_1_2(:,1),cc_bugs_EC_1_2(:,2), 1);
fit_cum_1_3_EC_cc_bugs=polyfit(cc_bugs_EC_1_3(:,1),cc_bugs_EC_1_3(:,2),1);
fit_cum_1_4_EC_cc_bugs=polyfit(cc_bugs_EC_1_4(:,1),cc_bugs_EC_1_4(:,2),1);
fit_cum_1_5_EC_cc_bugs=polyfit(cc_bugs_EC_1_5(:,1),cc_bugs_EC_1_5(:,2),1);

figure;
syms x
scatter(cc_bugs_NB_1_2(:,1),cc_bugs_NB_1_2(:,2),'*', 'b');
title({'Netbeans: log-log plot max bug vsmax cc';' ' },'FontSize',12.5);

hold on
ezplot(fit_cum_1_2_NB_cc_bugs(:,1)*x + fit_cum_1_2_NB_cc_bugs(:,2), [0, 0.52]);
xlabel('log(n.comm)'); ylabel('log(max cc)');
hold on
scatter(cc_bugs_NB_1_3(:,1),cc_bugs_NB_1_3(:,2),'+', 'm');
hold on
ezplot(fit_cum_1_3_NB_cc_bugs(:,1)*x + fit_cum_1_3_NB_cc_bugs(:,2), [0, 0.52]);
hold on
scatter(cc_bugs_NB_1_4(:,1),cc_bugs_NB_1_4(:,2),'o', 'c');
hold on
ezplot(fit_cum_1_4_NB_cc_bugs(:,1)*x + fit_cum_1_4_NB_cc_bugs(:,2), [0, 0.52]);
hold on
scatter(cc_bugs_NB_1_5(:,1),cc_bugs_NB_1_5(:,2),'x', 'r');
hold on
ezplot(fit_cum_1_5_NB_cc_bugs(:,1)*x + fit_cum_1_5_NB_cc_bugs(:,2), [0, 0.52]);
hold on
scatter(cc_bugs_NB_1_6(:,1),cc_bugs_NB_1_6(:,2),'d', 'g');
hold on
ezplot(fit_cum_1_6_NB_cc_bugs(:,1)*x + fit_cum_1_6_NB_cc_bugs(:,2), [0, 0.52]);





figure;
syms x;
scatter(cc_bugs_EC_1_2(:,1),cc_bugs_EC_1_2(:,2),'*', 'b');
title({'Eclipse: log-log plot of max bug vs max cc';' ' },'FontSize',12.5);
xlabel('log(n.comm)'); ylabel('log(max cc)');

hold on
ezplot(fit_cum_1_2_EC_cc_bugs(:,1)*x + fit_cum_1_2_EC_cc_bugs(:,2), [0, 0.7]);
hold on
scatter(cc_bugs_EC_1_3(:,1),cc_bugs_EC_1_3(:,2),'+', 'm');
hold on
ezplot(fit_cum_1_3_EC_cc_bugs(:,1)*x + fit_cum_1_3_EC_cc_bugs(:,2), [0, 0.7])
hold on
scatter(cc_bugs_EC_1_4(:,1),cc_bugs_EC_1_4(:,2),'o', 'c');
hold on
ezplot(fit_cum_1_4_EC_cc_bugs(:,1)*x + fit_cum_1_4_EC_cc_bugs(:,2), [0, 0.7])
hold on
scatter(cc_bugs_EC_1_5(:,1),cc_bugs_EC_1_5(:,2),'x', 'r');
hold on
ezplot(fit_cum_1_5_EC_cc_bugs(:,1)*x + fit_cum_1_5_EC_cc_bugs(:,2), [0, 0.7]);




