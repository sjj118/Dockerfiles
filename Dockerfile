FROM tensorflow/tensorflow:latest-py3

LABEL author=sjj118

RUN pip install scipy==1.1.0
RUN pip install pillow

WORKDIR /SRGAN-tensorflow-master

CMD ["bash"]
