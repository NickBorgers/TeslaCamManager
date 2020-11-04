FROM python:3
RUN python3 -m pip install tesla_dashcam
RUN apt-get update && apt-get install -y ffmpeg

COPY container_script.sh /container_script.sh

CMD [ "/container_script.sh" ]
