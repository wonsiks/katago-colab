set GOOS=darwin
set GOARCH=amd64
go build -o ./bin/colab-katago-gd-for-mac 

set GOOS=linux
set GOARCH=amd64
go build -o ./bin/colab-katago-gd-for-linux

set GOOS=windows
set GOARCH=amd64
go build -o ./bin/colab-katago-gd-for-windows

pushd bin
del /q *.zip
copy /y colab-katago-gd-for-mac colab-katago-gd
tar -a -c -f colab-katago-gd.mac.zip colab-katago-gd
copy /y colab-katago-gd-for-linux colab-katago-gd
tar -a -c -f colab-katago-gd.linux.zip colab-katago-gd
copy /y colab-katago-gd-for-windows colab-katago-gd.exe
tar -a -c -f colab-katago-gd.windows.zip colab-katago-gd.exe
del /q colab-katago-gd colab-katago-gd.exe
popd
