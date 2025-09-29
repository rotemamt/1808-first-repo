FROM python:alpine
WORKDIR /app
COPY getUser.py /app/getUser.py
CMD ["python", "getUser.py"]