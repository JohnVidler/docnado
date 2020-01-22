FROM python:3

WORKDIR /docnado

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir docs

CMD [ "python", "./docnado.py" ]
