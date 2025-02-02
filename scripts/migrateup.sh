#!/bin/bash

if [ -f .env ]; then
    source .env
fi

cd sql/schema
goose postgres $DATABASE_URL up
