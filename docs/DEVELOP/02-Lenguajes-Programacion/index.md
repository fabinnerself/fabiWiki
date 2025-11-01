---
title: Lenguajes de Programación
description: Guías, frameworks y recursos para diferentes lenguajes de programación
---

# 🛠️ 02-Lenguajes-Programacion

Colección de guías, frameworks, herramientas y recursos útiles para el desarrollo con diferentes lenguajes de programación. Esta sección incluye tanto tecnologías que uso regularmente como recomendaciones para diferentes casos de uso.

## 🐘 02-PHP

### Guias
**Guías esenciales para desarrollo PHP**
- **Configuración de entorno**: XAMPP, WAMP, Docker
- **Sintaxis básica**: Variables, arrays, funciones
- **Buenas prácticas**: PSR standards, código limpio
- **Seguridad**: Validación de inputs, prevención de SQL injection

### Frameworks
**Frameworks PHP más populares**
- **Laravel**: Framework moderno con ORM Eloquent
- **Symfony**: Componentes reutilizables y escalables
- **CodeIgniter**: Framework ligero y rápido
- **Yii**: Alto rendimiento para aplicaciones grandes

### CRMs
**Sistemas CRM basados en PHP**
- **SuiteCRM**: Open source con amplia funcionalidad
- **Dolibarr**: ERP/CRM para pequeñas empresas
- **Odoo**: Suite de negocio completa
- **Vtiger**: CRM con enfoque en ventas

### Ejemplos
**Código de ejemplo y snippets**
```php
<?php
// Ejemplo de conexión a base de datos
$pdo = new PDO('mysql:host=localhost;dbname=test', 'user', 'password');
$stmt = $pdo->prepare('SELECT * FROM users WHERE email = ?');
$stmt->execute([$email]);
$user = $stmt->fetch();
?>
```

## 💛 02-JavaScript

### Frontend

#### React
**Librería para interfaces de usuario**
- **Hooks**: useState, useEffect, useContext
- **Estado global**: Redux, Context API
- **Frameworks**: Next.js, Gatsby
- **Herramientas**: Create React App, Vite

#### Angular
**Framework completo para frontend**
- **TypeScript**: Lenguaje principal
- **Componentes**: Arquitectura modular
- **Servicios**: Inyección de dependencias
- **RxJS**: Programación reactiva

#### Vue
**Framework progresivo**
- **Options API vs Composition API**: Dos estilos diferentes
- **Vuex**: Gestión de estado
- **Vue Router**: Navegación SPA
- **Nuxt.js**: Framework para Vue

#### EasyUI
**Componentes UI fáciles de usar**
- **Widgets**: DataGrid, Tree, Layout
- **Temas**: Múltiples estilos predefinidos
- **Integración**: Con jQuery y Angular

### Backend

#### NodeJS
**JavaScript en el servidor**
- **Event Loop**: Arquitectura no bloqueante
- **Módulos**: CommonJS vs ES modules
- **NPM**: Gestión de paquetes
- **Cluster**: Múltiples procesos

#### Express
**Framework web minimalista**
- **Middleware**: Funciones intermedias
- **Routing**: Definición de endpoints
- **Template engines**: Pug, EJS, Handlebars
- **Error handling**: Manejo centralizado

#### Prisma
**ORM moderno para bases de datos**
- **Schema**: Definición declarativa
- **Client**: Tipado seguro
- **Migrations**: Control de versiones de BD
- **Studio**: Interfaz visual

### Librerias

#### jQuery
**Librería para manipulación DOM**
- **Selectores**: Busqueda eficiente de elementos
- **Animaciones**: Efectos y transiciones
- **AJAX**: Peticiones asíncronas
- **Plugins**: Ecosistema extenso

#### ExtJS
**Framework para aplicaciones empresariales**
- **Componentes ricos**: Grids, forms, charts
- **MVC**: Arquitectura organizada
- **Theming**: Personalización de apariencia
- **Sencha CMD**: Herramientas de build

## 🐍 02-Python

### FastAPI
**Framework moderno para APIs**
- **Tipado**: Con Python type hints
- **Documentación automática**: Swagger UI y ReDoc
- **Rendimiento**: Similar a Node.js y Go
- **Dependencias**: Sistema de inyección

### Django
**Framework full-stack**
- **ORM**: Abstraction de base de datos
- **Admin**: Interfaz administrativa automática
- **Templates**: Sistema de plantillas
- **Security**: Protecciones incorporadas

### Scripts
**Scripts Python para automatización**
```python
#!/usr/bin/env python3
# Script para procesar archivos
import os
import pandas as pd

def process_files(directory):
    for filename in os.listdir(directory):
        if filename.endswith('.csv'):
            df = pd.read_csv(os.path.join(directory, filename))
            # Procesamiento aquí
            print(f"Processed {filename}")

if __name__ == "__main__":
    process_files('./data')
```

## 🌐 02-HTML-CSS

### HTML5
**Estructura semántica moderna**
- **Elementos semánticos**: header, nav, main, article, section, footer
- **APIs**: Local Storage, Geolocation, Canvas
- **Formularios**: Nuevos tipos de input (email, date, range)
- **Accesibilidad**: ARIA attributes, landmarks

### CSS3
**Estilos avanzados y animaciones**
- **Flexbox**: Layout unidimensional
- **Grid**: Layout bidimensional
- **Animaciones**: @keyframes, transitions
- **Variables CSS**: Custom properties
- **Responsive**: Media queries

### Responsive
**Diseño adaptable a dispositivos**
- **Mobile First**: Enfoque de desarrollo
- **Breakpoints**: Puntos de quiebre comunes
- **Viewport**: Meta tag esencial
- **Images**: srcset y picture element

## 🗄️ 02-SQL

### PostgreSQL
**Base de datos relacional avanzada**
- **JSONB**: Almacenamiento y consulta de JSON
- **Indexes**: Diferentes tipos para optimización
- **Extensions**: PostGIS, pg_trgm
- **Replication**: Alta disponibilidad

### MySQL
**Base de datos relacional popular**
- **Storage Engines**: InnoDB, MyISAM
- **Optimization**: Query optimization, indexing
- **Replication**: Master-slave setup
- **Tools**: MySQL Workbench, phpMyAdmin

### SQL-Server
**Base de datos de Microsoft**
- **T-SQL**: Lenguaje procedural extendido
- **Integration Services**: ETL processes
- **Reporting Services**: Report generation
- **Analysis Services**: OLAP cubes

### Oracle
**Base de datos empresarial**
- **PL/SQL**: Lenguaje procedural
- **Partitioning**: División de tablas grandes
- **RAC**: Clustering de alta disponibilidad
- **Tools**: SQL Developer, Enterprise Manager

### SQLite
**Base de datos embebida**
- **Zero configuration**: Sin servidor que configurar
- **File-based**: Base de datos en un solo archivo
- **Limitations**: Para cargas moderadas
- **Use cases**: Mobile apps, desarrollo local

## 🔄 Mejores Prácticas

- **Testing**: Escribe tests para tu código
- **Documentación**: Mantén documentación actualizada
- **Versionado**: Usa control de versiones siempre
- **Code Review**: Revisa código con otros desarrolladores
- **Performance**: Optimiza queries y algoritmos

## 🚀 Recomendaciones por Proyecto

¿No sabes qué tecnología elegir?

- **Aplicaciones web empresariales**: Java + Angular
- **Startups rápidas**: Python + React
- **APIs REST**: Node.js + Express o Python + FastAPI
- **Aplicaciones móviles**: JavaScript + React Native
- **Ciencia de datos**: Python + Jupyter
- **Contenido dinámico**: PHP + WordPress
```
