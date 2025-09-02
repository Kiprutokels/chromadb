FROM chromadb/chroma:latest

EXPOSE 8000

# Set environment variables that ChromaDB looks for
ENV CHROMA_SERVER_HTTP_PORT=8000
ENV CHROMA_SERVER_HOST=0.0.0.0
ENV IS_PERSISTENT=TRUE

HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
  CMD curl -f http://localhost:8000/api/v2/heartbeat || exit 1
