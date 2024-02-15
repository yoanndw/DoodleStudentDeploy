# Projet TLC

Yoann DEWILDE

Ce projet est le déploiement de l'application Doodle sur une machine virtuelle.

# Installation sur VM

Avec `deploy.sh` 
- Modifier la variable `vm` dans le script et y assigner le domaine ou l'IP de la VM.
- Exécuter le script. Le mot de passe est demandé plusieurs fois, pour chaque fichier, c'est normal.

Manuellement :
- Créer le dossier `~/doodle` sur la VM.
- Copier les fichiers suivants à la racine de `~/doodle` :
  - front/admin.conf
  - front/api.conf
  - front/pad.conf
  - docker-compose.vm.yaml
  - api/APIKEY.txt

# Exécution

- Se connecter à la VM.
- Exécuter ces commandes :

```bash
cd ~/doodle
docker compose -f docker-compose.vm.yaml up 
```