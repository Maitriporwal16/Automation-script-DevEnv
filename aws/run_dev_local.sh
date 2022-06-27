#!bin/bash

sudo git branch -a

echo "$1"

branch="$1"


if [ -z "$branch" ];
then
	branch="main";
fi

echo " -------------------------------"
echo "Checkout branch $branch"
echo " -------------------------------"

git checkout $branch

#branch=$(git symbolic-ref --short -q HEAD)
#git clone --branch $branch git@github.com:lakebrains-technologies/interact_webapp.git && cd interact_webapp
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
#git checkout personal_profile

#build docker image from a frontend-Dockerfile
cd frontend_development/
sudo docker build -t frontend-image .
sudo docker run -it -p 3000:3000 -d --name frontend-container frontend-image /bin/bash

#build docker image from backend-Dockerfile 
cd ../backend_development/back_end/
sudo docker build -t backend-image .
sudo docker run -it -p 8080:8080 -d --name backend-container backend-image /bin/bash

