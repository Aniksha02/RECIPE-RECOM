FROM python:3.6.8

WORKDIR /usr/app

COPY requirements.txt .

RUN pip install -r requirements.txt

ENV IP=127.0.0.1
ENV PORT=8100
ENV SECRET=randomstring
ENV MONGO_URI=mongodb+srv://aniksha:aniksha123@cluster0.10pelru.mongodb.net/milestone-3

COPY ./ ./

CMD [ "python", "./app.py" ]