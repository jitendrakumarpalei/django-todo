FROM python:3
WORKDIR /data
RUN pip install django==3.2
COPY . .
RUN python manage.py migreate
EXPOSE 8000
CMD ["python", "mange.py", "runserver", "0.0.0.0:8000"]


