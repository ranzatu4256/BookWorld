FROM python:3-alpine

RUN useradd -m -u 1000 user
USER user

ENV HOME=/home/user \
	PATH=/home/user/.local/bin:$PATH
WORKDIR $HOME/app

COPY --chown=user . $HOME/app

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python3", "server.py"]
