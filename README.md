# pywws-docker
Provides a Docker image for pywws. Find out more about pywws here: https://github.com/jim-easterbrook/pywws

Use -privileged to give access to USB devices (you should also be able to directly pipe your weather station to the container, but it's untested!)

Test the connection like this:

docker run –privileged duckfullstop/pywws pywws-testweatherstation

Following Jim's example using ~/weather/data, you can gather data onto your local file system like this:

docker run –privileged duckfullstop/pywws -v ~/weather/data:/var/data pywws-hourly /var/data
