# Use an official Node.js runtime as a parent image
FROM node:18

RUN mkdir /app 

# Copy package.json and package-lock.json to the working directory
ADD . /app

# Set the working directory inside the container
WORKDIR /app


# # Copy the rest of your application code to the working directory
# COPY . .

# Install project dependencies
# RUN npm install


# Expose the port your application will run on
EXPOSE 80
EXPOSE 443

# Define the command to start your application
CMD [ "make", "dev" ]


