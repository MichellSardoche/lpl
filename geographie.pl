 
ville(paris).
ville(orleans).
ville(strasbourg).
ville(mulhouse).
ville(colmar).
ville(nancy).
ville(toulouse).
ville(grenoble).

region('Ile de France').
region('Alsace').
region('Rhone Alpes').
region('Languedoc Roussillon').
region('Centre').

est_dans('rue des ecureuils', 'quartier de la gare').
est_dans('quartier de la gare', onzieme).
est_dans(onzieme, paris).
est_dans('lieu dit de l\'impasse', orleans).
est_dans('rue du renard prechant', krutenau).
est_dans(krutenau, strasbourg). 
est_dans('quartier des pecheur', 'zone du Rhin').
est_dans('zone du Rhin', strasbourg).
est_dans('rue Oberweg', 'banlieue ouest strasbourgeoise').
est_dans( 'banlieue ouest strasbourgeoise', strasbourg).
est_dans('rue Oberweg - Nancy', 'quartier de l hopital').
est_dans('quartier de l hopital', nancy).
est_dans('rue des bourgeois', 'quartier des bourgeois').
est_dans('quartier des bourgeois', colmar).
est_dans('rue des ma�ons', mulhouse).
est_dans(premier, paris).
est_dans('Ile de la Cit�', premier).
est_dans('rue des Pyr�n�es', toulouse).

