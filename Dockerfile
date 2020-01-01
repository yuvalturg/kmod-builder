FROM fedora:latest

RUN dnf -y update && \
    dnf -y group install "Development Tools" && \
    dnf -y install openssl-devel \
                    bc \
                    elfutils-libelf-devel \
                    python3-devel \
                    rpmdevtools \
                    flex \
                    bison \
                    koji \
                    fedora-packager

COPY kmod-builder.sh /usr/local/bin

ENTRYPOINT ["/usr/local/bin/kmod-builder.sh", "-o", "/srv/kmod-builder-output"]
