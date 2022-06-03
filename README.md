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

3. Образ - это упакованное приложение, с минимально необходимым окружение операционной системы. А контейнер это запущенный образ. 
4. Я думаю, что собрать ядро в контейнере можно, по крайней мере rpm пакеты. 
