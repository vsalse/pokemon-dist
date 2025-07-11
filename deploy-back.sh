docker build -t gcr.io/desafio-pokemon-vsalse/pokemon-backend:latest -f pokemon-dist/Dockerfile.backend .

docker push gcr.io/desafio-pokemon-vsalse/pokemon-backend:latest

gcloud run deploy pokemon-backend \
  --image gcr.io/desafio-pokemon-vsalse/pokemon-backend:latest \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated \
  --vpc-connector=serverless-connector \
  --vpc-egress=private-ranges-only \
  --set-env-vars REDIS_HOST=10.128.0.2,REDIS_PORT=6379