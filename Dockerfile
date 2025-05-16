# Gunakan Node.js sebagai base image
FROM node:14-alpine

# Set working directory di dalam container
WORKDIR /app

# Salin seluruh kode aplikasi ke working directory
COPY . .

# Install dependensi sistem
ENV NODE_ENV=production

# Instal dependensi Node.js
RUN npm install --production

# Expose port yang digunakan oleh aplikasi
EXPOSE 3001

# Jalankan aplikasi Node.js
CMD [ "npm", "start" ]