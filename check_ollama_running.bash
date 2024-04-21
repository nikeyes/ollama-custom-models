#!/bin/bash

response=$(curl -s http://localhost:11434)

if [[ "$response" == *"Ollama is running"* ]]; then
    echo "OK: Ollama is running"
else
    echo "ERROR: Ollama is not running"
fi