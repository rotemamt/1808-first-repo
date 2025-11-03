FROM python:alpine
WORKDIR /app
COPY app.py /app/app.py
CMD ["python", "app.py"]
