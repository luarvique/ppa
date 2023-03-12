FROM ubuntu

RUN apt update

RUN apt install -y gnupg2 wget

RUN wget -O - https://luarvique.github.io/ppa/openwebrx-plus.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/openwebrx-plus.gpg
RUN echo "deb [signed-by=/etc/apt/trusted.gpg.d/openwebrx-plus.gpg] https://luarvique.github.io/ppa/ubuntu ./" > /etc/apt/sources.list.d/openwebrx-plus.list

RUN apt update

RUN DEBIAN_FRONTEND=noninteractive apt install -y openwebrx

CMD ["openwebrx"]
