# get the base node image
FROM node:alpine as builder

# set the working dir for container
WORKDIR /app

# copy the json file first
COPY package.json .

# install npm dependencies
RUN npm i

# copy other project files
COPY . .

# build the folder
RUN npm run build

# Handle Nginx
FROM nginx

COPY --from=builder /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]