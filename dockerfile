FROM python:3.12-slim
WORKDIR /srv
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN mkdir -p /srv/output && chown 10001:10001 /srv/output
USER 10001:10001
CMD ["python", "-m", "app.main"]
