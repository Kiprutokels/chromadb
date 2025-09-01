FROM chromadb/chroma:latest

ENV CHROMA_SERVER_HOST=0.0.0.0
ENV IS_PERSISTENT=TRUE

# On Render, always bind to $PORT (they inject it at runtime)
CMD ["chroma", "--port", "${PORT}"]
