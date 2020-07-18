sudo docker build -t exc111 .
sudo docker run -p 8008:8000 -v $(pwd)/logs.txt:/logs.txt exc111
