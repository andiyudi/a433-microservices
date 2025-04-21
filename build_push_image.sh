# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
echo "Building Docker image..."
sudo docker build -t item-app:v1 .

# Melihat daftar image di lokal.
echo -e "\nListing local images..."
sudo docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages dengan menerapkan saran keempat.
echo -e "\nRe-tagging image for Docker Hub..."
sudo docker tag item-app:v1 ghcr.io/andiyudi/item-app:v1

# Login ke GitHub Packages dengan menerapkan saran keempat via Terminal.
echo -e "\nLogging in to Github Packages..."
echo $PAT | docker login ghcr.io --username andiyudi --password-stdin

# Mengunggah image ke GitHub Packages dengan menerapkan saran keempat.
echo -e "\nPushing image to Github Packages..."
docker push ghcr.io/andiyudi/item-app:v1
