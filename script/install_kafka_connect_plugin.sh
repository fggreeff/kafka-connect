#!/bin/bash
set -e

wget -q "https://github.com/b-social/terraform-provider-kafkaconnect/releases/download/0.9.0-rc.4/terraform-provider-kafkaconnect_v0.9.0-rc.4_linux_amd64.tar.gz"
tar -xf terraform-provider-kafkaconnect*.tar.gz

mkdir -p ~/.terraform.d/plugins/
mv terraform-provider-kafkaconnect ~/.terraform.d/plugins/


