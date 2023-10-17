# Sử dụng một base image có sẵn, ví dụ: python:3.10
FROM python:3.10

# Thư mục làm việc mặc định
WORKDIR /flask_app

# Sao chép tất cả các tệp từ thư mục hiện tại vào container
COPY . .

# Cài đặt các dependencies từ requirements.txt
RUN pip install -r requirements.txt

# Khai báo cổng mà ứng dụng Flask sẽ lắng nghe
EXPOSE 5000

# Lệnh để chạy ứng dụng Flask
CMD ["python", "flask_docker.py"]
