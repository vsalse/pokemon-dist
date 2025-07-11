docker build -f pokemon-dist/Dockerfile.frontend \
  --build-arg REACT_APP_API_URL=https://pokemon-backend-422670589510.us-central1.run.app \
  -t gcr.io/desafio-pokemon-vsalse/pokemon-frontend:latest .

docker push gcr.io/desafio-pokemon-vsalse/pokemon-frontend:latest

gcloud run deploy pokemon-frontend \
  --image gcr.io/desafio-pokemon-vsalse/pokemon-frontend:latest \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated