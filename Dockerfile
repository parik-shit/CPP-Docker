# Use a specific version of Ubuntu
FROM ubuntu:22.04

# Install required packages
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    cmake \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy your application code into the container
COPY . .

# If you have a Makefile or other build instructions, uncomment this line
# RUN make

# Expose the port your application will run on
EXPOSE 8080

# Create a non-root user and switch to it (optional, for security)
RUN useradd -ms /bin/bash appuser
USER appuser

# Define the default command to run your application (change as needed)
CMD ["bash"]

