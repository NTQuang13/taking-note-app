
# Base image Python
FROM python:3.11-slim

# Tạo thư mục làm việc
WORKDIR /app

# Sao chép file requirements
COPY requirements.txt .

# Cài đặt thư viện
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép toàn bộ code vào container
COPY . .

# Thiết lập biến môi trường Flask
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0

# Mở cổng 5000
EXPOSE 5000

# Lệnh chạy app Flask
CMD ["flask", "run"]

