#!/bin/bash

# Start the FastAPI application with uvicorn
exec uvicorn api.service:app --host 0.0.0.0 --port 9000
