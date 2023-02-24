eb init udagram-api --platform node.js --region us-east-1
eb list
eb use udagram-api-dev
eb deploy
 eb setenv \
  POSTGRES_HOST="$POSTGRES_HOST" \
  POSTGRES_USERNAME="$POSTGRES_USERNAME" \
  POSTGRES_PASSWORD="$POSTGRES_PASSWORD" \
  POSTGRES_DB="$POSTGRES_DB" \
  JWT_SECRET="$JWT_SECRET" \
  AWS_BUCKET="$AWS_BUCKET" \
  AWS_REGION="$AWS_REGION" \
  AWS_PROFILE="$AWS_PROFILE"