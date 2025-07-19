# i am using base image
FROM node:18-alpine

# Setiing working directory
WORKDIR /app

# Copying package.json and installing dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy the code
COPY . .

# Exposing the port
EXPOSE 3000

# i will Start the Node.js app
CMD ["node", "app.js"]

