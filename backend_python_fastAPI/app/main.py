import threading
from fastapi import FastAPI
from app.database import Base, engine
from app.routers import receipts, invoices
from app.services.scheduler import receipt_scheduler

Base.metadata.create_all(bind=engine)

app = FastAPI(title="Grocery Receipt API")

app.include_router(receipts.router)
app.include_router(invoices.router)

'''
@app.on_event("startup")
def start_scheduler():
     thread = threading.Thread(target=receipt_scheduler, daemon=True)
     thread.start()
'''