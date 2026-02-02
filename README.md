# Wiki Personal de Favian

Una wiki personal construida con MkDocs y Material Theme, inspirada en el diseño de Wikipedia. Esta wiki está diseñada para almacenar, organizar y compartir conocimiento personal de manera estructurada y accesible.

Puedes visitar la plataforma en : https://fabi-wiki-xdqd.vercel.app/

## 🚀 Características

- **Diseño Wikipedia-like**: Inspirado en la interfaz de Wikipedia con navegación intuitiva
- **Búsqueda integrada**: Búsqueda full-text a través de todo el contenido
- **Responsive**: Optimizado para desktop y dispositivos móviles
- **Tema Material**: Diseño moderno y profesional con modo oscuro
- **Markdown puro**: Contenido escrito en Markdown estándar
- **Despliegue automático**: Integración con Vercel para hosting gratuito
- **Docker support**: Desarrollo local con contenedores

## 📁 Estructura del Proyecto

```
miwiki/
├── docs/                    # Contenido de la wiki
│   ├── index.md            # Página principal
│   ├── guias/              # Guías y tutoriales
│   ├── proyectos/          # Documentación de proyectos
│   ├── referencias/        # Referencias técnicas
│   └── herramientas/       # Herramientas y utilidades
├── mkdocs.yml             # Configuración de MkDocs
├── requirements.txt       # Dependencias Python
├── vercel.json           # Configuración de Vercel
├── Dockerfile            # Docker para desarrollo local
├── docker-compose.yml    # Docker Compose
└── README.md             # Este archivo
```

## 🛠️ Instalación y Uso

### Desarrollo Local

#### Opción 1: Sin Docker (Recomendado)
```bash
# Instalar dependencias
pip install -r requirements.txt

# Iniciar servidor de desarrollo
mkdocs serve

# Abrir http://localhost:8000 en tu navegador
```

#### Opción 2: Con Docker
```bash
# Construir e iniciar contenedor
docker-compose up --build

# Abrir http://localhost:8000 en tu navegador
```

### Despliegue en Vercel

1. **Conectar repositorio**: Importa este repositorio en Vercel
2. **Configuración automática**: Vercel detectará automáticamente la configuración
3. **Despliegue**: Cada push a `main` desplegará automáticamente

### Solución de Problemas Comunes

Si experimentas errores de tipo `externally-managed-environment` o `PEP 668` en Vercel, el archivo `vercel.json` ya ha sido configurado con la solución apropiada. El comando de construcción incluye `--break-system-packages` para resolver este problema común en entornos Python modernos.

## 📝 Creando Contenido

### Estructura de Páginas
Cada página debe tener un frontmatter básico:

```markdown
---
title: Título de la Página
description: Breve descripción para SEO
---

# Contenido aquí
```

### Categorías Principales

- **Guías**: Tutoriales paso a paso y mejores prácticas
- **Proyectos**: Documentación técnica de proyectos personales
- **Referencias**: Información técnica de consulta rápida
- **Herramientas**: Utilidades y recursos de desarrollo

### Sintaxis Markdown
- **Encabezados**: `# ## ###`
- **Enlaces**: `[texto](url)` o `[texto](#anchor)`
- **Imágenes**: `![alt](url)`
- **Código**: `` `código` `` o bloques de código
- **Tablas**: Sintaxis estándar de Markdown
- **Listas**: `- item` o `1. item`

## 🎨 Personalización

### Tema
El proyecto usa Material Theme for MkDocs con configuraciones personalizadas:
- Paleta de colores azul
- Modo oscuro automático
- Tipografía optimizada
- Componentes responsive

### CSS Personalizado
Para personalizaciones adicionales, crea `docs/stylesheets/extra.css`:

```css
/* CSS personalizado */
.wiki-custom {
  /* Tus estilos aquí */
}
```

## 🔍 Funcionalidades Avanzadas

### Búsqueda
- Búsqueda full-text integrada
- Sugerencias en tiempo real
- Búsqueda por secciones

### Navegación
- Sidebar con tabla de contenidos
- Navegación por pestañas
- Breadcrumb navigation
- Enlaces de navegación top/bottom

### Extensiones Markdown
- Tablas de contenido automáticas
- Footnotes
- Admonitions (notas, advertencias, etc.)
- Code highlighting con Pygments
- MathJax para fórmulas matemáticas

## 🚀 Despliegue

### Vercel (Recomendado)
- **Gratuito**: Plan gratuito incluye hosting
- **CDN global**: Contenido servido desde edge locations
- **SSL automático**: HTTPS incluido
- **Dominio personalizado**: Subdominios gratis

### Otras Opciones
- **GitHub Pages**: Hosting gratuito con GitHub
- **Netlify**: Similar a Vercel con funcionalidades adicionales
- **AWS S3 + CloudFront**: Para escalabilidad máxima

## 🐳 Docker

### Desarrollo Local
```bash
# Construir imagen
docker build -t miwiki .

# Ejecutar contenedor
docker run -p 8000:8000 -v $(pwd):/app miwiki
```

### Producción
```bash
# Construir para producción
docker build -t miwiki:latest .

# Ejecutar
docker run -p 80:8000 miwiki:latest
```

## 🤝 Contribuciones

1. **Fork** el repositorio
2. **Crea** una rama para tu feature (`git checkout -b feature/nueva-funcionalidad`)
3. **Commit** tus cambios (`git commit -m 'Agrega nueva funcionalidad'`)
4. **Push** a la rama (`git push origin feature/nueva-funcionalidad`)
5. **Abre** un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 📞 Soporte

- **Issues**: Para reportar bugs o solicitar features
- **Discussions**: Para preguntas generales
- **Wiki**: Documentación detallada (¡esta wiki!)

## 🔄 Migración desde Obsidian

Si vienes de Obsidian:

1. **Exporta** tu vault como Markdown
2. **Copia** los archivos `.md` a la carpeta `docs/`
3. **Ajusta** los enlaces internos (Obsidian usa `[[link]]`, MkDocs usa `[link](url)`)
4. **Configura** la navegación en `mkdocs.yml`

## 📊 Estadísticas

- **Páginas**: Conteo automático de páginas
- **Palabras**: Estadísticas de contenido
- **Visitas**: Analytics integrado (opcional)
- **Build time**: ~30 segundos en Vercel

---

¡Bienvenido a tu nueva wiki personal! 🎉

---
## 🚀 AUTOR
👤 Favian Medina Gemio

| Resource     | Address                            |
|--------------|---------------------------------------------------------------------------------------------------|
|📧 Email     |[favian.medina.gemio@gmail.com](favian.medina.gemio@gmail.com)                                      |
|💻 GitHub    |[https://github.com/fabinnerself](https://github.com/fabinnerself)                       |
|🧠 LinkedIn  |[https://www.linkedin.com/in/favian-medina-gemio/](https://www.linkedin.com/in/favian-medina-gemio/)|
|💼 Portfolio |[https://favian-medina-cv.vercel.app/](https://favian-medina-cv.vercel.app/)|
 

(c) 2025