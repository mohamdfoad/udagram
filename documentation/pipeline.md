# Pipeline process

## Orbs

The Orbs section of .circleci/config.yml uses a docker image and instructs to install node@5.0.2 , elastic-beanstalk cli@2.0.1 and aws cli@3.1.1 
run
## buildWDeploy job

In the buildWDeploy job we are using the docker image created by circlec, for the steps we are installing node version 14.15 then downloading the code from our github repository using the checkout command, then instructions to run as follows:
      - run command: npm run api:install      to install API dependencies; build node_modules folder
      - run command: npm run api:build        to build API and Build www folder
      - run command: npm run api:deploy       to deploy API using EB CLI
      - run command: npm run frontend:install to install Front-End Depnedencies
      - run command: npm run frontend:build   to build Front-End  (www angular folder) 
      - run command: npm run frontend:deploy  to deploy Front-End to S3 Bucket using aws cli
          
## Workflow
instructs the order of execution of the only job `buildWDeploy`

## Diagram
Please refer to file `./documentation/screencaps/pipeline.png`