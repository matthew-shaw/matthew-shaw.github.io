FROM python:3.13

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY mkdocs.yml .
COPY includes includes
COPY docs docs

CMD [ "mkdocs", "serve", "--dev-addr=0.0.0.0:8000" ]