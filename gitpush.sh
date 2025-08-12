GIT_TOKEN=$(aws secretsmanager get-secret-value --secret-id github_token --query SecretString --output text | jq -r '.github_token')
# Set Git remote URL with token embedded
git remote set-url origin https://$GIT_TOKEN@github.com/kaustubhwadkar/Kubernetstest.git

# Add, commit and push changes
git add deployment.yaml
git commit -m "Update deployment image tag"
git push origin main
