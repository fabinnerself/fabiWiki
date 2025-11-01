---
title: Sistemas operativos
description: Utilidades, recursos y herramientas de desarrollo
---

# 🛠️ Sistemas Operativos

Colección de herramientas, utilidades y recursos útiles para el desarrollo de software. Esta sección incluye tanto herramientas que uso regularmente como recomendaciones para diferentes casos de uso.

## 🏗️ 01-Entorno-Desarrollo

### Editores-Codigo

#### Visual-Studio-Code
**Mi editor principal**
- **Extensiones esenciales**: Python, Pylance, Prettier, ESLint
- **Configuración**: settings.json personalizado con temas y atajos
- **Ventajas**: Ligero, extensible, integración Git excelente

#### Vim-Neovim
**Para edición rápida en terminal**
- **Plugins**: vim-plug, coc.nvim, fzf
- **Configuración**: init.vim con mappings personalizados
- **Uso**: Edición rápida, servidores remotos

### Terminales-Shells

#### Windows-Terminal-PowerShell
**Configuración actual**
```json
{
  "profiles": {
    "defaults": {
      "fontFace": "Cascadia Code PL",
      "fontSize": 11,
      "colorScheme": "One Half Dark"
    }
  }
}
```

#### Oh-My-Zsh
**Para desarrollo en Linux**
- **Plugins**: git, docker, python, node
- **Tema**: agnoster o powerlevel10k
- **Aliases**: Personalizados para tareas comunes

### Configuraciones

#### Dotfiles
**Mi configuración en GitHub**
```bash
git clone https://github.com/tuusuario/dotfiles
cd dotfiles
./install.sh
```

#### Scripts-Utiles
**Automatización personal**
```bash
# Backup de proyectos
#!/bin/bash
tar -czf backup_$(date +%Y%m%d).tar.gz ~/projects/

# Setup nuevo proyecto Python
#!/bin/bash
mkdir $1 && cd $1
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## 🔧 02-Control-Versiones

### Git
**Configuración básica**
```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
git config --global core.editor "code --wait"
git config --global init.defaultBranch main
```

### GitHub
- **GitHub CLI**: `gh` para interactuar con repositorios
- **GitHub Desktop**: Para usuarios que prefieren GUI
- **Actions**: CI/CD automatizado

## 🐳 03-Containerizacion

### Docker-Desktop
**Para desarrollo local**
- **Configuración**: 4GB RAM, WSL2 backend
- **Extensiones**: Docker VS Code extension
- **Comandos frecuentes**:
  ```bash
  docker build -t mi-app .
  docker run -p 3000:3000 mi-app
  docker-compose up -d
  ```

### Docker-Compose
**Para entornos multi-contenedor**
```yaml
version: '3.8'
services:
  app:
    build: .
    ports:
      - "3000:3000"
  db:
    image: postgres:13
    environment:
      POSTGRES_PASSWORD: password
```

## 🗄️ 04-Bases-Datos

### PostgreSQL
**Base de datos principal**
- **Cliente**: pgAdmin o DBeaver
- **Extensiones**: PostGIS para datos geoespaciales
- **Backup**: pg_dump y pg_restore

### MongoDB
**Para datos NoSQL**
- **Cliente**: MongoDB Compass
- **Atlas**: Servicio cloud de MongoDB
- **Drivers**: pymongo para Python

## 🌐 05-APIs-Servicios-Web

### Postman-Insomnia
**Testing de APIs**
- **Colecciones**: Organizadas por proyecto
- **Environment**: Variables por entorno (dev, staging, prod)
- **Tests**: Scripts para validar respuestas

### HTTPie
**Cliente HTTP desde terminal**
```bash
http GET https://api.example.com/users
http POST https://api.example.com/users name=John email=john@example.com
```

## 📊 06-Monitoreo-Debugging

### Logging

#### ELK-Stack
**Elasticsearch, Logstash, Kibana**
- **Filebeat**: Recolección de logs
- **Logstash**: Procesamiento
- **Kibana**: Visualización

#### Sentry
**Error tracking**
- **SDKs**: Disponible para múltiples lenguajes
- **Integraciones**: GitHub, Slack
- **Alerts**: Notificaciones automáticas

### Debugging

#### VS-Code-Debugger
**Para la mayoría de lenguajes**
- **Configuraciones**: launch.json por proyecto
- **Breakpoints**: Condicionales y de función
- **Variables**: Inspección en tiempo real

#### Browser-DevTools
**Para desarrollo web**
- **Network**: Análisis de requests
- **Console**: JavaScript debugging
- **Application**: Storage y cache inspection

## 🚀 07-Despliegue-Hosting

### Cloud-Providers

#### Vercel
**Para aplicaciones frontend/static**
- **Configuración**: vercel.json
- **Functions**: Serverless functions
- **Analytics**: Integrado

#### Heroku
**PaaS completo**
- **Dynos**: Contenedores gestionados
- **Add-ons**: Bases de datos, caching
- **Pipelines**: Review apps

#### DigitalOcean
**VPS y servicios gestionados**
- **Droplets**: VPS configurables
- **App Platform**: PaaS similar a Heroku
- **Spaces**: Almacenamiento S3-compatible

### CI-CD

#### GitHub-Actions
**CI/CD integrado con GitHub**
```yaml
name: CI/CD
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Run tests
        run: npm test
```

#### GitLab-CI
**Para proyectos en GitLab**
- **Runners**: Compartidos o dedicados
- **Environments**: Staging y production
- **Security**: Container scanning

## 📝 08-Productividad

### Gestion-Tareas

#### Notion
**Base de conocimiento y tareas**
- **Databases**: Para tracking de proyectos
- **Templates**: Para documentación consistente
- **Integrations**: Slack, GitHub

#### Trello-Jira
**Kanban boards**
- **Workflows**: Personalizables
- **Automation**: Reglas automáticas
- **Integrations**: GitHub, Slack

### Comunicacion

#### Slack
**Comunicación del equipo**
- **Canales**: Organizados por proyecto/tema
- **Integrations**: GitHub, CI/CD, monitoring
- **Apps**: Para automatización

#### Discord
**Comunidades y soporte**
- **Servidores**: Por tecnología o proyecto
- **Bots**: Para automatización
- **Voz**: Para pair programming

## 🔒 09-Seguridad

### Autenticacion

#### Auth0
**Gestión de identidad**
- **Social login**: Google, GitHub, etc.
- **MFA**: Autenticación multifactor
- **SSO**: Single sign-on

#### JWT-io
**Debugger para JWT tokens**
- **Encode/Decode**: Tokens JWT
- **Verification**: Firma y claims
- **Libraries**: Para múltiples lenguajes

### Seguridad-Aplicaciones

#### OWASP-ZAP
**Security testing**
- **Scanner**: Automático de vulnerabilidades
- **Proxy**: Interceptación de requests
- **Scripts**: Testing personalizado

#### Snyk
**Vulnerability scanning**
- **Dependencies**: En package.json, requirements.txt
- **Containers**: En imágenes Docker
- **Integrations**: CI/CD pipelines

## 🎨 10-Diseno-UX

### Herramientas-Diseno

#### Figma
**Design system y prototipado**
- **Components**: Reutilizables
- **Auto-layout**: Constraints automáticos
- **Plugins**: Para desarrollo

#### Penpot
**Open source alternative**
- **Components**: Sistema de diseño
- **Prototyping**: Interacciones
- **Collaboration**: Tiempo real

### Accesibilidad

#### WAVE
**Evaluación de accesibilidad**
- **Chrome Extension**: Análisis automático
- **Contrast**: Checker de colores
- **Guidelines**: WCAG compliance

#### axe-DevTools
**Testing de accesibilidad**
- **API**: Para integración en CI
- **Reports**: Detallados con soluciones
- **Standards**: WCAG 2.1 AA

## 📚 11-Aprendizaje-Comunidad

### Plataformas-Aprendizaje

#### freeCodeCamp
**Aprendizaje práctico**
- **Certificaciones**: Por tecnología
- **Proyectos**: Portfolio building
- **Comunidad**: Foro activo

#### Codecademy
**Cursos interactivos**
- **Paths**: Carreras guiadas
- **Practice**: Entorno integrado
- **Mobile**: Aprendizaje en móvil

### Comunidades

#### Stack-Overflow
**Preguntas y respuestas**
- **Tags**: Por tecnología
- **Reputation**: Sistema de puntos
- **Jobs**: Ofertas de trabajo

#### Dev-to
**Blogging y comunidad**
- **Artículos**: Tutoriales y experiencias
- **Tags**: Trending topics
- **Connect**: Red de developers

## 🔄 Mantenimiento

- **Actualizaciones**: Mantén herramientas actualizadas
- **Backup**: Configuraciones y datos importantes
- **Documentación**: Registra cambios y nuevas herramientas
- **Evaluación**: Revisa utilidad de herramientas cada 6 meses

## 🤝 Recomendaciones

¿Buscas recomendaciones específicas?

- **Para principiantes**: VS Code + freeCodeCamp
- **Para equipos**: Slack + Jira + GitHub
- **Para startups**: Vercel + PlanetScale + Sentry
- **Para enterprise**: AWS + Terraform + Kubernetes
```
