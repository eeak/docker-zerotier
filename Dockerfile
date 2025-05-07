FROM debian:12-slim
RUN apt update && apt install -y curl
RUN curl -s https://install.zerotier.com | bash
COPY run.sh /run.sh
RUN chmod +x /run.sh
CMD ["/run.sh"]
