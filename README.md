# What is marlin?

marlin is the console miner provided by [SiaMining](https://github.com/SiaMining/marlin).

marlin supports Siacoin (SC).

# How to use this image

Run in background:

```console
$ docker run -d --name YOUR_CONTAINER_NAME calvintam236/marlin -H YOUR_POOL_ADDRESS -u YOUR_USERNAME.YOUR_WORKER_NAME -I 28
```

Get ethminer options with:

```console
$ docker run --rm calvintam236/marlin -h
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
