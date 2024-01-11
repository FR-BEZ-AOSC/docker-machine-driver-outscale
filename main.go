package main

import (
	"github.com/docker/machine/libmachine/drivers/plugin"
	"github.com/outscale-dev/docker-machine-driver-outscale/pkg/drivers/outscale"
)

func main() {
	plugin.RegisterDriver(outscale.NewDriver("", ""))
}
