#!/bin/bash
# Démarrer le serveur Ollama en arrière-plan
ollama serve &

# Attendre que le serveur démarre
sleep 5

# Télécharger le modèle Gemma3
ollama pull gemma3:270m

# Attendre indéfiniment pour maintenir le conteneur en vie
tail -f /dev/null
