#!/usr/bin/env bash
set -e

DIR="$(dirname $(readlink -f $0))"

echo -e "\n# Building Server"

echo -e "\nBuilding app"
echo -e ".NET Core version $(dotnet --version)"
dotnet publish $DIR/Server.csproj -c "Release" -o $DIR/obj/Docker/publish

echo -e "\nBuilding docker image"
docker --version
docker build -t bitwarden/server $DIR/.
