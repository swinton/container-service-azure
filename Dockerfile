FROM node:12.2.0-alpine

RUN npm install -g http-server
# Add `/node_modules/.bin` to $PATH
ENV PATH /node_modules/.bin:$PATH

RUN mkdir app
WORKDIR /app

COPY ./dist .

# Expose port 8080
EXPOSE 8080

# Start the web app
CMD ["http-server"]