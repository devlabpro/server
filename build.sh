#!/usr/bin/env bash
set -e

DIR="$(dirname $(readlink -f $0))"

echo -e "\nBuilding bitwarden"
echo -e "=================="

$DIR/util/Server/build.sh
$DIR/src/Api/build.sh
$DIR/src/Identity/build.sh
$DIR/nginx/build.sh
$DIR/attachments/build.sh
$DIR/util/Setup/build.sh
