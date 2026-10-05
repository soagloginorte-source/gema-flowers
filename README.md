# Florería Azahar — página web 🌸

Página web lista para que la termines en **Claude Code** con tus fotos, tu logo
y tus datos reales.

## Qué hay en esta carpeta
```
floreria-azahar/
├── index.html          ← la página completa (abre esto en el navegador para verla)
├── CLAUDE.md           ← instrucciones que Claude Code lee solo
├── design-floreria.md  ← tu guía de diseño (reglas de cómo debe verse)
├── README.md           ← este archivo
└── assets/             ← aquí van tus imágenes (logo, hero, fotos de arreglos)
    └── LEEME.txt
```

## Cómo pasarlo a Claude Code
1. Descarga y descomprime esta carpeta en tu computadora.
2. Abre **Claude Code** en esa carpeta
   (en la terminal: entra a la carpeta y escribe `claude`), o ábrela desde la app.
3. Pídele lo que quieras, por ejemplo:
   - *"Mete el logo que está en assets/logo.png"*
   - *"Cambia el número de WhatsApp al 81 1234 5678"*
   - *"Pon estas fotos en el catálogo"* (arrástralas antes a `assets/`)
   - *"Cambia el nombre y la ciudad por los reales"*

Claude Code ya sabe qué es el proyecto y las reglas de diseño porque las lee de
`CLAUDE.md` y `design-floreria.md`.

## Para verla sin Claude Code
Solo haz doble clic en `index.html` y se abre en tu navegador.

## Lo que hay que cambiar (de muestra a real)
Todo lo editable rápido está arriba del `<script>` en `index.html`, en el bloque
**CONFIG**:
- Nombre de la florería
- Ciudad
- **Número de WhatsApp** (lo más importante — hoy es falso)
- Ruta del logo y de la foto del hero
- El catálogo de arreglos (nombre, precio, ocasión, foto)

Dirección, teléfono, horario, Instagram y reseñas están en el texto del HTML.

## Imágenes
Mete tus fotos en `assets/`. Revisa `assets/LEEME.txt` para los nombres y tamaños
sugeridos. Usa fotos reales con buena luz — son lo que de verdad vende.
