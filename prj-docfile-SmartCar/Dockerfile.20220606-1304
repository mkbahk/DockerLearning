#docker build . -t mkbahk/smartcar:0.1
FROM ubuntu:18.04
EXPOSE 9002
RUN apt update -y
RUN apt install iputils-ping -y	
RUN apt install net-tools -y
RUN apt install iproute2 -y  
RUN apt install curl wget nano -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt update -y
RUN apt install python3.8 -y
RUN apt install python3-pip -y
RUN pip3 install -U pip -q
RUN pip3 install tensorflow==2.6.2 -q
RUN pip3 install keras -q
RUN pip3 install pandas -q
RUN pip3 install matplotlib -q
RUN pip3 install sklearn -q
RUN pip3 install flask -q
RUN apt install git -y
RUN mkdir -p /root/IPULearning/SmartCar 
ADD CarDrivingIncidentInfo.csv /root/IPULearning/SmartCar/CarDrivingIncidentInfo.csv
ADD CarDrivingIncidentInfo_Test.csv /root/IPULearning/SmartCar/CarDrivingIncidentInfo_Test.csv
ADD smartcar_dnn_model.h5 /root/IPULearning/SmartCar/smartcar_dnn_model.h5
ADD smartcar_dnn_model.py /root/IPULearning/SmartCar/smartcar_dnn_model.py
ADD smartcar_dnn_service_2.py /root/IPULearning/SmartCar/smartcar_dnn_service_2.py
RUN ls -al /root/IPULearning/SmartCar/
RUN python3 --version
RUN python3 /root/IPULearning/SmartCar/smartcar_dnn_model.py
RUN echo "Hello guys!!!"
RUN echo "Execute cmd: docker run -d -p 9002:9002 mkbahk/smartcar:0.1"
RUN echo "and ..."
RUN echo 'Access with: curl -X GET "http://srv161:9002/smartcar/predict?wea=2&temp=0&hum=1&arrOthCar=2&time=0&acciArea=1&drvCond=1&innCond=2&carSpd=2&SteeAng=0"'  
CMD python3 /root/IPULearning/SmartCar/smartcar_dnn_service_2.py
