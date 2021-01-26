FROM node:15.6.0-alpine3.10 AS builder
WORKDIR /app/src/
COPY package* /app/src/
RUN npm  i 
COPY . /app/src/
#RUN  npm run build

FROM alpine:3.8
COPY --from=builder /app/src /app/
EXPOSE 3000
#CMD ["npm","start"]
