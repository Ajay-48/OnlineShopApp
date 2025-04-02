FROM node:18-alpine as base

# Create app directory
WORKDIR /app

# Install dependencies only when needed
COPY package.json package-lock.json ./

# Install app dependencies
RUN npm install

# Copy app source code
COPY . .

# Expose port
EXPOSE 5173

# Start app
CMD ["npm", "run", "dev"]
