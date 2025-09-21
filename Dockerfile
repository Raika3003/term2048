# Step 1: Use Python base image
FROM python:3.9-slim

# Step 2: Set work directory
WORKDIR /app

# Step 3: Copy project files
COPY . /app

# Step 4: Install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt \
    && pip install .

# Step 5: Set default command (run the game)
CMD ["term2048"]

