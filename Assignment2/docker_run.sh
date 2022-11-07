sudo ufw allow 3300

sudo docker build  -t mysql_database ./sql/

sudo docker build  -t flask_app ./flask/

sudo docker run -d -p 3300:3306 --name mysql_database -e MYSQL_ROOT_PASSWORD=toortoor mysql_database

sudo docker run -d -p 80:5000 --name flask_app --add-host host.docker.internal:host-gateway flask_app
