# Ceci est un readme qui va vous  permettre de tester votre application php 

## De quoi vous aurez besoin
1. Docker
2. Visual studio code


## Comment faire les tests

1. Lancez Docker (desktop)

2. Ouvrez votre terminal

3. Rendez-vous dans le répertoire dans lequel se trouve le projet. Remplacez 'chemin vers répertoire' par le chemin vers le répertoire dans lequel se trouve le projet. 

cd 'chemin vers répertoire'

4. Tapez la commande suivante : 

docker-compose up

5. A présent, ouvrez un autre terminal dans le même répertoire pour récuprer le nom du conteneur de l'application rabbitmq. Tapez la commande :
docker ps

Vérifiez le nom du conteneur. Copiez ce nom dans client.php sur la ligne 8  à la place de 'localhost'. Dans la plupart des cas ce nom est 'php-app-rabbitmq-1'

6. Rendez vous à l'adresse http://localhost:8080/client.php . Vous devriez voir s'afficher le message 'Sent Video To Server!' tout en bas.

