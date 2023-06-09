#!/usr/bin/env bash

FILE=$1

# yq will extract the .spec section of a PrometheusRule manifest, if it exists.
# Otherwise, it will include the original.
promtool check rules --lint-fatal <(yq '.spec // . | del(.spec)' "$FILE")
