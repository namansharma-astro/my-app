# Use an official Node runtime as a parent image
FROM node:20-alpine

# Create and set working directory
WORKDIR /usr/src/app

# Copy package.json and optionally package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies (none now, but good practice)
RUN npm install --production

# Copy the rest of the app source code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]
