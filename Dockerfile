#start with the FastApi base image
FROM demisto/fastapi:0.111.0.94008
WORKDIR /app
COPY . /apP
RUN pip install --no-cache-dir firebase-admin pydantic
EXPOSE 5000
CMD [python3 mini_groq.py]
#COPY .env /app
# Set environment variables from .env file
# ENV FILE LOCATION=/app/.env