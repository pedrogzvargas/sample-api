from fastapi import FastAPI
from .routes import router


def create_app() -> FastAPI:
    app = FastAPI(
        title="Simple FastAPI App",
        version="1.0.0",
    )
    app.include_router(router, prefix="/api/v1")
    return app

app = create_app()
