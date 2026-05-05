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

### Prompt corto (para imagen de referencia ya cargada)
```
same character, consistent style: 3D soft chibi mascot, white rounded inflatable body,
dark olive green cap and apron (#3A5040), rosy pink cheeks, big glossy black eyes,
two small mint-green leaf sprigs on cap, dark ceramic coffee cup with leaf motif,
toy-like soft surface texture, photorealistic integration
```

### Prompt completo (sin imagen de referencia)
```
3D chibi mascot character named Noeguito, official mascot of a coffee shop.
White rounded inflatable soft-toy body, big head with large shiny black eyes and 
rosy pink circular cheeks, subtle curved smile. Wearing a dark olive green (#3A5040) 
barista cap with two small mint-green leaf sprigs on the side, matching dark olive green 
apron over white shirt. Holding a dark ceramic coffee cup with a small leaf/plant motif, 
with steam rising. Chibi proportions: head 1/2 of body height. Soft matte surface with 
gentle light diffusion. Integrated into a photorealistic real environment. 
CapCut AI / Kling AI style. 9:16 vertical format.
```

### Prompt negativo (lo que NO debe aparecer)
```
flat illustration, 2D, cartoon outline, anime, different colors, brown cap, 
blue eyes, no apron, different costume, inconsistent design, human face
```

---

## Los 6 frames de referencia (`08_style_frames/`)

| Archivo                              | Uso principal                          | Calidad  |
|--------------------------------------|----------------------------------------|----------|
| `noeguito_ref_01_frontal_cuerpo.png` | Referencia frontal cuerpo completo     | ★★★★☆   |
| `noeguito_ref_02_frontal_dinamico.png`| Pose activa, boca abierta, ofreciendo | ★★★★★   |
| `noeguito_ref_03_frontal_neutral.png` | Pose neutral, máxima claridad — **USO PRINCIPAL** | ★★★★★   |
| `noeguito_ref_04_pose_thumbsup.png`  | Pose pulgar arriba, cafetería navideña | ★★★☆☆   |
| `noeguito_ref_05_exterior_parque.png`| Exterior/parque, torso visible         | ★★★☆☆   |
| `noeguito_ref_06_lateral_guino.png`  | Vista lateral, guiño — asomándose      | ★★★★☆   |

**Para cualquier generación nueva: adjunta siempre `noeguito_ref_03_frontal_neutral.png`**

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
