export GOOS=linux
export GOARCH=amd64
export OUT_DIR=out
export PROG=docker-machine-driver-outscaleaosc
# make build
rm $OUT_DIR/*
export RESULT=$OUT_DIR/$PROG
go build -ldflags="-s -w" -o $RESULT ./
file $RESULT
zip ${RESULT}_0.2.4_linux_amd64.zip $RESULT
ls -alh $OUT_DIR
