# Use official Python image as base
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Upgrade pip
RUN pip install --upgrade pip

# Copy and install dependencies
COPY requirements.txt .

# Install dependencies with conflict resolution
RUN pip install  -r requirements.txt 
RUN pip uninstall -y altair click && pip install altair==4.2.2 click==8.0.4 protobuf==3.20.3
RUN pip install --no-cache-dir numpy==1.23.5
RUN pip install --no-cache-dir tensorflow==2.10.0 tensorflow-estimator==2.10.0 tensorflow_hub

# Copy the entire application into the container
COPY . .

# Expose the Streamlit port
EXPOSE 5555
# RUN pip install streamlit==1.5.0
# RUN pip install --no-cache-dir opencv-python-headless 
# RUN pip install  -r requirements.txt 
# Run the Streamlit app
CMD [ "streamlit", "run", "App.py", "--server.port=5555", "--server.address=0.0.0.0"]
