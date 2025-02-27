# Use official Python image as base
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

RUN pip install --upgrade pip
# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN pip uninstall altair -y && pip install altair==4.2.2

# Copy the entire application into the container
COPY . .

# Run the Streamlit app
CMD ["streamlit", "run", "App.py", "--server.port=5555", "--server.address=0.0.0.0"]
