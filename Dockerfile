# Utiliser une image Python officielle comme base
FROM python:3.11

# Définir le répertoire de travail dans le conteneur
WORKDIR /acces

# Copier le fichier requirements.txt et installer les dépendances
COPY ./accesproject/requirements.txt .
RUN pip install -r requirements.txt

# Copier tout le contenu du répertoire de travail local dans le conteneur
COPY . .

# Exposer le port 8000 pour accéder à l'application Django
EXPOSE 8000

# Commande pour démarrer l'application Django
CMD ["python", "./accesproject/manage.py", "runserver", "0.0.0.0:8000"]
