
echo "hi"
echo "${INSTALL_BIN_DIR}"

aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | docker login --username AWS --password-stdin ${AWS_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com
# unset DOCKER_HOST
docker build -t ${AWS_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/mm:latest .

docker push ${AWS_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/mm:latest
#${AWS_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/