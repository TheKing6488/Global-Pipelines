set -euo pipefail

# Logging functions with timestamp
log_info() {
  echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - $*"
}

log_error() {
  echo "[ERROR] $(date '+%Y-%m-%d %H:%M:%S') - $*" >&2
}

# Check if the environment parameter is provided
if [ "$#" -ne 1 ]; then
  log_error "Usage: $0 {prod|dev}"
  exit 1
fi

ENVIRONMENT="$1"
log_info "Deployment environment set to: $ENVIRONMENT"

# Set the webhook URL based on the environment
case "$ENVIRONMENT" in
  prod)
    WEBHOOK_URL="${PROD_COOLIFY_WEBHOOK:-}"
    ;;
  dev)
    WEBHOOK_URL="${DEV_COOLIFY_WEBHOOK:-}"
    ;;
  *)
    log_error "Invalid environment specified. Use 'prod' or 'dev'."
    exit 1
    ;;
esac

# Ensure that required secrets are available
if [ -z "$WEBHOOK_URL" ] || [ -z "${COOLIFY_TOKEN:-}" ]; then
  log_info "Required secrets are missing. Deployment skipped."
  exit 0
fi

log_info "Starting deployment to Coolify ($ENVIRONMENT)..."

# Perform the deployment by sending a GET request with an Authorization header.
# The HTTP status code is captured in the variable RESPONSE.
RESPONSE=$(curl --silent --write-out "%{http_code}" --output /dev/null \
  --request GET "$WEBHOOK_URL" \
  --header "Authorization: Bearer $COOLIFY_TOKEN")

log_info "HTTP response code received: $RESPONSE"

# Check if the response code is 200 (OK)
if [ "$RESPONSE" -ne 200 ]; then
  log_error "Deployment failed! HTTP status code: $RESPONSE"
  exit 1
fi

log_info "Deployment successful!"
exit 0