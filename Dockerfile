# Use an official Node.js image as the base
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

#EXPOSE PORT
#EXPOSE 3000:3000

# Build the React app
RUN npm run build

# Specify the command to run when the container starts
CMD ["npm", "start"]