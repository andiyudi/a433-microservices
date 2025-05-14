# Gunakan Node.js sebagai base image
FROM node:14-alpine

# Set working directory di dalam container
WORKDIR /app

# Salin seluruh kode aplikasi ke working directory
COPY . .

# Instal dependensi Node.js
RUN npm install --production

# Expose port yang digunakan oleh aplikasi
EXPOSE 3000

# Jalankan aplikasi Node.js
CMD [ "npm", "start" ]