#!/bin/bash
GOOS=darwin GOARCH=amd64 go build -o ./bin/colab-katago-gd-for-mac 
GOOS=linux GOARCH=amd64 go build -o ./bin/colab-katago-gd-for-linux
GOOS=windows GOARCH=amd64 go build -o ./bin/colab-katago-gd-for-windows

cd bin
rm -rf *.zip
cp colab-katago-gd-for-mac colab-katago-gd
zip colab-katago-gd.mac.zip colab-katago-gd
cp colab-katago-gd-for-linux colab-katago-gd
zip colab-katago-gd.linux.zip colab-katago-gd
cp colab-katago-gd-for-windows colab-katago-gd.exe
zip colab-katago-gd.windows.zip colab-katago-gd.exe
rm colab-katago-gd colab-katago-gd.exe
cd -