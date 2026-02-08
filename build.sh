#!/bin/bash
set -euo pipefail

python -m pip install --break-system-packages -r requirements.txt
python -m mkdocs build
