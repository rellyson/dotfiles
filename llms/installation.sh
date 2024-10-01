#!/bin/bash

# Install ollama
curl -fsSL https://ollama.com/install.sh | sh

# Install llm models
ollama pull llama3.1
ollama pull gemma2
ollama pull codellama
