# service
cd ./service
sh build.sh
cd ..

# webserver
cd ./webserver
sh build.sh
cd ..

# website
cd ./website
# make dir in case of no target directory
mkdir ../webserver/html
sh release.sh
cd ..

# startup
echo starting…
cd ./service
sh stop.sh
sh startup.sh

# show web page from "localhost:8000"

