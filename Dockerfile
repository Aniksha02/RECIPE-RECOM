FROM python:3.6.8

WORKDIR /usr/app

COPY requirements.txt .

RUN pip install --upgrade setuptools

RUN pip install -r requirements.txt

ENV IP=0.0.0.0
ENV PORT=8100
ENV SECRET=randomstring
ENV MONGO_URI=mongodb+srv://akashm1:akash123@cluster0.10pelru.mongodb.net/milestone-3

COPY ./ ./

CMD [ "python", "./app.py" ]