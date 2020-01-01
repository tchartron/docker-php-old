## Docker environment

### Usage
`git clone git@git.webexpertbusiness.net:web-expert-business/tools/tardis/docker.git`  
`cp .env.example .env`  
`cp docker-compose.example docker-compose.yml`  
Adapt volume of 'php' and 'web' containers to match tardis web app location on your host  
`docker-compose up`  
`cd tardis/web/app/directory`  
`composer install`  
`cp .env.example .env`  
`php artisan key:generate`  
Go to `tardis.web:8181`  
