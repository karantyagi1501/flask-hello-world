FROM python:3.6
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
//ENTRYPOINT ["python"]
//CMD ["app.py"]
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
