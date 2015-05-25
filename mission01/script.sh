docker build -t "hello/world:v42" .
docker run -d --name=hello -p 80 -it "hello/world:v42"