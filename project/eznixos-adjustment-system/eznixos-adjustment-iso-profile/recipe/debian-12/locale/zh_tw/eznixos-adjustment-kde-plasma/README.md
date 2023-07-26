

# EznixOs Adjustment


## Notice


### kde locale

> kde locale config file: [~/.config/plasma-localerc](asset/overlay/etc/skel/.config/plasma-localerc)


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


