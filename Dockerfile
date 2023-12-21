FROM andyquinterom/faucet:0.4.1-r4.3

RUN Rsctipt -e "install.packages('shiny')"

COPY app.R .

RUN chown -R faucet:faucet /srv/faucet

USER faucet

ENV FAUCET_IP_FROM=x-real-ip
