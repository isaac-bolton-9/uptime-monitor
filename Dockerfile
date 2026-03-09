# 1. Grab a base OS that already has Python installed
FROM python:3.11-slim

# 2. Create a folder inside the box called /app and move inside it
WORKDIR /app

# 3. Install our required library inside the box
RUN pip install requests

# 4. Copy your script from your computer into the box
COPY uptime_monitor.py .

# 5. "Tell the box exactly what to do when we turn it on
CMD ["python", "uptime_monitor.py"]