# kmod-builder

docker build .

docker run -v $PATH_TO_OUTDIR:/srv $IMAGE -c $KCONFIG_VALUE

docker run -v $PATH_TO_OUTDIR:/srv $IMAGE -c $KCONFIG_VALUE -v $KERNEL_UNAME_R

Example:

docker run -v $PWD:/srv 0764e3f17d66 -c NETDEVSIM -v 4.18.0-80.7.1.el8_0.x86_64
