FROM chromadb/chroma:latest

# Create data directory with proper permissions
RUN mkdir -p /chroma/chroma && chown -R chroma:chroma /chroma

# Expose the port
EXPOSE 8000

# Health check for Railway
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8000/api/v1/heartbeat || exit 1

# Set working directory
WORKDIR /chroma

# Run ChromaDB server
CMD ["chroma", "run", "--host", "0.0.0.0", "--port", "8000", "--path", "/chroma/chroma"]