FROM node:20-slim

ENV NODE_ENV=production
WORKDIR /app

# Copy cả package-lock.json để cài đúng phiên bản đã chạy được
COPY package*.json ./
RUN npm ci --omit=dev || npm install --omit=dev

COPY . .

EXPOSE 8080

CMD ["node", "index.js"]
