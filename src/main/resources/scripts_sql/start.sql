insert into marque (nom) values('Peugeot');
insert into marque (nom) values('Renault');
insert into marque (nom) values('Citroën');
insert into marque (nom) values('Fiat');
insert into marque (nom) values('Dacia');
insert into marque (nom) values('Toyota');
insert into marque (nom) values('BMW');
insert into marque (nom) values('Hyundai');
insert into marque (nom) values('Kia');
insert into marque (nom) values('Volkswagen');
insert into marque (nom) values('Skoda');
insert into marque (nom) values('Seat');
insert into modele (nom, marque_id) values('208',1);
insert into modele (nom, marque_id) values('2008',1);
insert into modele (nom, marque_id) values('308',1);
insert into modele (nom, marque_id) values('3008',1);
insert into modele (nom, marque_id) values('508',1);
insert into modele (nom, marque_id) values('5008',1);
insert into modele (nom, marque_id) values('Clio',2);
insert into modele (nom, marque_id) values('Megane',2);
insert into modele (nom, marque_id) values('Twingo',2);
insert into modele (nom, marque_id) values('C3',3);
insert into modele (nom, marque_id) values('C4',3);
insert into modele (nom, marque_id) values('C5',3);
insert into modele (nom, marque_id) values('500',4);
insert into modele (nom, marque_id) values('500X',4);
insert into modele (nom, marque_id) values('Panda',4);
insert into modele (nom, marque_id) values('Duster',5);
insert into modele (nom, marque_id) values('Spring',5);
insert into modele (nom, marque_id) values('Yaris',6);
insert into modele (nom, marque_id) values('Corolla',6);
insert into modele (nom, marque_id) values('Rav4',6);
insert into modele (nom, marque_id) values('Serie 3',7);
insert into modele (nom, marque_id) values('Serie 5',7);
insert into modele (nom, marque_id) values('Serie 7',7);
insert into modele (nom, marque_id) values('i20',8);
insert into modele (nom, marque_id) values('i30',8);
insert into modele (nom, marque_id) values('Ceed',9);
insert into modele (nom, marque_id) values('Niro',9);
insert into modele (nom, marque_id) values('Sportage',9);
insert into modele (nom, marque_id) values('Golf',10);
insert into modele (nom, marque_id) values('Polo',10);
insert into modele (nom, marque_id) values('Fabia',11);
insert into modele (nom, marque_id) values('Octavia',11);
insert into modele (nom, marque_id) values('Leon',12);
insert into modele (nom, marque_id) values('Cupra',12);
insert into commune (nom, code_postal) values('Montpellier',34000);
insert into commune (nom, code_postal) values('Nîmes',30000);
insert into commune (nom, code_postal) values('Marseille',13000);
insert into adresse (numero, voie, commune_id) values(12, 'rue du Faubourg de Boutonnet', 1);
insert into adresse (numero, voie, commune_id) values(1065, 'Avenue du Père Soulas', 1);
insert into adresse (numero, voie, commune_id) values(35, 'Boulevard Gambetta', 2);
insert into adresse (numero, voie, commune_id) values(13, 'Avenue Georges Pompidou', 2);
insert into adresse (numero, voie, commune_id) values(2, 'Quai du Port', 3);
insert into adresse (numero, voie, commune_id) values(15, 'Avenue du Prado', 3);
insert into utilisateur (email, mot_de_passe, nom) values('admin1@gestit.fr', 'passAdmin1', 'Admin1');
insert into utilisateur (email, mot_de_passe, nom) values('admin2@gestit.fr', 'passAdmin2', 'Admin2');
insert into utilisateur (email, mot_de_passe, nom) values('collab1@gestit.fr', 'passCollab1', 'Collab1');
insert into utilisateur (email, mot_de_passe, nom) values('collab2@gestit.fr', 'passCollab2', 'Collab2');
insert into utilisateur (email, mot_de_passe, nom) values('orga1@gestit.fr', 'passOrga1', 'Orga1');
insert into utilisateur (email, mot_de_passe, nom) values('orga2@gestit.fr', 'passOrga2', 'Orga2');
insert into utilisateur (email, mot_de_passe, nom) values('c3@gestit.fr', 'c3', 'c3');
insert into utilisateur (email, mot_de_passe, nom) values('c4@gestit.fr', 'c4', 'c4');
insert into utilisateur (email, mot_de_passe, nom) values('c5@gestit.fr', 'c5', 'c5');
insert into utilisateur (email, mot_de_passe, nom) values('c6@gestit.fr', 'c6', 'c6');
insert into utilisateur (email, mot_de_passe, nom) values('c7@gestit.fr', 'c7', 'c7');
insert into utilisateur (email, mot_de_passe, nom) values('c8@gestit.fr', 'c8', 'c8');
insert into utilisateur (email, mot_de_passe, nom) values('c9@gestit.fr', 'c9', 'c9');
insert into utilisateur (email, mot_de_passe, nom) values('c10@gestit.fr', 'c10', 'c10');
insert into utilisateur_roles (roles, utilisateur_id) values('ADMiNISTRATEUR',1);
insert into utilisateur_roles (roles, utilisateur_id) values('ADMINISTRATEUR',2);
insert into utilisateur_roles (roles, utilisateur_id) values('COLLABORATEUR',3);
insert into utilisateur_roles (roles, utilisateur_id) values('COLLABORATEUR',4);
insert into utilisateur_roles (roles, utilisateur_id) values('COLLABORATEUR',5);
insert into utilisateur_roles (roles, utilisateur_id) values('COLLABORATEUR',6);
insert into vehicule_perso(modele_id, nombre_de_place_disponibles, proprietaire_id, immatriculation) values (1, 5, 5, '34-XXX-43');
insert into vehicule_perso(modele_id, nombre_de_place_disponibles, proprietaire_id, immatriculation) values (2, 5, 6, '43-YYY-34');
insert into vehicule_service(modele_id, nombre_de_place_disponibles, immatriculation, categorie, motorisation, statut, photo_url) values (1, 5, '11-ZZZ-11', 'COMPACTES', 'THERMIQUE', 'EN_SERVICE','https://m.media-amazon.com/images/I/71E32iPE92L._AC_SL1500_.jpg');
insert into vehicule_service(modele_id, nombre_de_place_disponibles, immatriculation, categorie, motorisation, statut, photo_url) values (3, 5, '22-AAA-22', 'COMPACTES', 'THERMIQUE', 'EN_SERVICE','https://m.media-amazon.com/images/I/71E32iPE92L._AC_SL1500_.jpg');
insert into reservation_vehicule_service (collaborateur_id, vehicule_service_id, date_heure_depart, date_heure_retour) values (1, 1, '2023-07-30 14:00:00', '2023-08-01 16:00:00');
insert into reservation_vehicule_service (collaborateur_id, vehicule_service_id, date_heure_depart, date_heure_retour) values (1, 1, '2023-07-31 18:00:00', '2023-08-04 13:30:00');
insert into reservation_vehicule_service (collaborateur_id, vehicule_service_id, date_heure_depart, date_heure_retour) values (12, 2, '2023-06-30 19:00:00', '2023-08-04 13:30:00');
insert into covoiturage (distance_km, duree_trajet, nombre_places_restantes, date_depart, adresse_arrivee_id, adresse_depart_id, organisateur_id, vehicule_perso_id) values (150, 3, 1, '2023-08-01', 1, 3, 5, 1);
insert into covoiturage (distance_km, duree_trajet, nombre_places_restantes, date_depart, adresse_arrivee_id, adresse_depart_id, organisateur_id, vehicule_perso_id) values (110, 3, 4, '2019-08-01', 1, 3, 5, 1);
insert into covoiturages_collaborateur (collaborateur_id, covoiturage_id) values (4,1);
insert into covoiturages_collaborateur (collaborateur_id, covoiturage_id) values (5,1);
insert into covoiturages_collaborateur (collaborateur_id, covoiturage_id) values (8,1);