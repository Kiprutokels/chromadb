FROM chromadb/chroma:latest

EXPOSE 8000

# Let ChromaDB use its default startup process
CMD ["uvicorn", "chromadb.app:app", "--host", "0.0.0.0", "--port", "8000"]