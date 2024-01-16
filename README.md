# GEStion de Transport Intra enTreprise
![logo du projet](logo2.png "SIGET_logo")

Dans un contexte de grande entreprise, le transport des employés, durant les horaires de travail comme les trajets domicile-lieu de travail, peut amener à faire émerger certains besoins notamment aux niveaux des aspects suivants : 
- Ethique de l’entreprise, volonté environnementale sincère.
- Image de l’entreprise (diminution de l’empreinte carbone…)
- Optimisation de la présence sur poste : diminution des retards
- Sécurité des collaborateurs, réelle ou subjective (personnel féminin utilisant les transports en commun, aisance moyenne d’un collaborateur à conduire…)
- Recherche d’axes d’amélioration concernant l’interaction entre les employés (convivialité, entraide…) 
- Optimisation de la gestion du parc automobile de la société

La mise en place d’un système d’information peut être une solution envisageable pour répondre à ces problématiques.

L’objectif du projet GESTIT vise à répondre aux problématiques citées ci-dessus.
Pour cela le logiciel propose de mettre à disposition de chaque collaborateur un espace personnel, sécurisé, accessible par une interface WEB. 

Chaque collaborateur y a la possibilité :
- D’initier (et gérer ensuite) des propositions de covoiturages aux autres, avec son véhicule personnel
- De participer à des covoiturages proposés par ses collaborateurs et gérer ensuite ses réservations.

Un module de gestion de la flotte automobile de la société est également intégré à l’application :
- Chaque collaborateur peut y réserver des véhicules pour effectuer ses déplacements professionnels 
- En outre, l’administrateur du système pourra y gérer le parc des véhicules :
    - Ajout, suppression, mise en indisponibilité des véhicules.
    - Gestion des réservations (annulations si véhicule en réparation par exemple)

## Remarque

Pour l'interface de test, l'application est fournie avec une interface grapghique sur navigateur : SwaggerUI.
Elle est accessible depuis cette adresse :
http://localhost:8080/swagger-ui.html

Nota : Le démarrage de l'application depuis la ligne de commande peut s'effectuer avec la commande suivante:
```bash
mvn spring-boot:run
```

Il reste possible de faire manuellement des requêtes http depuis 

## Pour démarrer
Pour démarrer l'application et l'utiliser, veiller à entrer au préalable les informations de votre database locale dans le fichier applications.properties :
spring.datasource.url=jdbc:mariadb://localhost:3306/gestit
spring.datasource.driver-class-name=org.mariadb.jdbc.Driver
spring.datasource.username=root
spring.datasource.password=root

Les tests quant à eux se feront via une database en mémoire, H2.


## Fonctionnalités

## Authentification

Nous avons utilisé la base de donnée Redis, il faut tout d'abord installer : redis et mysql. 
Le Redis est pour contrôler le système logIn et logOut.

Pour faire marcher le système, veuillez suivre les instructions suivantes: 

1- Démarrer l'application

src/main/java/fr/diginamic/gestit_back/GestitBackApplication.java

2- Aller le fichier start.sql en utilisant le chemin ci-dessous:
src/main/resources/scripts_sql/start.sql
Copier le script dans la base de donnée 

#### Note: `Le fichier loginMailsPW.txt dans le même répertoire contient les mots de passe en clair pour tous les utilisateurs insérés en base via le script. C'est nécessaire pour s'autentifier.`

3- Authentification
- Faire votre login et vous recevrez un TOKEN-JWT.
Aller dans  : http/testPourOA/authentification.http
Vous pouvez vous logger en COllaborateur ou en administrateur.

#### Note: `Veillez à conserver ce token JWT pour toutes les requêtes HTTP que vous souhaitez tester.`

- pour tester le log out: 

POST localhost:8080/signout
Content-Type: application/json
JWT-TOKEN: "votre JWT-TOKEN reçu lors du logIn"

## Autorisation
Des rôles, collaborateur et administrateur, sont définis et permettent de limiter l'accès à certaines méthodes.

## Gérer les utilisateurs
Pour faire l'opération CRUD pour les utilisateur, utilisez le chemin suivant :
http/testPourOA/utilisateur.http

## Gérer les covoiturages
Pour faire l'opération CRUD pour les covoiturages, utilisez le chemin suivant :
http/testPourOA/covoiturages.http

## Gérer les véhicules personnels 
Pour faire l'opération CRUD pour les véhicules personnels, utilisez le chemin suivant :
http/testPourOA/vehiculePerso.http

## Gérer les réservation des véhicules de service
Pour faire l'opération CRUD pour les réservations de véhicules de service, utilisez le chemin suivant :
http/testPourOA/reservationVS.http

## Gérer les véhicules de service
Pour faire l'opération CRUD pour les véhicules de service, utilisez le chemin suivant : 
http/testPourOA/vehiculeService.http
