# LT Groceries Tracker

This application lets users upload grocery receipts, extract item information using VLM, and track expenses. The backend is FastAPI and the frontend is Flutter.

## Functionalities

- Upload and process grocery receipts
- Extract text and amounts using VLM API
- Store data in Postgres
- Browse receipt history
- View invoice summary
- Mobile client built using Flutter

---

# Backend: FastAPI (Python)

## Database setup using Docker

Install Docker and run the Postgres container:

```
docker run --name grocery-db -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=grocery -p 5432:5432 -d postgres:15
docker ps
docker start grocery-db
```

Set up the docker environment and execute DCL scripts to create required tables. Scripts are not included in this repository yet.

## Python environment

Create virtual environment:

```
python3 -m venv venv
```

Activate environment:

Linux / macOS:

```
source venv/bin/activate
```

Windows:

```
venv\Scripts\activate
```

Install dependencies (if requirements.txt exists):

```
pip install -r requirements.txt
```

Start FastAPI:

```
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
```

Once the backend is running, note the base API URL and configure it inside the Grocery Receipts API service in the Flutter project.

## VLM inference usage

Due to VRAM limitations on local hardware, inference is performed using Gemini API as the VLM client. Place the Gemini API key in a .env file and load it via environment variable in FastAPI before performing VLM requests.

---

# Frontend: Flutter application

Install the Flutter SDK following official setup instructions.

Install dependencies based on pubspec.yaml:

```
flutter pub get
```

Run application in emulator:

```
flutter run
```

Build APK for Android:

```
flutter build apk
```

Update API base URL in Flutter code once FastAPI endpoint is known.
