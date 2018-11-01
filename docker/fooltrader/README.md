## build fooltrader docker image
### run under command in the fooltrader root directory
docker builder -t foolcage/fooltrader:latest .
## run docker container
docker-compose -f docker-compose-es-ft.yml up -d
## usage
http://localhost:8888
