# Gunakan Node.js sebagai base image
FROM node:14-alpine

# Set working directory di dalam container
WORKDIR /app

# Instal dependensi Node.js
RUN npm install --production

# Salin seluruh kode aplikasi ke working directory
COPY . .

# Expose port yang digunakan oleh aplikasi
EXPOSE 3000

# Jalankan aplikasi Node.js
CMD [ "node", "index.js" ]