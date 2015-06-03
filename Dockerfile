#
# go drive
# see https://github.com/odeke-em/drive/
#

# Pull base image.
FROM golang:1.4.2

MAINTAINER Guillaume GERBAUD <ggerbaud@mabreizh.fr>

# INSTALL drive with go
RUN go get -u github.com/odeke-em/drive/cmd/drive

# Define working directory.
WORKDIR /gdrive

# Define entrypoint and default command.
ENTRYPOINT ["drive"]
CMD ["pull"]
