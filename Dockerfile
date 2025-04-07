FROM python:alpine

WORKDIR /code

# Copy requirements first to leverage Docker cache
COPY requirements.txt .
RUN pip3 install --no-cache-dir --upgrade pip --break-system-packages && \
    pip3 install --no-cache-dir -r requirements.txt --break-system-packages && \
    rm -rf /var/cache/apk/*

# Copy the rest of the application
COPY . .

EXPOSE 5000

CMD ["python3", "app.py"]
