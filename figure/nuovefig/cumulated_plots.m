
% Netbeans

cumulated_bugs_NB_1_2=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/abn_comm_df_1..2.csv', 1, 1);
cumulated_bugs_NB_1_3=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/abn_comm_df_1..3.csv', 1, 1);
cumulated_bugs_NB_1_4=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/abn_comm_df_1..4.csv', 1, 1);
cumulated_bugs_NB_1_5=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/abn_comm_df_1..5.csv', 1, 1);
cumulated_bugs_NB_1_6=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/abn_comm_df_1..6.csv', 1, 1);

cumulated_cc_NB_1_2=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/cc_comm_df_1..2.csv', 1, 1);
cumulated_cc_NB_1_3=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/cc_comm_df_1..3.csv', 1, 1);
cumulated_cc_NB_1_4=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/cc_comm_df_1..4.csv', 1, 1);
cumulated_cc_NB_1_5=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/cc_comm_df_1..5.csv', 1, 1);
cumulated_cc_NB_1_6=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/Fit cumulati/cc_comm_df_1..6.csv', 1, 1);


% Eclipse
cumulated_bugs_EC_1_2=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/abn_comm_df_1..2.csv', 1, 1);
cumulated_bugs_EC_1_3=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/abn_comm_df_1..3.csv', 1, 1);
cumulated_bugs_EC_1_4=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/abn_comm_df_1..4.csv', 1, 1);
cumulated_bugs_EC_1_5=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/abn_comm_df_1..5.csv', 1, 1);

cumulated_cc_EC_1_2=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/cc_comm_df_1..2.csv', 1, 1);
cumulated_cc_EC_1_3=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/cc_comm_df_1..3.csv', 1, 1);
cumulated_cc_EC_1_4=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/cc_comm_df_1..4.csv', 1, 1);
cumulated_cc_EC_1_5=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/Fit cumulati/cc_comm_df_1..5.csv', 1, 1);



fit_cum_1_2_NB_bugs=polyfit(log(cumulated_bugs_NB_1_2(:,1)),log(cumulated_bugs_NB_1_2(:,2)), 1);
fit_cum_1_3_NB_bugs=polyfit(log(cumulated_bugs_NB_1_3(:,1)),log(cumulated_bugs_NB_1_3(:,2)),1);
fit_cum_1_4_NB_bugs=polyfit(log(cumulated_bugs_NB_1_4(:,1)),log(cumulated_bugs_NB_1_4(:,2)),1);
fit_cum_1_5_NB_bugs=polyfit(log(cumulated_bugs_NB_1_5(:,1)),log(cumulated_bugs_NB_1_5(:,2)),1);
fit_cum_1_6_NB_bugs=polyfit(log(cumulated_bugs_NB_1_6(:,1)),log(cumulated_bugs_NB_1_6(:,2)),1);

fit_cum_1_2_NB_cc=polyfit(log(cumulated_cc_NB_1_2(:,1)),log(cumulated_cc_NB_1_2(:,2)), 1);
fit_cum_1_3_NB_cc=polyfit(log(cumulated_cc_NB_1_3(:,1)),log(cumulated_cc_NB_1_3(:,2)),1);
fit_cum_1_4_NB_cc=polyfit(log(cumulated_cc_NB_1_4(:,1)),log(cumulated_cc_NB_1_4(:,2)),1);
fit_cum_1_5_NB_cc=polyfit(log(cumulated_cc_NB_1_5(:,1)),log(cumulated_cc_NB_1_5(:,2)),1);
fit_cum_1_6_NB_cc=polyfit(log(cumulated_cc_NB_1_6(:,1)),log(cumulated_cc_NB_1_6(:,2)),1);

fit_cum_1_2_EC_bugs=polyfit(log(cumulated_bugs_EC_1_2(:,1)),log(cumulated_bugs_EC_1_2(:,2)), 1);
fit_cum_1_3_EC_bugs=polyfit(log(cumulated_bugs_EC_1_3(:,1)),log(cumulated_bugs_EC_1_3(:,2)),1);
fit_cum_1_4_EC_bugs=polyfit(log(cumulated_bugs_EC_1_4(:,1)),log(cumulated_bugs_EC_1_4(:,2)),1);
fit_cum_1_5_EC_bugs=polyfit(log(cumulated_bugs_EC_1_5(:,1)),log(cumulated_bugs_EC_1_5(:,2)),1);

fit_cum_1_2_EC_cc=polyfit(log(cumulated_cc_EC_1_2(:,1)),log(cumulated_cc_EC_1_2(:,2)), 1);
fit_cum_1_3_EC_cc=polyfit(log(cumulated_cc_EC_1_3(:,1)),log(cumulated_cc_EC_1_3(:,2)),1);
fit_cum_1_4_EC_cc=polyfit(log(cumulated_cc_EC_1_4(:,1)),log(cumulated_cc_EC_1_4(:,2)),1);
fit_cum_1_5_EC_cc=polyfit(log(cumulated_cc_EC_1_5(:,1)),log(cumulated_cc_EC_1_5(:,2)),1);

syms x;
figure;

scatter(log(cumulated_bugs_NB_1_2(:,1)),log(cumulated_bugs_NB_1_2(:,2)),'*', 'y');
title({'Netbeans: log-log plot n.comm vs max avg bug n.';' ' },'FontSize',12.5);
axes_handle=gca;

hold on
ezplot(fit_cum_1_2_NB_bugs(:,1)*x + fit_cum_1_2_NB_bugs(:,2), [0.5, 4.3]);
xlabel('log(n.comm)'); ylabel('log(max avg bug n.)');
hold on
scatter(log(cumulated_bugs_NB_1_3(:,1)),log(cumulated_bugs_NB_1_3(:,2)),'+', 'm');
hold on
ezplot(fit_cum_1_3_NB_bugs(:,1)*x + fit_cum_1_3_NB_bugs(:,2), [0.5, 4.3])
hold on
scatter(log(cumulated_bugs_NB_1_4(:,1)),log(cumulated_bugs_NB_1_4(:,2)),'o', 'c');
hold on
ezplot(fit_cum_1_4_NB_bugs(:,1)*x + fit_cum_1_4_NB_bugs(:,2), [0.5, 4.3])
hold on
scatter(log(cumulated_bugs_NB_1_5(:,1)),log(cumulated_bugs_NB_1_5(:,2)),'x', 'r');
hold on
ezplot(fit_cum_1_5_NB_bugs(:,1)*x + fit_cum_1_5_NB_bugs(:,2), [0.5, 4.3]);
hold on
scatter(log(cumulated_bugs_NB_1_6(:,1)),log(cumulated_bugs_NB_1_6(:,2)),'d', 'g');
hold on
ezplot(fit_cum_1_6_NB_bugs(:,1)*x + fit_cum_1_6_NB_bugs(:,2), [0.5, 4.3]);


figure;

scatter(log(cumulated_bugs_EC_1_2(:,1)),log(cumulated_bugs_EC_1_2(:,2)),'*', 'y');
title({'Eclipse: log-log plot n.comm vs max avg bug n.';' ' },'FontSize',12.5);

hold on
ezplot(fit_cum_1_2_EC_bugs(:,1)*x + fit_cum_1_2_EC_bugs(:,2), [0.5, 4.3]);
xlabel('log(n.comm)'); ylabel('log(max avg bug n.)');
hold on
scatter(log(cumulated_bugs_EC_1_3(:,1)),log(cumulated_bugs_EC_1_3(:,2)),'+', 'm');
hold on
ezplot(fit_cum_1_3_EC_bugs(:,1)*x + fit_cum_1_3_EC_bugs(:,2), [0.5, 4.3])
hold on
scatter(log(cumulated_bugs_EC_1_4(:,1)),log(cumulated_bugs_EC_1_4(:,2)),'o', 'c');
hold on
ezplot(fit_cum_1_4_EC_bugs(:,1)*x + fit_cum_1_4_EC_bugs(:,2), [0.5, 4.3])
hold on
scatter(log(cumulated_bugs_EC_1_5(:,1)),log(cumulated_bugs_EC_1_5(:,2)),'x', 'r');
hold on
ezplot(fit_cum_1_5_EC_bugs(:,1)*x + fit_cum_1_5_EC_bugs(:,2), [0.5, 4.3]);





figure;

scatter(log(cumulated_cc_NB_1_2(:,1)),log(cumulated_cc_NB_1_2(:,2)),'*', 'y');
title({'Netbeans: log-log plot max cc vs n. comm';' ' },'FontSize',12.5);
hold on
ezplot(fit_cum_1_2_NB_cc(:,1)*x + fit_cum_1_2_NB_cc(:,2), [0.5, 3.5]);
xlabel('log(n.comm)'); ylabel('log(max cc)');
hold on
scatter(log(cumulated_cc_NB_1_3(:,1)),log(cumulated_cc_NB_1_3(:,2)),'+', 'm');
hold on
ezplot(fit_cum_1_3_NB_cc(:,1)*x + fit_cum_1_3_NB_cc(:,2), [0.5, 3.5])
hold on
scatter(log(cumulated_cc_NB_1_4(:,1)),log(cumulated_cc_NB_1_4(:,2)),'o', 'c');
hold on
ezplot(fit_cum_1_4_NB_cc(:,1)*x + fit_cum_1_4_NB_cc(:,2), [0.5, 3.5])
hold on
scatter(log(cumulated_cc_NB_1_5(:,1)),log(cumulated_cc_NB_1_5(:,2)),'x', 'r');
hold on
ezplot(fit_cum_1_5_NB_cc(:,1)*x + fit_cum_1_5_NB_cc(:,2), [0.5, 3.5]);
hold on
scatter(log(cumulated_cc_NB_1_6(:,1)),log(cumulated_cc_NB_1_6(:,2)),'d', 'g');
hold on
ezplot(fit_cum_1_6_NB_cc(:,1)*x + fit_cum_1_6_NB_cc(:,2), [0.5, 3.5]);





figure;

scatter(log(cumulated_cc_EC_1_2(:,1)),log(cumulated_cc_EC_1_2(:,2)),'*', 'y');
title({'Eclipse: log-log plot of max cc vs n.comm';' ' },'FontSize',12.5);

hold on
ezplot(fit_cum_1_2_EC_cc(:,1)*x + fit_cum_1_2_EC_cc(:,2), [0.5, 4.3]);
xlabel('log(n.comm)'); ylabel('log(max cc)');
hold on
scatter(log(cumulated_cc_EC_1_3(:,1)),log(cumulated_cc_EC_1_3(:,2)),'+', 'm');
hold on
ezplot(fit_cum_1_3_EC_cc(:,1)*x + fit_cum_1_3_EC_cc(:,2), [0.5, 4.3])
hold on
scatter(log(cumulated_cc_EC_1_4(:,1)),log(cumulated_cc_EC_1_4(:,2)),'o', 'c');
hold on
ezplot(fit_cum_1_4_EC_cc(:,1)*x + fit_cum_1_4_EC_cc(:,2), [0.5, 4.3])
hold on
scatter(log(cumulated_cc_EC_1_5(:,1)),log(cumulated_cc_EC_1_5(:,2)),'x', 'r');
hold on
ezplot(fit_cum_1_5_EC_cc(:,1)*x + fit_cum_1_5_EC_cc(:,2), [0.5, 4.3]);








% plot dei punti non log


figure;

scatter(cumulated_bugs_NB_1_2(:,1),cumulated_bugs_NB_1_2(:,2),'*', 'y');
title({'Netbeans n.comm vs max avg bug n.';' ' },'FontSize',12.5);
xlabel('n.comm'); ylabel('max avg bug n.');

axes_handle=gca;

hold on
scatter(cumulated_bugs_NB_1_3(:,1),cumulated_bugs_NB_1_3(:,2),'+', 'm');
hold on
scatter(cumulated_bugs_NB_1_4(:,1),cumulated_bugs_NB_1_4(:,2),'o', 'c');
hold on
scatter(cumulated_bugs_NB_1_5(:,1),cumulated_bugs_NB_1_5(:,2),'x', 'r');
hold on
scatter(cumulated_bugs_NB_1_6(:,1),cumulated_bugs_NB_1_6(:,2),'d', 'g');

figure;

scatter(cumulated_bugs_EC_1_2(:,1),cumulated_bugs_EC_1_2(:,2),'*', 'y');
title({'Eclipse plot n.comm vs max avg bug n.';' ' },'FontSize',12.5);
xlabel('n.comm'); ylabel('max avg bug n.');

hold on
scatter(cumulated_bugs_EC_1_3(:,1),cumulated_bugs_EC_1_3(:,2),'+', 'm');
hold on
scatter(cumulated_bugs_EC_1_4(:,1),cumulated_bugs_EC_1_4(:,2),'o', 'c');
hold on
scatter(cumulated_bugs_EC_1_5(:,1),cumulated_bugs_EC_1_5(:,2),'x', 'r');



figure;

scatter(cumulated_cc_NB_1_2(:,1),cumulated_cc_NB_1_2(:,2),'*', 'y');
title({'Netbeans plot max cc vs n. comm';' ' },'FontSize',12.5);
xlabel('n.comm'); ylabel('max cc)');
hold on
scatter(cumulated_cc_NB_1_3(:,1),cumulated_cc_NB_1_3(:,2),'+', 'm');
hold on
scatter(cumulated_cc_NB_1_4(:,1),cumulated_cc_NB_1_4(:,2),'o', 'c');
hold on
scatter(cumulated_cc_NB_1_5(:,1),cumulated_cc_NB_1_5(:,2),'x', 'r');
hold on
scatter(cumulated_cc_NB_1_6(:,1),cumulated_cc_NB_1_6(:,2),'d', 'g');





figure;

scatter(cumulated_cc_EC_1_2(:,1),cumulated_cc_EC_1_2(:,2),'*', 'y');
title({'Eclipse plot of max cc vs n.comm';' ' },'FontSize',12.5);
xlabel('n.comm'); ylabel('max cc');
hold on
scatter(cumulated_cc_EC_1_3(:,1),cumulated_cc_EC_1_3(:,2),'+', 'm');
hold on
scatter(cumulated_cc_EC_1_4(:,1),cumulated_cc_EC_1_4(:,2),'o', 'c');
hold on
scatter(cumulated_cc_EC_1_5(:,1),cumulated_cc_EC_1_5(:,2),'x', 'r');






