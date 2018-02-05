#!/bin/bash
unset -v line1 line2 line3
{ IFS= read -r line1 && IFS= read -r line2 && IFS= read -r line3; } < rule

cat _fw-add.yaml | sed 's/__target_ip__/10.0.125.78/g' | sed 's/__dest_ip__/10.0.110.10/g' > ansible-add.yaml
