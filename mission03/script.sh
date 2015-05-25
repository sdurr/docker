docker build -t "share" .
docker run -ti -v /Users/Shared:/share "share"
