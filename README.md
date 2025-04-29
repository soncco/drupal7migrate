$ docker build . -t ${CONTAINER_IMAGE}:latest

$ docker run -d --env-file ./.env -p ${PORT}:80 -v ${PWD}/drupal-data/modules:/var/www/html/sites/all/modules -v ${PWD}/drupal-data/themes:/var/www/html/sites/all/themes -v ${PWD}/drupal-data/libraries:/var/www/html/sites/all/libraries -v ${PWD}/drupal-data/files:/var/www/html/sites/default/files --network ${NETWORK} --name ${CONTAINER_NAME} ${CONTAINER_IMAGE}

CREATE USER 'admin'@'%' IDENTIFIED WITH mysql_native_password BY 'pwd';
GRANT ALL PRIVILEGES ON db.\* TO 'admin'@'%';
