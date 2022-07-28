FROM pytorch/pytorch:latest

RUN apt update && apt upgrade -y 
RUN apt install git python3-pip wget libgl1-mesa-dev x11-apps -y
RUN git clone https://github.com/Megvii-BaseDetection/YOLOX
RUN pip3 install -U pip && pip install -r ./YOLOX/requirements.txt
RUN pip3 install -v -e ./YOLOX  
RUN pip3 install cython
RUN pip3 install 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'
ENV LIBRARY_PATH /usr/local/cuda/lib64/stubs
