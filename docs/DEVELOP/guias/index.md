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
### Droid rovodev 

**Site API :** https://id.atlassian.com/manage-profile/security/api-tokens

**Comando:** droid / acli rovodev run (powershield/terminal) 

**modelo:** claude 4.5

**Video:** https://youtu.be/AZ5HWtIdXO0?list=PL9tsMgfzMiMK7jbX0DZF57cy4gDR0Lm1m

### Claude

**Site API** https://openrouter.ai/settings/keys 

**Comando** claude (powershield/terminal)

**Modelo**  Claude Opus 4.6, the openrouter/free model.

**Video** https://youtu.be/GRUjApPqCoE

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
 
### opencode

**Site:** https://opencode.ai/workspace/wrk_01KC5FRWXH2XNHEK4VEFCVYATN/keys

**Comando:** opencode  (powershield/terminal)

**Video:** [youtube](https://youtu.be/e9j2iEwJru0)

**Modelo:** Grok Code Fast 1 OpenCode Zen

**Info util** opencode auth login -> elegir (opencode zen)

aux kilo/roocode
https://agentrouter.org/console/token
https://docs.agentrouter.org/en/roocode.html



## 🤖 12. prompts

Prompts utiles para desarollo

---
### Figma Make
1 En figma ir a Archivo -> Nuevo -> Make.

2 En make hacer paste con el elemento de diseño a migrar al principo del prompt mas el prompt. 

V1
```
(pasted figma element)convertir este diseño en pixel perfect react app usando tailwind ccs. Considerar 1 que los elementos con refijo btn_(primary/secondary/terciary) seran botones. 2 que los elementos con prefijo card_ son tarjetas. 4 los elementos con prefijo link_ son links a la misma pagina y secciones 4 el codigo generado debe ser responsivo
``` 
v2
```
(pasted figma elements)convertir este diseño en pixel perfect react app usando tailwind ccs. Considerar 1 que los elementos con refijo btn_(primary/secondary/terciary) seran botones. 2 que los elementos con prefijo card_ son tarjetas. 4 los elementos con prefijo link_ son links a la misma pagina y secciones 5 elemento con prefijo faq_ corresponden a una seccion de prguntas frecuentes 6 elem prefij img_  si imagenes 7 elem prefijo drag_drop imput drang and drop para carga de archivos 8 elem prefij text_ imput para exto 9 elem prefij combobox_ inputs combobox con dos elementos  10 los 2 diseños tiene mismos header y footers volver componentes 11 los links internos del footer y header del formulario deberian ir a landing page  11 el codigo generado debe ser responsivo
``` 
---
**video fuente:** https://youtu.be/2PP-3l4LfbM

---
### Notebook organizer 

Aplicación fulstack probada con modelos AI claude, qwen-cli, roocode (xai/grok-code-fast-1), copilot, amp, roocode(kwaipilot/kat-coder-pro:free) 

```
**Nombre de la Aplicación:** Note Organizer (Full-Stack)

**Función Principal:** Una aplicación web full-stack (frontend React + backend Node.js/Express) que permite a los usuarios crear, guardar, editar, eliminar y categorizar notas. El frontend se comunica con el backend para gestionar los datos, que se almacenan persistentemente en una base de datos PostgreSQL.

**Backend (Node.js + Express + PostgreSQL + Prisma):**

*   **Tecnología:** Node.js, Express, Base de datos PostgreSQL, Prisma ORM, variables de entorno (`.env`).
*   **Variables de Entorno (`.env`):**
    *   `DATABASE_URL`: URL de conexión a la base de datos PostgreSQL (debe incluir SSL si es necesario, ej. `postgresql://user:password@host:port/dbname?sslmode=require`).
    *   `PORT`: Puerto en el que correrá el servidor (ej. `PORT=3001`). Render usará una variable `PORT` proporcionada por el entorno.
    *   `NODE_ENV`: Para distinguir entre desarrollo y producción (`development`, `production`).
*   **Modelo de Datos (Prisma Schema - `schema.prisma`):**
    *   Modelo `Note` con los siguientes campos:
        *   `id`: String @id @default(dbgenerated("gen_random_uuid()")) @db.Uuid
        *   `title`: String @db.VarChar(255) (No nulo).
        *   `tags`: String? @db.Text (Puede ser nulo, almacenar como string separado por comas o JSON).
        *   `content`: String @db.Text (No nulo, renombrado de "Note Text").
        *   `createdAt`: DateTime @default(now()) (Fecha de creación).
        *   `updatedAt`: DateTime @updatedAt (Fecha de modificación).
        *   Estructura de la tabla generada:
            ```sql
            CREATE TABLE "notes" (
              "id"   UUID NOT NULL DEFAULT gen_random_uuid(),
              "title" VARCHAR(255) NOT NULL,
              "tags" TEXT, -- Almacenar como string separado por comas o JSON
              "content" TEXT NOT NULL,
              "createdAt" TIMESTAMP DEFAULT NOW(),
              "updatedAt" TIMESTAMP DEFAULT NOW()
            );
            ```
*   **API Endpoints:**
    *   **`GET /api/v1/health`**
        *   Verifica el estado de la API.
        *   **Respuesta:**
            ```json
            {
              "success": true,
              "message": "API is running",
              "version": "1.0.0",
              "timestamp": "2025-11-16T15:00:00Z", // Fecha y hora actual o del servidor
              "env": "development" // O "production" según corresponda
            }
            ```
    *   `GET /api/notes`: Obtener todas las notas (opcionalmente con query params para búsqueda y filtrado).
    *   `GET /api/notes/:id`: Obtener una nota específica por ID.
    *   `POST /api/notes`: Crear una nueva nota.
    *   `PUT /api/notes/:id`: Actualizar una nota existente por ID.
    *   `DELETE /api/notes/:id`: Eliminar una nota por ID.
    *   (Opcional pero útil) Endpoint para obtener la lista de todas las etiquetas únicas usadas (ej. `GET /api/notes/tags`).
*   **Lógica del Backend:**
    *   Conectar Prisma Client al servidor Express.
    *   Implementar las operaciones CRUD (Crear, Leer, Actualizar, Eliminar) para el modelo `Note` utilizando Prisma Client.
    *   Implementar lógica para búsqueda de texto completo (en `title` y `content`) y filtrado por etiquetas basado en los parámetros de la solicitud (query params). Esto puede implicar usar `PrismaClient` para construir consultas dinámicamente (por ejemplo, `where` con `contains` para texto y `contains` para tags si se almacenan como string separado por comas; si se usa JSON, se podría usar `hasSome`).
    *   Implementar manejo de errores básico (ej. 404 si la nota no existe, 500 para errores internos del servidor).
    *   Configurar CORS para permitir solicitudes desde el origen del frontend (ej. `http://localhost:3000` localmente, y el dominio donde se despliegue el frontend en Render si aplica).
    *   Asegurar que el servidor escuche en el puerto proporcionado por la variable de entorno `PORT` (necesario para Render).

**Frontend (React Single-File App):**

*   **Tecnología:** React (JSX), Tailwind CSS (u otra librería de estilos).
*   **Estructura:** Aplicación en un solo archivo (por ejemplo, `App.jsx`).
*   **Diseño UI:**
    *   Fondo blanco.
    *   Diseño limpio, moderno y responsive (mobile-first).
    *   **Layout:**
        *   Título "Note Organizer" alineado a la izquierda en la parte superior.
        *   Icono de búsqueda (lupa) alineado a la derecha (visible principalmente en vistas móviles, puede ocultarse o integrarse en la barra de búsqueda en escritorio).
        *   Barra de búsqueda de texto alineada a la derecha (visible principalmente en vistas de escritorio).
        *   Lista horizontal de filtros de etiquetas debajo del título y/o barra de búsqueda.
        *   Icono "+" negro flotante en la esquina inferior derecha para crear nuevas notas.
*   **Funcionalidades:**
    *   **Interacción con el Backend:** Realizar solicitudes HTTP (usando `fetch` o `axios`) a los endpoints del backend para todas las operaciones (carga, creación, edición, eliminación).
    *   **Gestión del Estado:** Utilizar `useState` y `useEffect` para manejar el estado de las notas, la búsqueda, los filtros, el estado de edición/creación, etc.
    *   **Vista de Notas:** Mostrar las notas recuperadas del backend en formato de tarjetas (`card`) con título, contenido y etiquetas.
    *   **Operaciones CRUD:**
        *   **Crear:** Botón "+" flotante que abre un modal o formulario para ingresar título, contenido y etiquetas. Al guardar, llama al endpoint `POST /api/notes`.
        *   **Leer:** Listar todas las notas recuperadas del backend en tarjetas.
        *   **Actualizar:** Botón de edición en cada tarjeta que permite modificar título, contenido y etiquetas. Al guardar, llama al endpoint `PUT /api/notes/:id`.
        *   **Eliminar:** Botón de eliminar en cada tarjeta con confirmación. Al confirmar, llama al endpoint `DELETE /api/notes/:id`.
    *   **Organización y Búsqueda:**
        *   **Filtrado por Etiquetas:** La lista horizontal de etiquetas permite filtrar las notas mostradas en el frontend.
        *   **Búsqueda de Texto:** Barra de búsqueda que filtra las notas mostradas en el frontend según coincidencias en título o contenido (puede hacer la solicitud al backend con el término de búsqueda).
        *   **Ordenamiento:** Opciones para ordenar las notas mostradas por "Fecha de Creación" (descendente por defecto) o "Título" (alfabéticamente).
*   **Estilo:** Puedes usar Tailwind CSS o CSS plano para lograr el diseño limpio y responsive.

**Estructura del Proyecto:**

note-organizer-fullstack/
├── backend/
│   ├── src/
│   │   ├── app.js (o index.js - Configuración de Express)
│   │   ├── routes/
│   │   │   ├── notes.js (Definición de rutas CRUD y health)
│   │   │   └── health.js (Ruta de health check)
│   │   ├── controllers/
│   │   │   └── noteController.js (Lógica de negocio para notas)
│   │   └── middleware/
│   │       └── errorHandler.js (Manejo centralizado de errores)
│   ├── prisma/
│   │   └── schema.prisma
│   ├── .env (archivo local, NO se sube al repo)
│   ├── .env.template
│   ├── package.json
│   └── README.md (Documentación específica del backend)
├── frontend/
│   ├── public/
│   ├── src/
│   │   └── App.jsx (Aplicación React en un solo archivo)
│   ├── package.json
│   ├── tailwind.config.js (si se usa Tailwind)
│   └── README.md (Documentación específica del frontend)
├── .gitignore
├── README.md (Documentación general del proyecto full-stack)
└── render.yaml (Configuración para despliegue en Render)


**Documentación (`README.md`):**

*   **Título y Descripción:** Breve descripción de la aplicación Note Organizer.
*   **Tecnologías:** Lista de tecnologías usadas (React, Node.js, Express, PostgreSQL, Prisma).
*   **Instalación Local:**
    *   Clonar el repositorio.
    *   **Backend:**
        *   Navegar a `./backend`.
        *   Ejecutar `npm install` para instalar dependencias.
        *   Crear `.env` basado en `.env.template`.
        *   Ejecutar `npx prisma migrate dev` para aplicar migraciones a la base de datos.
        *   Ejecutar `npm run dev` (o el script correspondiente) para iniciar el servidor backend.
    *   **Frontend:**
        *   Navegar a `./frontend`.
        *   Ejecutar `npm install` para instalar dependencias.
        *   Ejecutar `npm start` (o el script correspondiente) para iniciar el servidor de desarrollo de React.
*   **Variables de Entorno:** Descripción de las variables necesarias en `.env` para backend y frontend (si aplica).
*   **Endpoints API:** Lista de endpoints disponibles con ejemplos de uso (p. ej., `curl`).
    *   `GET /api/v1/health`
    *   `GET /api/notes`
    *   `GET /api/notes/:id`
    *   `POST /api/notes`
    *   `PUT /api/notes/:id`
    *   `DELETE /api/notes/:id`
*   **Despliegue en Render:** Incluir la sección correspondiente (abajo).
*   **Estructura de Directorios:** Breve explicación de la estructura del proyecto.

**`.env.template` (Backend):**
env
DATABASE_URL="postgresql://user:password@host:port/dbname?sslmode=require" # Ajustar según tu configuración
PORT=3001 # Render usará su propia variable PORT
NODE_ENV=development


**Despliegue en Render (`render.yaml`):**

*   Este archivo debe estar en la raíz del repositorio.
*   Configura un **Servicio Web** (`web service`) para el backend de Node.js.
*   Asegura la conexión a la base de datos PostgreSQL (puede ser un servicio adicional en Render o una instancia externa como Neon).
*   Configura variables de entorno, incluyendo la contraseña de la base de datos como un `secret`.
*   Render espera que la aplicación Node.js escuche en el puerto definido por la variable de entorno `PORT`.

#### `render.yaml`
yaml
services:
  - type: web
    name: notesapp-backend # Nombre único para tu servicio
    env: node # Entorno de ejecución
    region: oregon # Opción de región (puede variar)
    buildCommand: |
      cd backend && npm install && npx prisma generate # Asegura que Prisma se genere antes del deploy
    startCommand: |
      cd backend && npx prisma db push --accept-data-loss && node src/app.js # O el archivo principal de tu servidor, asegura migraciones si es necesario
    envVars:
      - key: NODE_ENV
        value: production
      - key: DATABASE_URL # Ajusta según tu conexión a PostgreSQL en Render o externa
        fromDatabase:
          name: notesapp-db # Nombre del servicio de base de datos en Render (debes crearlo también)
          property: DATABASE_URL
      - key: DB_SSLMODE # Si tu base de datos requiere SSL
        value: require
      - key: TZ
        value: America/La_Paz # O tu zona horaria
    # Plan gratuito
    plan: free
    # Ajusta el puerto si es necesario (Render lo proporciona automáticamente a través de la variable PORT)
    # No es necesario especificar el puerto aquí si tu app lo lee de process.env.PORT

solicitud inicial:
tener 3 registros de prubea popular la bd con datos de relleno en la primera carga

```
 
### Util pompts

https://github.com/x1xhlol/system-prompts-and-models-of-ai-tools.git

 

### github programing

https://github.com/EbookFoundation/free-programming-books.git

https://github.com/microsoft/Web-Dev-For-Beginners

https://github.com/practical-tutorials/project-based-learning.git

https://github.com/ashishps1/awesome-leetcode-resources.git

https://github.com/sindresorhus/awesome.git

fin  

### 13.Clasificar

**coolify**

https://coolify.io/docs/get-started/installation

**CheatSheets**
**SQL**
![SQL](sql_cheat.jpg)

**RJ45**
![RJ-45](rj45.jpg)



### 14. visual studio extensions
- Rest API

  ![Rest API](rest_api_img.png)
- Live Server 
  ![Live server](live_serv.png) 

fin
