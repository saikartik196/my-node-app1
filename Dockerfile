# Use the official Node.js image as the base
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all other application files
COPY . .

# Expose the port the app will run on
EXPOSE 7000

ENV PORT = 7000

# Start the app
CMD [ "npm", "start" ]

