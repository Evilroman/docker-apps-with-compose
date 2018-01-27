### tomcat.Dockerfile

Run the default Tomcat server (CMD ["catalina.sh", "run"]):

$ docker run -it --rm -p 8888:8080 tomcat

You can test it by visiting http://container-ip:8080 in a browser or, if you need access outside the host, on port 8888:

$ docker run -it --rm -p 8888:8080 tomcat:8.0

You can then go to http://localhost:8888 or http://host-ip:8888 in a browser.
### web.Dockerfile

Run the default NGINX server with "Hello" page

$ docker run -p 80:80 -p 443:443 --name nginx evilroman/nginx:latest

### application.Dockerfile

Creation of Data Volume with simple application for Tomcat 8

$ docker build -f application.Dockerfile -t evilroman/hello-world-app .
$ docker run -it --name=hello-app evilroman/hello-world-app ls /webapps
$ docker run -it --rm -p 8888:8080 --volumes-from hello-app tomcat

### docker-compose.yml

In this file we share volume with app from "hello-world-app" image with Tomcat image.

You can try to open it via host machine: http://localhost:8888/hello-world/index.jsp

