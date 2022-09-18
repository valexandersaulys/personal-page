FROM vasaulys/quark-server:latest
COPY . /html
CMD quark -h 0.0.0.0 -p $PORT -d /html
