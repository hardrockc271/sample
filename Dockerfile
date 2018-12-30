# use an official Python runtime as a parent image
FROM python:2.7-slim

# set working dir to /app
WORKDIR /app

# copy current di contents into the container at /app
COPY . /app

# install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# make port 80 available to the world outside this container
EXPOSE 80

# define environment variable
ENV NAME world

# run app.py when the container launches
CMD ["python", "app.py"]


