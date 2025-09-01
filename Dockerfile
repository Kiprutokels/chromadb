FROM chromadb/chroma:latest

# Default to 8000 (for local dev), but allow override via $PORT (Render)
ENV CHROMA_SERVER_HTTP_PORT=8000
ENV CHROMA_SERVER_HOST=0.0.0.0
ENV IS_PERSISTENT=TRUE

EXPOSE 8000

# Run chroma directly; use $PORT if provided, otherwise fall back to 8000
CMD ["chroma", "--port", "${PORT:-8000}"]
