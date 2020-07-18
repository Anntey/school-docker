sudo docker volume create exc18-volume
sudo docker run -v exc18-volume:/usr/app devopsdockeruh/first_volume_exercise 
sudo docker volume inspect exc18-volume

