FROM node:12

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json /app/

RUN npm install

# Copy the app resource files to the filesystem of the container
COPY . /app

# Informs Docker that the container listens 
# on the specified network ports at runtime.
EXPOSE 3000

# Configure the container that will run as an executable.
ENTRYPOINT ["npm", "start"]