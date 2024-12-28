# Stage 1: Build the Angular application
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --prod

# Stage 2: Serve the application using Nginx
FROM nginx:alpine
# Copy files from the correct directory
COPY --from=build /app/dist/drizzleangular/browser /usr/share/nginx/html/drizzleangular
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80