FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 5000
ENV FLASK_APP=app.py

CMD ["flask", "run", "--host=0.0.0.0"]







# # Use an official Python runtime as a parent image
# FROM python:3.8-slim

# # Set the working directory
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# # Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# # Set the environment variable for Flask
# ENV FLASK_APP=app.py

# # Expose the port the app runs on
# EXPOSE 5000

# # Run the Flask app
# CMD ["flask", "run", "--host=0.0.0.0"]