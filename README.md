# homework17

1. Образ создан по приложенному Dockerfile, загружен в репозиторий `dmitriy0kropotin/nginx:1.0`

```
docker pull dmitriy0kropotin/nginx:1.0
```

2. Стартовая страница модицифирована 

```
[root@docker17 ~]# curl http://localhost
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx-docker-dmitriy-kropotin</h1>
<p>If you see this page, the nginx web server in conteiner dmitriy-kropotin is working.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```

3. На машине с GUI проверяю. Скачиваю образ

```
[root@fedora ~]# docker pull dmitriy0kropotin/nginx:1.0
1.0: Pulling from dmitriy0kropotin/nginx
2408cc74d12b: Pull complete
8f103bb385d8: Pull complete
4d1b6751071b: Pull complete
31de2d2c7b46: Pull complete
Digest: sha256:d752cbf16bed20cce01afe72a32394ee14f9fce692b1284c415692937c2d9d77
Status: Downloaded newer image for dmitriy0kropotin/nginx:1.0
docker.io/dmitriy0kropotin/nginx:1.0
[root@fedora ~]# docker image ls
REPOSITORY               TAG       IMAGE ID       CREATED       SIZE
dmitriy0kropotin/nginx   1.0       88456521fb80   8 hours ago   9.44MB
```
4. Запускаю контейнер 

```
[root@fedora ~]# docker run -d -p 80:80/tcp 88456521fb80
b867f092d38415142414a97a6a735aaf875c7781581528c13231dd36ea942920
[root@fedora ~]# docker ps -a
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                               NAMES
b867f092d384   88456521fb80   "nginx -g 'daemon of…"   20 seconds ago   Up 18 seconds   0.0.0.0:80->80/tcp, :::80->80/tcp   musing_cerf
```
5. И проверяю через браузер

![Снимок экрана 2022-06-04 в 05 10 12](https://user-images.githubusercontent.com/98701086/171973139-7ca3777a-d1ef-498d-bbdc-496f12233634.png)

6. Образ - это упакованное приложение, с минимально необходимым окружение операционной системы. А контейнер это запущенный образ.
 
7. Я думаю, что собрать ядро в контейнере можно, по крайней мере rpm пакеты. 
