from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from core.config import settings


# SQLALCHEMY_DATABASE_URL = settings.DATABASE_URL
# engine = create_engine(SQLALCHEMY_DATABASE_URL)

#if you don't want to install postgres or any database, use sqlite, a file system based database, 
# uncomment below lines if you would like to use sqlite and comment above 2 lines of SQLALCHEMY_DATABASE_URL AND engine

SQLALCHEMY_DATABASE_URL = "postgresql://postgres:KUdata!1122@music-db.czqlymhuloli.us-east-1.rds.amazonaws.com:5432/Music_Analysis_Project"
engine = create_engine(
    SQLALCHEMY_DATABASE_URL, connect_args={"check_same_thread": False}
)

SessionLocal = sessionmaker(autocommit=False,autoflush=False,bind=engine)