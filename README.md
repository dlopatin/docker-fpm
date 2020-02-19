# FPM Docker Alpine image

[`fpm`](https://github.com/jordansissel/fpm) allows to build packages of different formats like _.dep_, _.rpm_, etc; convert one format to another.

Docker image based on Alpine linux.

To build the image:

```sh
docker build -t alpine/fpm .
```

This will create the `fpm` image and pull in the necessary dependencies.

Once done, run the Docker image to create a simple _.rpm_ archive:

```sh
docker run --rm -it -v $(pwd):/data alpine/fpm fpm -s dir -t rpm -n "data_test" -v 0.1 -p /data -C /data test
```

where _test_ is a directory to arhive in relative path.

More commands on `rpm` wiki page: https://github.com/jordansissel/fpm/wiki

See also https://hub.docker.com/r/skandyla/fpm as an example of usage.

