#1. Build stage : Used for installing depenedencies and all .
FROM node:20-slim AS builder

#set the working directory
WORKDIR /app

#copy the package.json files required for node application
COPY package.json package-lock.json ./

#install the dependencies use npm ci as it ensure a clean installlation based on package-lock.json
#--no-optional flag to reduce the image size slightly
RUN npm ci --no-optional 

#Copy the rest of the application

COPY . .

#Build
#RUN npm run build

#. PRODUCTION STAGE
FROM node:20-slim AS production

#Security : Create a non-root user and group
#use a high UID/GID to avoid conflicts
RUN groupadd -r appgroup && useradd -r -u 10001 -g appgroup appuser
USER appuser

#Set the working directory
WORKDIR /usr/src/app

#COPY only the necessary runtime files from the builder stage
#1. Production node_modules (which may need to re-installed if the devdependcies where first install)
#2. Package files 
#2. application source/build code
COPY --from=builder --chown=appuser:appgroup /app/package.json /app/package-lock.json ./
COPY --from=builder --chown=appuser:appgroup /app/node_modules ./node_modules
COPY --from=builder --chown=appuser:appgroup /app/main.js ./

EXPOSE 3000

CMD ["npm","start"]

