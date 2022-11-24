# alpine latest veersion
# copy ile dockerfile ın içerisinde bulunduğu klasordeki bütün dosyaları  root dizinde app diye bir kalsor oluşturup içine atıyorum.
# sonra bu app folderı working directoru haline getiriyourz
# requirements da bulunan flask ve flask-mysql uygulamalarını install ediyourz
# expose 80 bir bilgi notu olarak bulunuyor 
# container içindeki uygulamayı çalıştır.
FROM python:alpine
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
CMD python ./to-do-api.py