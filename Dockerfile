# Utilisez l'image de base de Flutter
FROM flutter:2.10.0

# Copiez le contenu de votre application dans le conteneur
COPY . /app

# Définissez le répertoire de travail
WORKDIR /app

# Obtenez les dépendances de votre application
RUN flutter pub get

# Construisez votre application Flutter en mode release
RUN flutter build apk --release
