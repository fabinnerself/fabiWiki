---
title: Referencias
description: Información de consulta rápida y referencias técnicas
---

# 📖 Referencias

Colección organizada de información técnica de consulta rápida, comandos, configuraciones y referencias útiles para el desarrollo de software.

## 🏷️ Categorías

### Lenguajes de Programación

#### Python
- [Sintaxis Básica](python/sintaxis.md)
- [Estructuras de Datos](python/estructuras.md)
- [Módulos Estándar](python/modulos.md)
- [Buenas Prácticas](python/practicas.md)

#### JavaScript/TypeScript
- [ES6+ Features](javascript/es6.md)
- [TypeScript Types](javascript/typescript.md)
- [Async/Await](javascript/async.md)
- [DOM Manipulation](javascript/dom.md)

#### Java
- [JVM y JDK](java/jvm.md)
- [Colecciones](java/colecciones.md)
- [Streams API](java/streams.md)
- [Spring Framework](java/spring.md)

### Tecnologías Web

#### Frontend
- [HTML5 Elements](web/html5.md)
- [CSS Grid/Flexbox](web/css-layout.md)
- [React Hooks](web/react-hooks.md)
- [Vue.js Composition API](web/vue-composition.md)

#### Backend
- [REST API Design](web/rest-api.md)
- [GraphQL Schema](web/graphql.md)
- [JWT Authentication](web/jwt.md)
- [OAuth 2.0](web/oauth2.md)

#### Bases de Datos
- [SQL Queries](database/sql.md)
- [MongoDB Operations](database/mongodb.md)
- [PostgreSQL Functions](database/postgresql.md)
- [Redis Commands](database/redis.md)

### DevOps & Infraestructura

#### Docker
- [Dockerfile Best Practices](docker/dockerfile.md)
- [Docker Compose](docker/compose.md)
- [Multi-stage Builds](docker/multistage.md)
- [Networking](docker/networking.md)

#### Kubernetes
- [Pods y Deployments](kubernetes/pods.md)
- [Services y Ingress](kubernetes/services.md)
- [ConfigMaps y Secrets](kubernetes/config.md)
- [Helm Charts](kubernetes/helm.md)

#### Cloud Providers
- [AWS Services](cloud/aws.md)
- [Google Cloud](cloud/gcp.md)
- [Azure Resources](cloud/azure.md)
- [Vercel Functions](cloud/vercel.md)

### Herramientas

#### Git
- [Comandos Básicos](git/basic.md)
- [Branching Strategy](git/branching.md)
- [Rebase vs Merge](git/rebase.md)
- [Git Hooks](git/hooks.md)

#### Terminal
- [Comandos Linux](terminal/linux.md)
- [PowerShell](terminal/powershell.md)
- [Bash Scripting](terminal/bash.md)
- [Zsh Aliases](terminal/zsh.md)

#### Editores
- [VS Code Extensions](editors/vscode.md)
- [Vim Commands](editors/vim.md)
- [Emacs Packages](editors/emacs.md)
- [Sublime Text](editors/sublime.md)

## 🔍 Búsqueda Rápida

Usa la función de búsqueda integrada (Ctrl+K / Cmd+K) para encontrar información específica:

- `python list comprehension`
- `docker compose networks`
- `git rebase interactive`
- `kubernetes secrets`

## 📋 Cheatsheets

### Python
```python
# List comprehension
numbers = [1, 2, 3, 4, 5]
squares = [x**2 for x in numbers]

# Dictionary comprehension
{x: x**2 for x in numbers}

# Lambda functions
lambda x: x**2

# Decorators
def decorator(func):
    def wrapper(*args, **kwargs):
        print("Before")
        result = func(*args, **kwargs)
        print("After")
        return result
    return wrapper
```

### JavaScript
```javascript
// Arrow functions
const square = x => x * x;

// Destructuring
const [a, b] = [1, 2];
const {name, age} = {name: 'John', age: 30};

// Promises
fetch('/api/data')
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error(error));

// Async/await
async function fetchData() {
  try {
    const response = await fetch('/api/data');
    const data = await response.json();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}
```

### Docker
```dockerfile
# Multi-stage build
FROM node:16 AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
```

### Git
```bash
# Basic workflow
git add .
git commit -m "Commit message"
git push origin main

# Branch management
git checkout -b feature/new-feature
git merge main
git rebase main

# Undo changes
git reset --soft HEAD~1  # Undo commit, keep changes
git reset --hard HEAD~1  # Undo commit and changes
git revert HEAD          # Create new commit that undoes changes
```

## 🎯 Uso Efectivo

1. **Búsqueda primero**: Usa la búsqueda antes de crear nuevo contenido
2. **Mantén actualizado**: Actualiza referencias cuando cambien
3. **Enlaces cruzados**: Conecta conceptos relacionados
4. **Ejemplos prácticos**: Incluye código funcional cuando sea posible

## 🤝 Contribuciones

Para agregar nuevas referencias:

- Organiza por categorías lógicas
- Incluye ejemplos prácticos
- Mantén formato consistente
- Agrega enlaces a documentación oficial

## 🔗 Enlaces Externos

- [MDN Web Docs](https://developer.mozilla.org/)
- [Python Documentation](https://docs.python.org/)
- [Docker Docs](https://docs.docker.com/)
- [Kubernetes Docs](https://kubernetes.io/docs/)