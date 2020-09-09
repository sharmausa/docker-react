FROM node:alpine as builder

WORKDIR "/app"

COPY package.json .
run npm install

copy . .

cmd ["npm","run","build"]                  

from nginx
copy --from=builder  /app/build /usr/share/nginx/html
