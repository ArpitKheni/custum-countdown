# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy all the files from the current directory to the container
COPY . .

# Expose the port that the app is running on
EXPOSE 8080

# Define the command to start the application
CMD ["npm", "start"]
