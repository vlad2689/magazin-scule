FROM node:16 as build

WORKDIR /app

COPY . .

FROM nginx:1.23.2 AS final

# Remove default nginx static resources
RUN rm -rf /usr/share/nginx/html/*

# Add your nginx.conf
COPY nginx/nginx_website.conf /etc/nginx/conf.d/default.conf

# Copies static resources from builder stage
COPY --from=build /app/dist/ /usr/share/nginx/html

EXPOSE 3000

ENTRYPOINT ["nginx", "-g", "daemon off;"]