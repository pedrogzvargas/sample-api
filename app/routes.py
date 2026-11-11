from fastapi import APIRouter

router = APIRouter()

@router.get("/hello-world")
async def root():
    return {"message": "Hello World from FastAPI and Jenkins!"}
