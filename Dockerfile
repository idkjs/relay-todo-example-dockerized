FROM mhart/alpine-node:8
WORKDIR /usr/src/app
COPY . ./
RUN npm install babel-cli -g
RUN npm install
RUN npm run update-schema \
  npm run build 

EXPOSE 3000

CMD ["npm", "start"]