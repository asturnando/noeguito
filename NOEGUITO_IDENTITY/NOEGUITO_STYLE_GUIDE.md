# NOEGUITO — Style Guide para Generación con IA

## Quién es Noeguito
Mascota oficial de Cafetería Noega. Personaje 3D chibi estilo "juguete inflable suave", integrado
en entornos fotorrealistas reales (cafeterías, parques, exteriores urbanos).

---

## Paleta de colores oficial

| Elemento        | Color           | HEX       | Descripción                          |
|-----------------|-----------------|-----------|--------------------------------------|
| Cuerpo          | Blanco cremoso  | `#F0EEEB` | Superficie inflada, mate, suave      |
| Gorra           | Verde oliva osc.| `#3A5040` | Igual que el delantal                |
| Delantal        | Verde oliva osc.| `#3A5040` | Textura tela, sobre camiseta blanca  |
| Mejillas        | Rosa suave      | `#F2A8A0` | Rubor circular, siempre presente     |
| Hojas           | Verde menta claro| `#BFCFBF` | Dos ramitas a los lados de la gorra  |
| Ojos/cejas      | Negro profundo  | `#1A1A1A` | Ojos grandes brillantes, cejas curvas|
| Taza de café    | Marrón oscuro   | `#2B1F18` | Cerámica oscura con motivo de hoja   |
| Vapor taza      | Blanco humo     | `#E8E8E8` | Líneas onduladas sobre la taza       |
| Camiseta interior| Blanco puro    | `#FFFFFF` | Visible por el cuello del delantal   |

---

## Descripción del personaje (para prompt de IA)

### ★ PROMPT DEFINITIVO
```
Noeguito, a cute 3D chibi character, official mascot of a coffee shop, clean smooth
rounded white body, soft matte surface with gentle light diffusion, big shiny black eyes,
rosy pink cheeks, subtle curved smile, dark olive green barista cap, small mint green
leaf sprigs on cap, matching dark olive green apron over white shirt, holding a dark
ceramic coffee cup with white leaf motif and steaming latte art. Photorealistic CGI
character composited into a real coffee shop interior, Noega café, warm ambient lighting,
depth of field, 9:16 vertical. No fabric, no seams, no wrinkles, no costume,
no flat illustration, no anime, no human face
```

### Prompt corto (con imagen de referencia ya cargada)
```
same character, smooth clean 3D CGI chibi, soft matte white rounded body,
dark olive green cap and apron, rosy pink cheeks, big black glossy eyes,
mint green leaf sprigs, dark ceramic coffee cup with leaf motif,
Noega coffee shop, photorealistic integration, 9:16 vertical
```

### Prompt negativo (lo que NO debe aparecer)
```
flat illustration, 2D, cartoon outline, anime, different colors, brown cap, 
blue eyes, no apron, different costume, inconsistent design, human face
```

---

## Vectores colorizados renderizados (`01_vectores/`)

| Archivo | Descripción |
|---------|-------------|
| `noeguito_hero_pose_COLOR.svg` | Vector editable con paleta real — para Illustrator/Figma |
| `noeguito_hero_pose_COLOR.png` | PNG renderizado listo (fondo transparente) |
| `noeguito_model_sheet_COLOR.svg` | Hoja maestra completa coloreada |
| `noeguito_model_sheet_COLOR.png` | PNG renderizado de toda la hoja |

> **Nota:** ojos en SVG están en `#3A5040` por limitación del SVG plano sin capas.
> Corrección: abrir en Illustrator/Figma y repintar las dos formas de ojos a `#1A1A1A` (2 min).

---

## Los 7 frames de referencia (`02_referencias_color/`)

| Archivo                              | Uso principal                                     | Calidad  |
|--------------------------------------|---------------------------------------------------|----------|
| `noeguito_ref_03_frontal_neutral.png` | Cuerpo completo, pose limpia — **PRINCIPAL**     | ★★★★★   |
| `noeguito_ref_07_cara_closeup.png`   | Solo cara — para face consistency en IA           | ★★★★★   |
| `noeguito_ref_02_frontal_dinamico.png`| Pose activa, boca abierta, ofreciendo taza       | ★★★★★   |
| `noeguito_ref_01_frontal_cuerpo.png` | Frontal cuerpo completo                           | ★★★★☆   |
| `noeguito_ref_06_lateral_guino.png`  | Vista lateral, guiño — asomándose                 | ★★★★☆   |
| `noeguito_ref_04_pose_thumbsup.png`  | Pose pulgar arriba, cafetería                     | ★★★☆☆   |
| `noeguito_ref_05_exterior_parque.png`| Exterior/parque, torso visible                    | ★★★☆☆   |

**Regla:** adjunta siempre `ref_03_frontal_neutral` + `ref_07_cara_closeup` juntos para máxima consistencia.

---

## Instrucciones por herramienta

### CapCut AI (la herramienta actual)
1. En "AI Video" → busca "Character reference" o "Image reference"
2. Adjunta: `noeguito_ref_03_frontal_neutral.png`
3. Usa el prompt corto de arriba
4. Si hay opción de "Style strength": ponla al máximo (100%)

### Kling AI / Hailuo / Runway
1. Adjunta `noeguito_ref_03_frontal_neutral.png` como **Image Reference** o **IP Adapter**
2. Usa el prompt completo
3. Añade el prompt negativo en el campo negativo

### Midjourney
```
[adjunta noeguito_ref_03_frontal_neutral.png] --cref [url_imagen] --cw 100
[prompt completo arriba] --ar 9:16 --style raw
```

### Para mantener consistencia entre generaciones:
- **Siempre usa el mismo frame de referencia** (`_ref_03_frontal_neutral.png`)
- Si la IA "deriva" el estilo, vuelve a adjuntar el frame + prompt negativo
- No mezcles el SVG B&N con los frames de video en la misma sesión

---

## Assets disponibles en este pack

```
NOEGUITO_ASSETS_MVP/
├── 00_master/          → Model sheet PNG completo
├── 01_character/       → Hero pose PNG + SVG
├── 02_turnaround/      → 4 vistas (frontal, 3/4, perfil, espalda)
├── 03_expressions/     → 5 expresiones
├── 04_mouths/          → 5 bocas
├── 05_poses/           → 3 poses
├── 06_coffee/          → Taza y vapor
├── 07_frames_reference/→ Todos los frames extraídos de los videos
│   ├── noeguito_modificado/  (10 frames HD 1080x1920)
│   └── clips/               (tres, cuatro, cinco, seis)
└── 08_style_frames/    → ★ Los 6 mejores frames curados para IA
```

---

## Nota sobre los SVG
Los SVG del pack son en escala de grises (blanco/negro) — son perfectos para:
- Referencia de forma y proporciones
- Ilustradores o redibujado vectorial
- Silueta y estructura del personaje

Para generación con IA siempre usa los frames de `08_style_frames/` que tienen el color real.
