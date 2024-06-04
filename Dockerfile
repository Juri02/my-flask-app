# Bazowy obraz Python (minimum python:3.9)
FROM python:3.9

# Ustawienie katalogu roboczego w kontenerze
WORKDIR /app

# Skopiowanie pliku requirements.txt do kontenera
COPY requirements.txt ./

# Instalacja wymaganych bibliotek z pliku requirements.txt
RUN pip install -r requirements.txt

# Skopiowanie całego projektu aplikacji do kontenera
COPY . .

# Wyeksponowanie portu 5000 (na którym działa aplikacja)
EXPOSE 5000

# Uruchomienie aplikacji Flask
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]

