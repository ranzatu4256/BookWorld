FROM python:3.10

RUN useradd -m -u 1000 user
USER user

ENV HOME=/home/user \
	PATH=/home/user/.local/bin:$PATH
WORKDIR $HOME/app

COPY --chown=user . $HOME/app

RUN pip3 install --no-cache-dir -r requirements.txt

RUN huggingface-cli download BAAI/bge-m3
RUN huggingface-cli download BAAI/bge-large-zh

ENV OPENAI_API_KEY=""

CMD ["python3", "server.py"]
