install:
    pip install -r requirements.txt

test:
    python -m unittest discover tests

run:
    python main.py

clean:
    rm -rf __pycache__/

format:
    black .  # Автоформатирование кода

lint:
    flake8 .  # Проверка стиля кода

check: lint test  # Комбинация проверок

.PHONY: install test run clean format lint check