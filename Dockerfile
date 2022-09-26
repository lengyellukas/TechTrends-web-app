#Use a Python base image in version 3.8
FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

#Install packages defined in the requirements.txt file
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

COPY . .

#Ensure that the database is initialized with the pre-defined posts in the init_db.py file
RUN python init_db.py

#Expose the application port 3111
EXPOSE 3111

#The application should execute at the container start
CMD ["python3", "app.py"]