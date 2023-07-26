

# EznixOs Adjustment


## Notice

> Need [kde-l10n-zhtw](https://packages.debian.org/search?keywords=kde-l10n-zhtw)


## Howto

### prepare

to install [live-build](https://packages.debian.org/sid/live-build)

``` sh
make prepare
```


### build

to build iso

``` sh
make build
```


### run_iso

to test iso

```
make run_iso
```

### clean

to clean dir: [tmp]

``` sh
make clean
```


### make-profile

``` sh
THE_DEFAULT_RUN=make-profile make build
```

``` sh
THE_DEFAULT_RUN=make-profile make main-xfce
```


## Reference


