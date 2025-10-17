FROM ollama/ollama:latest

# Définir les variables d'environnement
ENV OLLAMA_HOST="0.0.0.0:11434"

# Copier le script d'entrée dans le conteneur
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Exposer le port
EXPOSE 11434

# Définir le script d'entrée comme point d'entrée
ENTRYPOINT ["/entrypoint.sh"]
