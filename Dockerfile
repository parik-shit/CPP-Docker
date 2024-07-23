FROM ubuntu:latest

# Install required packages
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    cmake \
    && apt-get clean

# Set the working directory
WORKDIR /app

# Copy your application code
COPY . .

# Compile your application (optional)
# RUN make

CMD ["bash"]

