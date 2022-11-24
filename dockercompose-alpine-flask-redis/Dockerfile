# container image ını developer verecek
# working directory olarak code folder u oluşturuyourz
# Env 
# redis complie edilip çlışması için gcc musl-dev linux-headers yazıyoruz. 
# run dediğmiz alpine için apk yazıyoruz 
# copy ile bulunduğumuz yerdeki bütün dosyaları image ın oluştuğu code folderuna yükle
# flask run dediğimizde env de flask_app ı app. py ye eşleştrdiğimizde gidip onu çalışturacak
FROM python:3.7-alpine  
WORKDIR /code
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]