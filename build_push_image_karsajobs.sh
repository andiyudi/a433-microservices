#Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama karsajobs:latest (untuk backend).
echo "Building Docker image for GitHub Package..."
sudo docker build -t ghcr.io/andiyudi/karsajobs:latest

#Perintah untuk login ke GitHub Package.
echo "Logging in to GitHub Package..."
echo $PAT2 | docker login ghcr.io -u andiyudi --password-stdin

#Perintah untuk push image ke GitHub Package.
echo "Pushing Docker image to GitHub Package..."
sudo docker push ghcr.io/andiyudi/karsajobs:latest