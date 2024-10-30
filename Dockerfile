# Use the official Node.js image as the base
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and install dependencies
COPY package.json .
RUN npm install

# Copy all other application files
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

