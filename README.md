# kmod-builder

docker build .

docker run -v $PATH_TO_OUTDIR:/srv $IMAGE -c $KCONFIG_VALUE

docker run -v $PATH_TO_OUTDIR:/srv $IMAGE -c $KCONFIG_VALUE -v $KERNEL_UNAME_R

Examples:

Building for a specific distro (Fedora/CentOS only) kernel:

docker run -v $PWD:/srv 0764e3f17d66 -c NETDEVSIM -v 4.18.0-80.7.1.el8_0.x86_64

Building for the current host's based on a vanilla kernel (risky):

docker run -v $PWD:/srv -v /lib/modules/`uname -r`/config:/tmp/kmod-config 30dcc391eca6 -c NETDEVSIM -d /tmp/kmod-config
