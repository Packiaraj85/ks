docker build -t packiarajd/idpa:ssh-server .

docker run -dit -p 2222:22 --network test packiarajd/idpa:ssh-server sh