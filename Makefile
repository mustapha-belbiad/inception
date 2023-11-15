
.PHONY= all build up down  clean fclean

all : build up


build: 
	sudo docker compose -f srcs/docker-compose.yml build
up : 
	sudo docker compose -f srcs/docker-compose.yml up

down:
	sudo docker compose -f srcs/docker-compose.yml down

clean : down
	sudo rm -rf /home/mbelbiad/data/wp_data/*
	sudo rm -rf /home/mbelbiad/data/db_data/*
	sudo docker system prune -af 
	sudo docker image prune -f
	sudo docker images -q | sudo xargs -r docker rmi
	sudo docker volume ls -q | sudo xargs -r  docker volume rm

fclean : clean

re : fclean all