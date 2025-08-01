FROM chromadb/chroma:latest

EXPOSE 8000

# Set environment variables that ChromaDB looks for
ENV CHROMA_SERVER_HTTP_PORT=8000
ENV CHROMA_SERVER_HOST=0.0.0.0
ENV IS_PERSISTENT=TRUE

# Don't specify CMD - use the image's default