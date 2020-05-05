FROM node:12.2.0-alpine

# Add `/node_modules/.bin` to $PATH
ENV PATH /node_modules/.bin:$PATH

# Install dependencies
COPY . .
RUN npm install --silent
RUN npm run build

# Expose port 8080
EXPOSE 8080

# Start the web app
CMD ["npm", "start"]
