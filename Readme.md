# Projet TLC

Yoann DEWILDE

Ce projet est le déploiement de l'application Doodle sur une machine virtuelle.

# Installation sur VM

Avec `deploy.sh` 
- Modifier la variable `vm` dans le script et y assigner le domaine ou l'IP de la VM.
- Exécuter le script. Le mot de passe est demandé plusieurs fois, pour chaque fichier, c'est normal.

Manuellement :
- Créer le dossier `~/doodle` sur la VM.
- Copier le dossier `nginx` dans `~/doodle`.
- Copier les fichiers suivants *à la racine* de `~/doodle` :
  - docker-compose.yaml
  - api/APIKEY.txt

# Exécution

- Se connecter à la VM.
- Exécuter ces commandes :

```bash
cd ~/doodle
docker compose -f docker-compose.yaml up 
```

# Intégration continue

GitLab CI/CD a été mis en place. A chaque commit sur main :
- Les images sont construites et poussées sur Docker Hub.
- Les fichiers de configuration et docker-compose sont envoyés vers `ydew.istic.univ-rennes1.fr`.
- L'application est lancée en tâche de fond.