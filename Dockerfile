# Use a minimal Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the files
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
