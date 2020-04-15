# set -e

if [ $# -eq 0 ]; then
  echo "No arguments provided, usage:"
  echo "terraform.sh COMMAND"
  echo "example: terraform_wrapper.sh plan -input=false"
  exit 1
fi

COMMAND="plan"

terraform -version

cp ./backend/file-local.tf ./backend.tf

# Create or select a terraform workspace
terraform workspace select local || terraform workspace new local && terraform workspace select local

# Run the required command
terraform $COMMAND
