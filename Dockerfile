FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Указываем, что контейнер будет использовать данный порт
EXPOSE 5000


CMD ["python", "-u" "app.py"] #добавление флага -'u' для предотвращения буферизации
