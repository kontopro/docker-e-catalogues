# Use an official Node.js runtime as a parent image
FROM node:20.7-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port your application will run on
EXPOSE 3000

# Define how to start your application
CMD ["npm", "run", "build"]
