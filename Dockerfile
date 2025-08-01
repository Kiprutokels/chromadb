FROM chromadb/chroma:latest

# Set environment variables
ENV CHROMA_SERVER_HTTP_PORT=8000
ENV CHROMA_SERVER_HOST=0.0.0.0

# Expose port
EXPOSE 8000

# Create data directory
RUN mkdir -p /chroma/chroma

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:8000/api/v1/heartbeat || exit 1

# Run ChromaDB
CMD ["chroma", "run", "--host", "0.0.0.0", "--port", "8000", "--path", "/chroma/chroma"]