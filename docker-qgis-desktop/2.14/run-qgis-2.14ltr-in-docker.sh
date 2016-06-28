xhost +
# --rm will remove the container as soon as it ends
docker run --rm --name="qgis-desktop-2.14ltr" \
	-i -t \
	-v ${HOME}:/home/${USER} \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=unix$DISPLAY \
	./qgis-desktop:2.14
xhost -
