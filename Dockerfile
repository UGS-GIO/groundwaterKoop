# Based on the latest Node.js LTS version
FROM node:12

# Create app directory in docker
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install

# If you are building your code for production, run this instead of install
# RUN npm ci --only=production

# Copy app source code
COPY . .

# Expose the server port. This must be the same as the one in the config (config/default.json)
EXPOSE 9000

# Start the Koop app
CMD [ "node", "src/index.js" ]