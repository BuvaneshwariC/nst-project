# nst-project

### 🎨🖌 Creating Art with the help of Artificial Intelligence !
---

## **📝 Project Overview**  
NST is a deep learning-based **Neural Style Transfer (NST)** application that applies artistic styles to images using **TensorFlow Hub**. The project is built using **Streamlit** for a web interface and OpenCV (`cv2`) for image processing.  

---

## **📦 Project Structure**  
```
PixelMix/
│── app/
│   ├── App.py             # Main Streamlit application
│   ├── API.py             # Style transfer function
│   ├── models/            # Pretrained models (if any)
│   ├── static/            # CSS, images, etc.
│── requirements.txt       # Python dependencies
│── Dockerfile             # Docker configuration
│── README.md              # Project documentation
```

---

```sh
git clone https://github.com/BuvaneshwariC/nst-project.git
cd nst-project
```

# **🐳 Docker Setup**  

## **1️⃣ Building the Docker Image**  
To containerize the application, we use Docker. First, build the Docker image using:  

```sh
docker build -t nst:latest .
```

This will:  
✅ Use Python 3.10 as the base image  
✅ Install all required dependencies (TensorFlow, OpenCV, Streamlit)  
✅ Copy the application files into the container  

---

## **2️⃣ Running the Container**  
Once built, run the application using:  

```sh
docker run -p 5555:5555 nst:latest
```

This will start the **Streamlit app** on `http://localhost:5555`.

---

# **🚀 Key Features**  
🔹 Apply artistic styles to images using **Neural Style Transfer**  
🔹 Simple **Streamlit web UI** for easy interaction  
🔹 Built-in **Docker support** for portability  

---
