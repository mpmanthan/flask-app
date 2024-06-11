FROM python 
WORKDIR /app
COPY . .
RUN  apt-get update 
EXPOSE 3000
RUN pip install mysqlclient
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python" , "app.py" ]


