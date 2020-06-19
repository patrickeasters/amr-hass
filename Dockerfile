FROM registry.fedoraproject.org/fedora-minimal:32

LABEL maintainer="patrick@patrickeasters.com"

RUN microdnf install -y rtl-sdr && \
    microdnf clean all

CMD rtl_tcp -a 0.0.0.0