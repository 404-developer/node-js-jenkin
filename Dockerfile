   # Use a lightweight official Node.js image as the base
   FROM node:20-alpine

   # Set the working directory inside the container
   WORKDIR /app

   # Copy package.json and package-lock.json to leverage Docker's layer caching
   COPY package*.json ./

   # Install application dependencies
   RUN npm install

   # Copy the rest of the application code
   COPY . .

   # Expose the port your Node.js application listens on
   EXPOSE 3000

   # Command to run your Node.js application
   CMD ["node", "app.js"]