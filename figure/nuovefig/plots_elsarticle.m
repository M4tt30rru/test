
% Netbeans

check_mod_all_NB=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/check-modularity-size/check_mod_all.csv', 1, 2);
check_mod_all_over600_NB=csvread('/home/cristina/R/studio-releases/studio-releases/releases/NetBeans/check-modularity-size/check_mod_all_over600.csv', 1, 3);

%col 1 mod 
%col 2 size 
%col 3 bug 
%col 4 abn
%col 5 apl 
%col 6 md 
%col 7 cc 
%col 8 com


% Eclipse
check_mod_all_EC=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/check-modularity-size/check_mod_all.csv', 1, 2);
check_mod_all_over600_EC=csvread('/home/cristina/R/studio-releases/studio-releases/releases/Eclipse/check-modularity-size/check_mod_all_over600.csv', 1, 3);




% plot dei punti non log


figure;
%mod vs size NB
scatter(check_mod_all_NB(:,2),check_mod_all_NB(:,1),'*', 'b');
title({'Netbeans';' ' },'FontSize',12.5);
ylabel('modularity'); xlabel('n. classes');

figure;
%mod vs size EC
scatter(check_mod_all_EC(:,2),check_mod_all_EC(:,1),'*', 'r');
title({'Eclipse';' ' },'FontSize',12.5);
ylabel('modularity'); xlabel('n. classes');


figure;
%abn vs size NB
scatter(check_mod_all_NB(:,2),check_mod_all_NB(:,4),'*', 'b');
title({'Netbeans';' ' },'FontSize',12.5);
ylabel('avg bug n.'); xlabel('n. classes');

figure;
%abn vs size EC
scatter(check_mod_all_EC(:,2),check_mod_all_EC(:,4),'*', 'r');
title({'Eclipse';' ' },'FontSize',12.5);
ylabel('avg bug n.'); xlabel('n. classes');




figure;
%cc vs size NB
scatter(check_mod_all_NB(:,2),check_mod_all_NB(:,7),'*', 'b');
title({'Netbeans';' ' },'FontSize',12.5);
ylabel('avg bug n.'); xlabel('n. classes');

figure;
%cc vs size EC
scatter(check_mod_all_EC(:,2),check_mod_all_EC(:,7),'*', 'r');
title({'Eclipse';' ' },'FontSize',12.5);
ylabel('avg bug n.'); xlabel('n. classes');
figure;

figure;
%comm vs size NB
scatter(check_mod_all_NB(:,2),check_mod_all_NB(:,8),'*', 'b');
title({'Netbeans';' ' },'FontSize',12.5);
ylabel('avg bug n.'); xlabel('n. classes');

figure;
%comm vs size EC
scatter(check_mod_all_EC(:,2),check_mod_all_EC(:,8),'*', 'r');
title({'Eclipse';' ' },'FontSize',12.5);
ylabel('avg bug n.'); xlabel('n. classes');




figure;

scatter(check_mod_all_over600_NB(:,1),check_mod_all_over600_NB(:,4),'*', 'b');

hold on
scatter(check_mod_all_over600_EC(:,1),check_mod_all_over600_EC(:,4),'*', 'b');
xlabel('modularity'); ylabel('avg bug n.');




