FROM python:3.13-bookworm

WORKDIR /app

# Install uv
RUN pip install uv

COPY pyproject.toml uv.lock README.md ./
COPY EvoGen ./EvoGen/

# Install dependencies
RUN uv sync

RUN groupadd --system --gid 1000 EvoGen && \
    useradd EvoGen --uid 1000 --gid 1000 --create-home --shell /bin/bash && \
    chown -R EvoGen:EvoGen /app
USER 1000:1000

CMD ["uv", "run", "/app/examples/math_forge/run.py"]