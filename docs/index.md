---
title: Portada
description: Bienvenido a la Wiki Personal de Favian
hide:
  - navigation
  - toc
---

<style>
.wiki-header {
  background: linear-gradient(135deg, #0d47a1 0%, #1976d2 100%);
  color: white;
  padding: 2rem 1rem;
  text-align: center;
  margin: -1.5rem -1.5rem 2rem -1.5rem;
}

.wiki-header h1 {
  font-size: 3rem;
  margin-bottom: 0.5rem;
  font-weight: 300;
}

.wiki-subtitle {
  font-size: 1.2rem;
  opacity: 0.9;
  margin-bottom: 2rem;
}

.search-container {
  max-width: 600px;
  margin: 0 auto;
}

.search-box {
  width: 100%;
  padding: 1rem;
  border: none;
  border-radius: 25px;
  font-size: 1.1rem;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

.featured-content {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 3rem 0;
}

.feature-card {
  background: var(--md-default-bg-color);
  border-radius: 8px;
  padding: 1.5rem;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  border: 1px solid var(--md-default-fg-color--light);
}

.feature-card h3 {
  color: var(--md-primary-fg-color);
  margin-top: 0;
}

.stats-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 1rem;
  margin: 2rem 0;
}

.stat-box {
  text-align: center;
  padding: 1rem;
  background: var(--md-code-bg-color);
  border-radius: 8px;
}

.stat-number {
  font-size: 2rem;
  font-weight: bold;
  color: var(--md-primary-fg-color);
}

.stat-label {
  font-size: 0.9rem;
  color: var(--md-default-fg-color--light);
}
</style>

<div class="wiki-header">
  <h1>🎯Wiki de Favian</h1>
  <p class="wiki-subtitle">La enciclopedia de conocimiento personal de Favian</p>

  <div class="search-container">
    <input type="text" class="search-box" placeholder="Buscar en la wiki..." id="search-input">
  </div>
</div>

## Bienvenido a la Wiki Personal de Favian

Bienvenido a **la Wiki Personal de Favian**, una enciclopedia de conocimiento personal diseñada para almacenar, organizar y compartir información de manera estructurada y accesible. Esta wiki personal es un espacio dedicado a documentar conocimientos, experiencias y recursos útiles en el mundo del desarrollo de software y la tecnología.

### 📚 Contenido Destacado

<div class="featured-content">
  <div class="feature-card">
    <h3>🏗️ Arquitectura de Software</h3>
    <p>Patrones de diseño, mejores prácticas y arquitecturas modernas para desarrollar aplicaciones robustas y escalables.</p>
    <a href="guias/index.md">Leer más →</a>
  </div>

  <div class="feature-card">
    <h3>💻 Desarrollo Web</h3>
    <p>Guías completas sobre desarrollo frontend, backend, APIs REST, GraphQL y tecnologías modernas del web.</p>
    <a href="guias/index.md">Leer más →</a>
  </div>

  <div class="feature-card">
    <h3>🚀 DevOps & Infraestructura</h3>
    <p>Containerización con Docker, orquestación con Kubernetes, CI/CD pipelines y cloud computing.</p>
    <a href="guias/index.md">Leer más →</a>
  </div>
</div>

### 📊 Estadísticas de la Wiki

<div class="stats-grid">
  <div class="stat-box">
    <div class="stat-number" id="pages-count">5</div>
    <div class="stat-label">Páginas</div>
  </div>
  <div class="stat-box">
    <div class="stat-number" id="categories-count">4</div>
    <div class="stat-label">Categorías</div>
  </div>
  <div class="stat-box">
    <div class="stat-number" id="edits-count">1</div>
    <div class="stat-label">Ediciones</div>
  </div>
  <div class="stat-box">
    <div class="stat-number" id="contributors-count">1</div>
    <div class="stat-label">Colaboradores</div>
  </div>
</div>

## 🏷️ Categorías Principales

- **[Guías](guias/index.md)** - Tutoriales y guías prácticas
- **[Proyectos](proyectos/index.md)** - Documentación de proyectos personales
- **[Referencias](referencias/index.md)** - Información de referencia rápida
- **[Herramientas](herramientas/index.md)** - Utilidades y recursos

## 📝 Contribuir

Esta wiki está abierta a contribuciones. Si tienes conocimiento que compartir:

1. Crea una nueva página en la categoría apropiada
2. Usa formato Markdown para el contenido
3. Incluye referencias y fuentes cuando sea posible
4. Mantén un lenguaje claro y accesible

## 🔗 Enlaces de Interés

- [GitHub Repository](https://github.com/fabinnerself)
- [Documentación MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [Markdown Guide](https://www.markdownguide.org/)

---

<div style="text-align: center; margin-top: 3rem; padding-top: 2rem; border-top: 1px solid var(--md-default-fg-color--light);">
  <p style="color: var(--md-default-fg-color--light);">
    Última actualización: <span id="last-updated"></span>
  </p>
</div>

<script>
  // Custom search functionality that integrates with MkDocs Material search
  document.getElementById('search-input').addEventListener('keypress', function(e) {
    if (e.key === 'Enter') {
      const query = this.value.trim();
      if (query) {
        // Trigger MkDocs Material's built-in search modal
        const searchInput = document.querySelector('.md-search__input');
        if (searchInput) {
          // Set the search query in the built-in search input
          searchInput.value = query;
          // Trigger input event to activate search
          searchInput.dispatchEvent(new Event('input', { bubbles: true }));
          // Focus the search input to show results
          searchInput.focus();
        } else {
          // Fallback: try to open search page if it exists
          window.location.href = '/search/?q=' + encodeURIComponent(query);
        }
      }
    }
  });

  // Set last updated date
  document.getElementById('last-updated').textContent = new Date().toLocaleDateString('es-ES');
</script>
</div>
