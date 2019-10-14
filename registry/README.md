```
docker run  --entrypoint htpasswd registry:2.7.1 -Bbn  dipole  dipole2019 > auth/htpasswd
```

## how to use
```
docker login -u dipole -p dipole2019 xx.xx.xx.xx:5000
```

```
docker tag  xxx xx.xx.xx.xx:5000/xxx
```