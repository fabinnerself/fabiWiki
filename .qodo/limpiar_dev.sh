#!/bin/bash

# Este script elimina carpetas y archivos temporales o innecesarios en un directorio de desarrollo.
# ¡Ejecútalo solo en directorios de proyecto que tú controlas!

if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <directorio_raiz>"
    exit 1
fi

RAIZ="$1"

if [ ! -d "$RAIZ" ]; then
    echo "Error: '$RAIZ' no es un directorio válido."
    exit 1
fi

echo "Limpiando en: $RAIZ"
echo "Se eliminarán:"
echo " - node_modules"
echo " - __pycache__"
echo " - *.pyc, *.pyo"
echo " - .mypy_cache, .pytest_cache"
echo " - venv, .venv, env, .env (¡solo carpetas!)"
echo " - .next (build cache de Next.js)"
echo " - dist, build (directorios de compilación)"
echo " - .git (¡NO! — no lo incluimos por seguridad)"
echo

read -p "¿Continuar? (s/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Ss]$ ]]; then
    echo "Operación cancelada."
    exit 0
fi

# Eliminar node_modules
find "$RAIZ" -type d -name "node_modules" -exec rm -rf {} + 2>/dev/null

# Eliminar cachés de Python
find "$RAIZ" -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null
find "$RAIZ" -type f \( -name "*.pyc" -o -name "*.pyo" \) -delete 2>/dev/null

# Eliminar otros cachés comunes
find "$RAIZ" -type d \( -name ".mypy_cache" -o -name ".pytest_cache" -o -name ".ruff_cache" \) -exec rm -rf {} + 2>/dev/null

# Eliminar entornos virtuales de Python (¡solo si son carpetas!)
for venv_dir in venv .venv env; do
    find "$RAIZ" -type d -name "$venv_dir" -exec rm -rf {} + 2>/dev/null
done

# Eliminar caché de Next.js
find "$RAIZ" -type d -name ".next" -exec rm -rf {} + 2>/dev/null

# Eliminar directorios de build comunes
find "$RAIZ" -type d \( -name "dist" -o -name "build" \) -exec rm -rf {} + 2>/dev/null

# Eliminar .egg-info (generado por setuptools)
find "$RAIZ" -type d -name "*.egg-info" -exec rm -rf {} + 2>/dev/null

echo "Limpieza completada."