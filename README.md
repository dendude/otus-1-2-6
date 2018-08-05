# 1 модуль

## 2 занятие

### 6 задание

Подготовить Linux машину с РНР

1. Подготовительные шаги:
    * Install [docker](https://docs.docker.com/engine/installation/)

1. Для доступа в shell контейнера:

    ```shell
    docker exec {service} /bin/bash
    ```

> Логи хранятся вне контейнера, в директории `./logs/`

---

#### Запуск через `docker run` (актуально для MacOS)
 
```shell
docker build --no-cache=true -t otus-bootstrap .docker
docker run -d -p 8080:80 -v $(pwd):/var/www/project --name otus-bootstrap otus-bootstrap
```

---