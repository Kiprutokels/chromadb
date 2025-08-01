FROM chromadb/chroma:latest

EXPOSE 8000

# Check what commands are available
CMD ["chroma", "--help"]