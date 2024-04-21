# ollama-custom-models
My personal customs models for local LLMs with Ollama

# Install Ollama locally
```bash
brew install ollama
```

# Uninstall Ollama
```bash
brew uninstall ollama
```

# Run Ollama with docker
```bash
docker run -d -v $(pwd)/.ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
```

# Run OpenwebUI with docker
```bash
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v $(pwd)/.open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main


# docker run -d -p 3000:8080 -e OLLAMA_BASE_URL=http://localhost:11434 -v $(pwd)/.open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
```


# Pass in prompt as arguments
```bash
$ ollama run gemma:2b "Summarize this file: $(cat README.md)"
```

# Download a model
```bash
docker exec -it ollama ollama pull gemma:2b
```

# Show model info
```bash
docker exec -it ollama ollama show --modelfile gemma:2b
```

# Delete local model
```bash
docker exec -it ollama ollama rm gemma:2b
```

# List installed local models
```bash
docker exec -it ollama ollama list
```

# Delete local model
```bash
docker exec -it ollama ollama rm gemma:2b
```

