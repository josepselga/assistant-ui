# Use official Node.js image as the base
FROM node:22.15.1-alpine

# Set working directory
WORKDIR /realster

# Install dependencies
COPY package.json package-lock.json* ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Start the React development server
WORKDIR /realster/realster

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "run", "dev"]