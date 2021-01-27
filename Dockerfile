FROM node:15.6.0-alpine3.10 AS builder
WORKDIR /app/src/
COPY package* /app/src/
RUN npm  i 
COPY . /app/src/
#RUN  npm run build

FROM alpine:3.8
COPY --from=builder /app/src /app/
EXPOSE 3000
<<<<<<< HEAD
CMD ["npm","start"]
=======
#CMD ["npm","start"]
>>>>>>> 841d591e735b6235894fcac1cb42833749ecc992
