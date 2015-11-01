
% Netbeans

release_bugs_NB_1=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_3.2/check_maxbug_release_netbeans_3.2.csv', 1, 5);
release_bugs_NB_2=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_3.2.1/check_maxbug_release_netbeans_3.2.1.csv', 1, 5);
release_bugs_NB_3=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_3.3.0/check_maxbug_release_netbeans_3.3.0.csv', 1, 5);
release_bugs_NB_4=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_3.4/check_maxbug_release_netbeans_3.4.csv', 1, 5);
release_bugs_NB_5=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_4.0/check_maxbug_release_netbeans_4.0.csv', 1, 5);
release_bugs_NB_6=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_6.0.1/check_maxbug_release_netbeans_6.0.1.csv', 1, 5);

release_cc_NB_1=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_3.2/check_maxcc_release_netbeans_3.2.csv', 1, 5);
release_cc_NB_2=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_3.2.1/check_maxcc_release_netbeans_3.2.1.csv', 1, 5);
release_cc_NB_3=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_3.3.0/check_maxcc_release_netbeans_3.3.0.csv', 1, 5);
release_cc_NB_4=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_3.4/check_maxcc_release_netbeans_3.4.csv', 1, 5);
release_cc_NB_5=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_4.0/check_maxcc_release_netbeans_4.0.csv', 1, 5);
release_cc_NB_6=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/netbeans_6.0.1/check_maxcc_release_netbeans_6.0.1.csv', 1, 5);


% Eclipse
release_bugs_EC_1=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/eclipse_2.1/check_maxbug_release_eclipse_2.1.csv', 1, 5);
release_bugs_EC_2=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/eclipse_3.0/check_maxbug_release_eclipse_3.0.csv', 1, 5);
release_bugs_EC_3=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/eclipse_3.1/check_maxbug_release_eclipse_3.1.csv', 1, 5);
release_bugs_EC_4=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/eclipse_3.2/check_maxbug_release_eclipse_3.2.csv', 1, 5);
release_bugs_EC_5=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/eclipse_3.3/check_maxbug_release_eclipse_3.3.csv', 1, 5);

release_cc_EC_1=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/eclipse_2.1/check_maxcc_release_eclipse_2.1.csv', 1, 5);
release_cc_EC_2=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/eclipse_3.0/check_maxcc_release_eclipse_3.0.csv', 1, 5);
release_cc_EC_3=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/eclipse_3.1/check_maxcc_release_eclipse_3.1.csv', 1, 5);
release_cc_EC_4=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/eclipse_3.2/check_maxcc_release_eclipse_3.2.csv', 1, 5);
release_cc_EC_5=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/eclipse_3.3/check_maxcc_release_eclipse_3.3.csv', 1, 5);







% plot dei punti non log


figure;

scatter(release_bugs_NB_1(:,5),release_bugs_NB_1(:,1),'*', 'b');
title({'Netbeans n.comm vs max avg bug n.';' ' },'FontSize',12.5);
xlabel('n.comm'); ylabel('max avg bug n.');

axes_handle=gca;

hold on
scatter(release_bugs_NB_2(:,5),release_bugs_NB_2(:,1),'+', 'm');
hold on
scatter(release_bugs_NB_3(:,5),release_bugs_NB_3(:,1),'o', 'c');
hold on
scatter(release_bugs_NB_4(:,5),release_bugs_NB_4(:,1),'x', 'r');
hold on
scatter(release_bugs_NB_5(:,5),release_bugs_NB_5(:,1),'d', 'g');
hold on
scatter(release_bugs_NB_6(:,5),release_bugs_NB_6(:,1),'p', 'k');


figure;

scatter(release_bugs_EC_1(:,5),release_bugs_EC_1(:,1),'*', 'b');
title({'Eclipse plot n.comm vs max avg bug n.';' ' },'FontSize',12.5);
xlabel('n.comm'); ylabel('max avg bug n.');

hold on
scatter(release_bugs_EC_2(:,5),release_bugs_EC_2(:,1),'+', 'm');
hold on
scatter(release_bugs_EC_3(:,5),release_bugs_EC_3(:,1),'o', 'c');
hold on
scatter(release_bugs_EC_4(:,5),release_bugs_EC_4(:,1),'x', 'r');
hold on
scatter(release_bugs_EC_5(:,5),release_bugs_EC_5(:,1),'d', 'g');



figure;

scatter(release_cc_NB_1(:,5),release_cc_NB_1(:,4),'*', 'b');
title({'Netbeans plot max cc vs n. comm';' ' },'FontSize',12.5);
xlabel('n.comm'); ylabel('max cc)');
hold on
scatter(release_cc_NB_2(:,5),release_cc_NB_2(:,4),'+', 'm');
hold on
scatter(release_cc_NB_3(:,5),release_cc_NB_3(:,4),'o', 'c');
hold on
scatter(release_cc_NB_4(:,5),release_cc_NB_4(:,4),'x', 'r');
hold on
scatter(release_cc_NB_5(:,5),release_cc_NB_5(:,4),'d', 'g');
hold on
scatter(release_cc_NB_6(:,5),release_cc_NB_6(:,4),'p', 'k');




figure;

scatter(release_cc_EC_1(:,5),release_cc_EC_1(:,4),'*', 'b');
title({'Eclipse plot of max cc vs n.comm';' ' },'FontSize',12.5);
xlabel('n.comm'); ylabel('max cc');
hold on
scatter(release_cc_EC_2(:,5),release_cc_EC_2(:,4),'+', 'm');
hold on
scatter(release_cc_EC_3(:,5),release_cc_EC_3(:,4),'o', 'c');
hold on
scatter(release_cc_EC_4(:,5),release_cc_EC_4(:,4),'x', 'r');
hold on
scatter(release_cc_EC_5(:,5),release_cc_EC_5(:,4),'d', 'g');






