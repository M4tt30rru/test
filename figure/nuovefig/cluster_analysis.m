


random_statistics_NB1=csvread('/home/cristina/DIEE/Cluster analysis/Netbeans/CURandomClustersNB4.0_primecolonne.csv', 1,0);
figure;

handaxes1 = axes('position', [0.1 0.1 0.8 0.8]);

ids_statistics_NB1=csvread('/home/cristina/DIEE/Cluster analysis/Ids/Ids_Clustering_dist_1_SP_NB4.0.csv', 1,0);
id_statistics_NB1=csvread('/home/cristina/DIEE/Cluster analysis/Ids/Id_Clustering_SP_dist_1_NB4.0.csv', 1,0);
% Main ids plot
scatter(random_statistics_NB1(:,1),random_statistics_NB1(:,2),'o', 'blue');
hold on
scatter(ids_statistics_NB1(:,1),ids_statistics_NB1(:,3),'*','red');
axis([0 15000 0 1900])

xlabel('N. CU'); ylabel('Avg N. clusters');
set(handaxes1, 'box', 'off');

hleg1=legend('random', 'ids');
set(hleg1,'Location','NorthWest');
%title({'Netbeans: confronto tra clusterizzazione casuale';' e clusterizzazione con ids';' ' },'FontSize',12.5);

% Add another set of axes
handaxes3 = axes('position', [0.65 0.58 0.2 0.3]);
scatter(ids_statistics_NB1(:,1),ids_statistics_NB1(:,3),'*','red');
hold on
scatter(random_statistics_NB1(:,1),random_statistics_NB1(:,2),'o', 'blue');
axis([0 25 0 20])
set(handaxes3, 'box','off');
xlabel('N. CU'); ylabel('Avg N. clusters'); 


random_statistics_EC1=csvread('/home/cristina/DIEE/Cluster analysis/Eclipse/CURandomClustersEC3.3.csv', 1,0)


ids_statistics_EC1=csvread('/home/cristina/DIEE/Cluster analysis/Ids/Ids_Clustering_SP_dist_1_EC3.3.csv', 1,0);
id_statistics_EC1=csvread('/home/cristina/DIEE/Cluster analysis/Ids/Id_Clustering_SP_dist_1_EC3.3.csv', 1,0);

figure;
handaxes1 = axes('position', [0.1 0.1 0.8 0.8]);


% Main ids plot
scatter(random_statistics_EC1(:,1),random_statistics_EC1(:,2),'o', 'blue');
hold on
scatter(ids_statistics_EC1(:,1),ids_statistics_EC1(:,3),'*','red');
axis([0 15000 0 1900])

xlabel('N. CU'); ylabel('Avg N. clusters');
set(handaxes1, 'box', 'off');

hleg1=legend('random', 'ids');
set(hleg1,'Location','NorthWest');
%title({'Eclipse: confronto tra clusterizzazione casuale';' e clusterizzazione con ids';' ' },'FontSize',12.5);

% Add another set of axes
handaxes3 = axes('position', [0.65 0.58 0.2 0.3]);
scatter(ids_statistics_EC1(:,1),ids_statistics_EC1(:,3),'*','red');
hold on
scatter(random_statistics_EC1(:,1),random_statistics_EC1(:,2),'o', 'blue');
axis([0 25 0 20])
set(handaxes3, 'box','off');
xlabel('N. CU'); ylabel('Avg N. clusters'); 




issues_statistics_NB1=csvread('/home/cristina/DIEE/Cluster analysis/Netbeans/Issues/Issues_Clustering_SP_dist_1_NB4.0.csv', 1,0);


figure;
handaxes1 = axes('position', [0.1 0.1 0.8 0.8]);

% Main issue plot
scatter(random_statistics_NB1(:,1),random_statistics_NB1(:,2),'o', 'blue');
hold on
scatter(issues_statistics_NB1(:,1),issues_statistics_NB1(:,3),'*','red');
axis([0 15000 0 1900])

xlabel('N. CU', 'Fontsize', 16); ylabel('Avg N. clusters','Fontsize', 16);
set(handaxes1, 'box', 'off');

hleg1=legend('random', 'issues')
set(hleg1,'Location','NorthWest')
%title({'Netbeans: confronto tra clusterizzazione casuale';' e clusterizzazione con issue';' ' },'FontSize',12.5)

% Add another set of axes
handaxes3 = axes('position', [0.65 0.58 0.2 0.3]);
scatter(issues_statistics_NB1(:,1),issues_statistics_NB1(:,3),'*','red');
hold on
scatter(random_statistics_NB1(:,1),random_statistics_NB1(:,2),'o', 'blue');
axis([0 25 0 20])
%set(handaxes3, 'box','off');
xlabel('N. CU','Fontsize', 14); ylabel('Avg N. clusters','Fontsize', 14);


                              
                              

                                                         

                              
issues_statistics_EC1=csvread('/home/cristina/DIEE/Cluster analysis/Eclipse/Issues/Issues_Clustering_SP_dist_1_EC3.3.csv', 1,0)

 figure;

handaxes1 = axes('position', [0.1 0.1 0.8 0.8]);
                          
% Main plot
scatter(random_statistics_EC1(:,1),random_statistics_EC1(:,2),'o', 'blue');
hold on
scatter(issues_statistics_EC1(:,1),issues_statistics_EC1(:,3),'*','red');
axis([0 15000 0 1200])

xlabel('N. CU'); ylabel('Avg N. clusters');
set(handaxes1, 'box', 'off');

hleg1=legend('random', 'issues')
set(hleg1,'Location','NorthWest')
%title({'Eclipse: confronto tra clusterizzazione casuale e clusterizzazione con issue';' ' },'FontSize',12.5)

% Add another set of axes
handaxes3 = axes('position', [0.65 0.58 0.2 0.3]);
scatter(issues_statistics_EC1(:,1),issues_statistics_EC1(:,3),'*','red');
hold on
scatter(random_statistics_EC1(:,1),random_statistics_EC1(:,2),'o', 'blue');
axis([0 25 0 20])
%set(handaxes3, 'box','off');
xlabel('N. CU'); ylabel('Avg N. clusters');


                              
                              
bugs_statistics_NB1=csvread('/home/cristina/DIEE/Cluster analysis/Netbeans/Bugs/Bugs_Clustering_dist_1_SP_NB4.0.csv', 1,0)

random_statistics_NB1=csvread('/home/cristina/DIEE/Cluster analysis/Netbeans/CURandomClustersNB4.0_primecolonne.csv', 1,0)
figure;

handaxes1 = axes('position', [0.1 0.1 0.8 0.8]);
                           
% Main plot
scatter(random_statistics_NB1(:,1),random_statistics_NB1(:,2),'o', 'blue');
hold on
scatter(bugs_statistics_NB1(:,1),bugs_statistics_NB1(:,3),'*','red');
axis([0 15000 0 1900])

xlabel('N. CU', 'FontSize', 16); ylabel('Avg N. clusters', 'FontSize', 16);
set(handaxes1, 'box', 'off');

hleg1=legend('random', 'bugs')
set(hleg1,'Location','NorthWest')
%title({'Netbeans: confronto tra clusterizzazione casuale';' e clusterizzazione con bugs';' ' },'FontSize',12.5)

% Add another set of axes
handaxes3 = axes('position', [0.65 0.58 0.2 0.3]);
scatter(bugs_statistics_NB1(:,1),bugs_statistics_NB1(:,3),'*','red');
hold on
scatter(random_statistics_NB1(:,1),random_statistics_NB1(:,2),'o', 'blue');
axis([0 25 0 20])
set(handaxes3, 'box','off');
xlabel('N. CU'); ylabel('Avg N. clusters');


                              
                              

                                                         

                              
bugs_statistics_EC1=csvread('/home/cristina/DIEE/Cluster analysis/Eclipse/Bugs/Bugs_Clustering_SP_dist_1_EC3.3.csv', 1,0)

random_statistics_EC1=csvread('/home/cristina/DIEE/Cluster analysis/Eclipse/CURandomClustersEC3.3.csv', 1,0)
figure;

handaxes1 = axes('position', [0.1 0.1 0.8 0.8]);
                           
% Main plot
scatter(random_statistics_EC1(:,1),random_statistics_EC1(:,2),'o', 'blue');
hold on
scatter(bugs_statistics_EC1(:,1),bugs_statistics_EC1(:,3),'*','red');
axis([0 15000 0 1200])

xlabel('N. CU'); ylabel('Avg N. clusters');
set(handaxes1, 'box', 'off');

hleg1=legend('random', 'bugs')
set(hleg1,'Location','NorthWest')
%title({'Eclipse: confronto tra clusterizzazione casuale e clusterizzazione con bugs';' ' },'FontSize',12.5)

% Add another set of axes
handaxes3 = axes('position', [0.65 0.58 0.2 0.3]);
scatter(bugs_statistics_EC1(:,1),bugs_statistics_EC1(:,3),'*','red');
hold on
scatter(random_statistics_EC1(:,1),random_statistics_EC1(:,2),'o', 'blue');
axis([0 25 0 20])
set(handaxes3, 'box','off');
xlabel('N. CU'); ylabel('Avg N. clusters');


                              

                                                         
