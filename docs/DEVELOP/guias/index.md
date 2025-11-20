---
title: Guías y Manuales Técnicos
description: Colección organizada de manuales, ayudas memoria y documentación técnica
---

# 🗂️ Guías y Manuales Técnicos

Colección completa de documentación técnica, manuales de instalación, ayudas memoria y configuraciones organizadas por categorías.

---

## 🛠️DevOps & Contenedores

### Docker
- **🐳 MANUAL DE INSTALACIÓN DE DOCKER EN DEBIAN 12**

**Descripción General**

Guía completa para instalar y configurar Docker en sistemas Debian 12 (Bookworm). Incluye tanto Docker Engine como comandos esenciales para el manejo de contenedores.

---

**Proceso de Instalación**

**Prerrequisitos**

- Sistema operativo: Debian 12 (Bookworm)
- Acceso de superusuario (sudo)
- Conexión a Internet activa

**Fuente Oficial**

Esta guía está basada en la documentación oficial de Docker:
**🔗 https://docs.docker.com/engine/install/debian/**

---

**Comandos de Instalación**

**1. Instalación de Paquetes Específicos**

```bash
# Instalar paquetes Docker individualmente
sudo dpkg -i containerd.io_1.6.24-1_amd64.deb \
            docker-ce-cli_24.0.6-1~debian.12~bookworm_amd64.deb \
            docker-buildx-plugin_0.11.2-1~debian.12~bookworm_amd64.deb \
            docker-compose-plugin_2.21.0-1~debian.12~bookworm_amd64.deb
```

**2. Instalación desde Repositorios**

```bash
# Instalar Docker completo desde repositorios
sudo apt install docker.io -y
```

---

**Verificación de la Instalación**

**Comprobar Estado del Servicio**

```bash
# Verificar que el servicio Docker esté activo
sudo systemctl status docker

# Si no está activo, iniciar el servicio
sudo systemctl start docker
sudo systemctl enable docker  # Para inicio automático
```

**Probar Instalación**
```bash
# Ejecutar contenedor de prueba
sudo docker run hello-world
```

---

**Instalación de Docker Desktop (Opcional)**

**Configurar Repositorio**
```bash
# Agregar clave GPG oficial de Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Agregar repositorio de Docker
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Actualizar lista de paquetes
sudo apt update
```

---

**Comandos Esenciales de Docker**

**Gestión de Imágenes**
```bash
# Listar todas las imágenes descargadas
docker images

# Descargar una imagen específica
docker pull nombre-imagen:tag

# Eliminar una imagen
docker rmi nombre-imagen
```

**Gestión de Contenedores**

```bash
# Listar TODOS los contenedores (activos e inactivos)
docker ps -a

# Listar solo contenedores ACTIVOS
docker ps

# Listar solo los IDs de contenedores activos
docker ps -q

# Ejecutar un contenedor
docker run -d --name mi-contenedor nombre-imagen

# Detener un contenedor
docker stop nombre-contenedor

# Eliminar un contenedor
docker rm nombre-contenedor
```

**Información del Sistema**

```bash
# Ver información general de Docker
docker info

# Ver uso de recursos
docker stats

# Ver logs de un contenedor
docker logs nombre-contenedor
```

---

**Configuraciones Recomendadas**

**Agregar Usuario al Grupo Docker**

```bash
# Evitar usar sudo con cada comando Docker
sudo usermod -aG docker $USER

# Recargar grupos (cerrar y abrir sesión)
newgrp docker
```

**Configurar Docker para Inicio Automático**

```bash
# Habilitar inicio automático con el sistema
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

---

**Solución de Problemas Comunes**

**Si el servicio no inicia:**

```bash
# Reiniciar el servicio Docker
sudo systemctl restart docker

# Ver logs detallados
sudo journalctl -u docker.service
```

**Si hay problemas de permisos:**

```bash
# Verificar que el usuario esté en el grupo docker
groups $USER

# Reiniciar el servicio después de agregar al grupo
sudo systemctl restart docker
```

---

**Notas Importantes**

- ✅ **Probado en**: Debian 12 (Bookworm)
- 🐳 **Versión Docker**: 24.0.6
- 📅 **Fecha de prueba**: [Incluir fecha de última verificación]
- ⚠️ **Requisitos**: Mínimo 2GB RAM recomendados para operación básica

---

**Recursos Adicionales**

- [Documentación Oficial Docker](https://docs.docker.com/)
- [Guía de Referencia de Comandos](https://docs.docker.com/reference/)
- [Repositorio de Imágenes Docker Hub](https://hub.docker.com/)

---

- **COMANDOS DOCKER**

**Comandos frecuentes y útiles para Docker**

- **comandos usuales docker**
  
  ```
  // Espacio para lista de comandos Docker usuales
  ```
  
- **comandos usuales docker1.txt**
  
  ```
  // Espacio para comandos adicionales Docker
  ```

- **DOCKER COMPOSE**

**Orquestación de múltiples contenedores**

- **proy/docker-compose.yml**
  
  ```
  // Espacio para contenido del docker-compose.yml
  ```
  
- **proy/index.html**
  
  ```
  // Espacio para contenido del index.html
  ```

### Contenedores
**Configuración y gestión de contenedores específicos**

- **meshcentralcont/**
  
  *Contenedores para MeshCentral con diferentes configuraciones*
  
  - **01/dockerfile**
    
    ```
    // Espacio para contenido del dockerfile 01
    ```
  
  - **02/Dockerfile**
    
    ```
    // Espacio para contenido del Dockerfile 02
    ```
  
  - **03/Dockerfile**
    
    ```
    // Espacio para contenido del Dockerfile 03
    ```
  
  - **04/Dockerfile**
    
    ```
    // Espacio para contenido del Dockerfile 04
    ```
  
  - **dockerfile**
    
    ```
    // Espacio para contenido del dockerfile principal
    ```

### Documentación
**Material de referencia y mejores prácticas**

- **How to deploy a Docker container with SSH access _ TechRepublic.pdf**
  
  *Guía para implementar contenedores Docker con acceso SSH*



---

## 📝 02. Control de Versiones

### Git
**Control de versiones y gestión de código**

- **manual git.txt**
  
  *Manual básico de Git para principiantes*
  
  ```
  // Espacio para contenido del manual Git
  ```
  
- **git flow.txt**
  
  *Flujo de trabajo con Git Flow*
  
  ```
  // Espacio para contenido de Git Flow
  ```

### Flujos de Trabajo
**Automatización y procesos de desarrollo**

- **.qodo/agents**
  
  *Configuración de agentes de automatización*
  
- **.qodo/workflows**
  
  *Definición de flujos de trabajo automatizados*

---

## 🖥️ 03. Virtualización & Cloud

### Proxmox
**Plataforma de virtualización empresarial**

- **proxmox install contenedor.txt**
  
  *Guía para instalar contenedores en Proxmox*
  
  ```
  // Espacio para contenido de instalación de contenedores
  ```
  
- **proxmox install manualv1 es**
  
  *Manual de instalación Proxmox versión 1 en español*
  
- **proxmox install manualv1 es.txt**
  
  *Versión en texto del manual de instalación*

### KVM
**Virtualización basada en kernel**

- **kvm manual**
  
  *Manual completo de KVM*
  
- **Convert VirtualBox Disk Image (VDI) to Qcow2 format _ ComputingForGeeks.pdf**
  
  *Guía para conversión de formatos de disco virtual*

### Kasm
**Plataforma de workspace containers**

- **apuntes de kasm instalar.txt**
  
  *Notas de instalación de Kasm*
  
  ```
  // Espacio para contenido de instalación Kasm
  ```

### VirtualBox
**Virtualización de escritorio**

- **man inst vbox mc equipo es v1**
  
  *Manual de instalación de VirtualBox para MeshCentral*

---

## 🌐 04. Servicios Web & Proxy

### MeshCentral
**Plataforma de gestión remota**

- **manual instalacion meshcentral es v1.3.doc**
  
  *Manual de instalación versión 1.3 en español*
  
- **manual instalacion meshcentral.doc**
  
  *Manual general de instalación*
  
- **meshcentral2-installersguide-783794.png**
  
  *Imagen guía de instalación*

### Nginx
**Servidor web y proxy inverso**

- **ngingx manual**
  
  *Manual de uso de Nginx*
  
- **01.htm**
  
  *Ejemplo de archivo HTML para Nginx*
  
- **How to Install Nginx on Debian 12 Linux – Its Linux FOSS.pdf**
  
  *Guía de instalación en Debian 12*

### Homarr
**Dashboard personalizable**

- **instalar hommar.txt**
  
  *Guía de instalación de Homarr*
  
  ```
  // Espacio para contenido de instalación Homarr
  ```

---

## 🔐 05. Seguridad & Encriptación

### Encriptación
**Herramientas de cifrado y seguridad**

- **ayuda memoria zip gpg.md**
  
  *Ayuda memoria para ZIP y GPG en Markdown*
  
  ```markdown
  // Espacio para contenido de ayuda memoria ZIP/GPG
  ```
  
- **ayuda memoria zip gpg.txt**
  
  *Versión en texto de ayuda memoria ZIP/GPG*

### Unifi Controller
**Gestión de redes Ubiquiti**

- **Ayuda memoria unifi controller.txt**
  
  *Comandos y configuraciones para Unifi Controller*
  
  ```
  // Espacio para contenido Unifi Controller
  ```

### KMSpico
**Herramientas de activación Windows**

- **KMSpico.exe**
  
  *Ejecutable de activación*
  
- **pass-kmspico.txt**
  
  *Contraseñas y información de KMSpico*

---

## 💻 06. Desarrollo Frontend

### React
**Librería para interfaces de usuario**

- **proyectos react.xls**
  
  *Hoja de cálculo con proyectos React y planificación*
  
  ```
  // Espacio para descripción de proyectos React
  ```

---

## ⚙️ 07. Programación & Backend

### Prisma
**ORM para bases de datos**

- **iniciar prisma be.txt**
  
  *Guía para iniciar proyectos con Prisma en backend*
  
  ```
  // Espacio para contenido de inicio con Prisma
  ```

### DotNet
**Plataforma de desarrollo Microsoft**

- **ayuda memoria dot net.txt**
  
  *Comandos y referencias de .NET*
  
  ```
  // Espacio para ayuda memoria .NET
  ```

---

## 📊 08. Sistemas & Administración

### Linux Debian
**Sistema operativo y configuración**

- **interfaces/**
  
  *Configuración de interfaces de red*
  
  - **interfaces**
    
    ```
    // Espacio para configuración de interfaces
    ```
  
  - **sources.list**
    
    ```
    // Espacio para configuración de repositorios
    ```

- **ami mariadb**
  
  *Configuración de MariaDB*
  
- **ami php.txt**
  
  *Configuración de PHP*

### SSH
**Conexiones seguras remotas**

- **am  VISUAL CODE ssh.txt**
  
  *Configuración de SSH para Visual Studio Code*
  
  ```
  // Espacio para configuración SSH VSCode
  ```

### Serial USB
**Conexiones serie y USB**

- **am serial usb.txt**
  
  *Configuración de puertos serie USB*
  
  ```
  // Espacio para configuración serial USB
  ```

### Hosting
**Servicios de alojamiento web**

- **am host gratuito**
  
  *Información sobre hosting gratuito*
  
  ```
  // Espacio para información de hosting
  ```

---

## 🖨️ 09. Hardware & Periféricos

### Impresoras
**Controladores y configuración**

- **HP Laser Jet 1020 plus installation.pdf**
  
  *Manual de instalación HP LaserJet*
  
- **install Epson L365 in Ubuntu debian.pdf**
  
  *Guía de instalación Epson L365 en Linux*

### Escritorio
**Configuración de escritorio y accesos directos**

- **Cathy (copy).desktop**
  
  *Acceso directo copia de Cathy*
  
- **Cathy_equip.desktop**
  
  *Acceso directo para equipos Cathy*

---

## 📁 10. Instalación & Configuración

### Instalación de Equipos
**Configuración de equipos de fábrica**

- **instalar_equip_fab.xls**
  
  *Checklist y procedimientos para instalación de equipos*
  
  ```
  // Espacio para procedimientos de instalación
  ```

### Navegadores
**Configuración y sitios web**

- **sitios brave.txt**
  
  *Lista de sitios y configuración para Brave browser*
  
  ```
  // Espacio para sitios y configuración Brave
  ```
---

## 🤖 11. Clientes AI & Desarrollo

Integración de APIs de inteligencia artificial para aplicaciones web y móviles. Incluye configuración, autenticación, clientes AI (droid, claude cli, etc) y ejemplos prácticos de implementación.

---
### Droid 
**Site:** https://app.factory.ai

**Comando:** droid (powershield/terminal)

**modelo:** claude 4.5

**Video:** https://youtu.be/AZ5HWtIdXO0?list=PL9tsMgfzMiMK7jbX0DZF57cy4gDR0Lm1m

### qwen

**Comando:** qwen (powershield/terminal)

### Gemini

**Comando:** gemini (powershield/terminal)


### Roo Code
**Api Porvider:** Roo Code Cloud

**Model:** Deepseek/depseek-chat-v3.1 | xai/grok-code-fast-1 

### Kilo
**Api Provider:** Qwen code

**Oauth credentials Path:** ~/.qwen/oauth_creds.json

**Model:** qwen3-coder-plus


### Agentrouter en RooCode/Kilo
**Site:** https://agentrouter.org

**Proveedor de API:** OpenAI COmpatible

**URl Base:** https://agentrouter.org/V1

**Model:** CaludeCode4.5 

**Video:** https://youtu.be/JoeInjyhMo8?list=PL9tsMgfzMiMK7jbX0DZF57cy4gDR0Lm1m

### Kawaipilot en RooCode/Kilo

**Site:** https://openrouter.ai/kwaipilot/kat-coder-pro:free

**Proveedor de API:** OpenAI COmpatible

**URl Base:** https://openrouter.ai/api/v1

**Model:** kwaipilot/kat-coder-pro:free 

### Gemini

**Site:** https://aistudio.google.com/api-keys

**Proveedor de API:** Google Gemini

**Modelo:** gemini-2.5-pro
**comando:** gemini (powershield/terminal)

### Claude / agentrouter.org
**Site:** https://agentrouter.org/console/token

**Doc:** https://docs.agentrouter.org/start.html 
```powershield
$env:ANTHROPIC_BASE_URL="https://agentrouter.org/"

# 设置您的 AgentRouter API 密钥, 可以从 https://agentrouter.org/console/token 获取
$env:ANTHROPIC_AUTH_TOKEN="sk-xxx"
$env:ANTHROPIC_API_KEY="sk-xxx"

```

o Editar variables de entorno 

**Comando:** claude  (powershield/terminal)

**Video:** https://youtu.be/rmPNO_9UH_0
 

## 🤖 12. prompts

Prompts utiles para desarollo

---
### Figma Make
1 En figma ir a Archivo -> Nuevo -> Make
2 En make hacer paste con el elemento de diseño a migrar al principo del prompt mas el prompt. 

```
(pasted figma element)convertir este diseño en pixel perfect react app usando tailwind ccs. Considerar 1 que los elementos con refijo btn_(primary/secondary/terciary) seran botones. 2 que los elementos con prefijo card_ son tarjetas. 4 los elementos con prefijo link_ son links a la misma pagina y secciones 4 el codigo generado debe ser responsivo
``` 
---
**video fuente:** https://youtu.be/2PP-3l4LfbM