build:
	docker build -t test .
	
run: 
	docker run -itd --name dockEx -p 8081:1002 test

exec:
	docker exec -it dockEx /bin/bash	

clean:
	docker stop dockEx; docker rm dockEx; docker rmi test


