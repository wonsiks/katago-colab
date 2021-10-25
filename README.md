# colab-katago-gd

This program has been modified from the original colab-katago to store SSH information on Google Drive.

See how to use:   

**Korean Version**  
https://colab.research.google.com/drive/1b99A3CVrK4GdaD-DHivh5nT_dN_SpFbJ?usp=sharing

# Build
```
GOOS=darwin GOARCH=amd64 go build -o ./bin/colab-katago-for-mac 
GOOS=linux GOARCH=amd64 go build -o ./bin/colab-katago-for-linux
GOOS=windows GOARCH=amd64 go build -o ./bin/colab-katago-for-windows
```
