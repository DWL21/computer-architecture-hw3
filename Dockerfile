FROM ubuntu:22.04

# 필수 패키지 설치 및 SSH 설치
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        bash \
        gcc \
        g++ \
        make \
        openssh-server \
        && rm -rf /var/lib/apt/lists/*

# SSH 설정: root 비밀번호 설정 및 PermitRootLogin 허용
RUN echo 'root:root' | chpasswd && \
    sed -i 's/#\?PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#\?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config

# SSH 데몬용 디렉토리 생성
RUN mkdir /var/run/sshd

WORKDIR /workspace
COPY . .
RUN chmod +x run.sh

# 포트 22 오픈
EXPOSE 22

# 컨테이너 시작 시 SSH와 run.sh 모두 실행
CMD service ssh start && bash ./run.sh && tail -f /dev/null