# Step 1: Base Image
FROM node:18

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Build the Next.js app
RUN npm run build

# Start the app
CMD ["npm", "run", "dev"]
