FROM python:3.8
ENV PYTHONUNBUFFERED=1
RUN pip install pipenv

RUN mkdir /code
COPY . /code
WORKDIR /code
RUN pipenv install --system --deploy

ENV FLASK_APP=main.py
CMD ["flask", "run", "--host", "0.0.0.0"]
EXPOSE 5000