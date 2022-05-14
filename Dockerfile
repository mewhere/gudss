FROM anasty17/mltb:latest
# FROM anasty17/mltb-oracle:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt update && apt upgrade -y
RUN apt install git -y
RUN pip3 install -U pip
COPY . .

CMD ["bash", "mirror.sh"]
