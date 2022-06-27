sudo ssh -t -i $1 $2 "cd web_dev_env; 
pwd;
mkdir dir_name; 
cd dir_name; 
pwd ; 
sudo yum upgrade;
sudo yum install git -y ;
git clone https://$3@github.com/lakebrains-technologies/interact_webapp.git ; 
cd interact_webapp; 
pwd; 
git checkout $4; 
git branch --show-current; 
sudo yum install docker -y;
sudo docker login ; 
sudo service docker start;
sudo docker info;
cd frontend_development/ ; 
sudo docker build -t frontend-image . ; 
sudo docker run -it -p 3000:3000 -d --name frontend-container frontend-image /bin/bash ; 
cd ../backend_development/back_end ; 
sudo docker build -t backend-image . ;
sudo docker run -it -p 8080:8080 -d --name backend-container backend-image /bin/bash;"



#git clone https://gitfront.io/r/user-2357117/LtdY2BgSkxvG/interact-webapp.git ; mkdir interact_webapp; cd interact_webapp; pwd; git checkout $3; git branch –show-current ; 
#git clone https://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@github.com/lakebrains-technologies/interact_webapp.git ; cd interact_webapp; pwd; git checkout $3; git branch –show-current ; 
#git clone https://lakebrains-technologies:@github.com/johndoe/my_project.git"
#git clone https://github.com/Maitriporwal16/Maitriporwal16.git"
#https://username:password@github.com/lakebrains-technologies/interact_webapp.git ; git checkout personal_profile"
#sudo ssh -i $1 $2 git clone git@github.com:lakebrains-technologies/interact_webapp.git 

#sudo ssh -i $1 $2 cd interact_webapp
#ssh -i "script-key.pem" ec2-user@ec2-44-202-126-125.compute-1.amazonaws.com sh run_dev_local.sh "$5"
#lakebrains-technologies/interact_webapp.git
#https://github.com/lakebrains-technologies/interact_webapp.git
#git config --global credential.helper store
