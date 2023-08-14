# Используйте базовый образ Python
FROM python:3.8

# Установка рабочей директории внутри контейнера
WORKDIR /data

# Install for pyodbc
RUN apt-get update && \
    apt-get install -y unixodbc-dev

# Install 
RUN pip install pyodbc==4.0.34 # for mac m1
RUN pip install sqlalchemy
RUN pip install BeautifulSoup4
RUN pip install asyncio
RUN pip install python-telegram-bot
RUN pip install aiogram
# telebot
RUN pip install pyTelegramBotAPI

# Copy your project files into the container
COPY . /data

# Activate the virtual environment
# SHELL ["python3", "run", "-n", "amazon-bot-env"]
# SHELL ["conda", "run", "-n", "env", "/bin/bash", "-c"]

# Command to be executed when the container is run
CMD [ "python3", "amazon_bot.py" ]
     
