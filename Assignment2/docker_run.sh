echo -e "Allowing port 3300 on the firewall"
sudo ufw allow 3300

echo -e "\nBuilding mysql database image..."
sudo docker build  -t mysql_database ./sql/
echo -e "Image built\n"

echo -e "\nBuilding flask image..."
sudo docker build  -t flask_app ./flask/
echo -e "Image built\n"

echo -e "\nCreating database container..."
sudo docker run -d -p 3300:3306 --name mysql_database -e MYSQL_ROOT_PASSWORD=toortoor mysql_database
echo -e "Database container running at localhost:3300\n"

echo -e "\nCreating flask container..."
sudo docker run -d -p 80:5000 --name flask_app --add-host host.docker.internal:host-gateway flask_app
echo -e "Flask container running at localhost:80\n
