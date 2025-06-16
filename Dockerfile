# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install
COPY package*.json ./
RUN npm install

# Copy all source code
COPY . .

# App listens on port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
