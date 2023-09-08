---
title: "Diferentes estilos de Markdown"
author: [Alejandro Alfaro Sánchez]
date: "2023-09-08"
subject: "Markdown"
keywords: [Markdown]
subtitle: "Este es un documento donde se muestran los diferentes estilos de Markdown (Fondo personalizado)"
lang: "es"
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-color: "03A64A"
toc: true
toc-own-page: true
...


### Características

- Admite Markdown estándar/CommonMark y GFM (GitHub Flavored Markdown);
- Con todas las funciones: vista previa en tiempo real, carga de imágenes (entre dominios), texto preformateado/bloques de código/inserción de tablas, plegado de código, reemplazo de búsqueda, solo lectura, temas, varios idiomas, L18n, entidades HTML, resaltado de sintaxis de código ...;
- Extras de Markdown: soporte ToC (Tabla de contenido), Emoji, listas de tareas, @Links...;
- Compatible con todos los principales navegadores (IE8+), Zepto.js y iPad compatibles;
- Soporte de identificación, interpretación, filtrado de etiquetas HTML;
- Soporte TeX (expresiones LaTeX, basadas en KaTeX), diagrama de flujo y diagrama de secuencia de sintaxis extendida de Markdown;
- Admite el cargador de módulos AMD/CMD (Require.js y Sea.js) y complementos de editor personalizados/definidos;

# Logo alejandroalsa

![alejandroalsa](img/ALEJANDROALSA%20LOGO%20NEGRO.png)

**Tabla de contenido**

[TOCM]

[TOC]

# H1 Encabezado
## H2 Encabezado
### H3 Encabezado
#### H4 Encabezado
##### H5 Encabezado
###### H6 Encabezado

### Caracteres

*Italic*      _Italic_
**Emphasis**  __Emphasis__
***Emphasis Italic*** ___Emphasis Italic___

Superíndice: X<sub>2</sub>, Subíndice: O<sup>2</sup>

**Abreviatura(link HTML abbr tag)**

La especificación <abbr title="Hyper Text Markup Language">HTML</abbr> la mantiene el <abbr title="World Wide Web Consortium">W3C</abbr>.

### Citas en bloque

> Citas en bloque

Párrafos y saltos de línea

> "Citas en bloque Citas en bloque", [Link](http://localhost/)

### Links

[Links](http://localhost/)

[Links con título](http://localhost/ "Título")

`<link>` : <https://github.com>

[Link de referencia][id/name] 

[id/name]: http://link-url/

### Bloques de código y resaltado

#### Código en Línea

`$ npm install marked`

#### Bloques de código (estilo con sangría)

Sangría de 4 espacios, como `<pre>` (texto preformateado).

    <?php
        echo "Hola Mundo!";
    ?>
    
Bloques de código (texto preformateado):

    | Primer encabezado  | Segundo encabezado |
    | ------------------ | ------------------ |
    | Celda de contenido | Celda de contenido |
    | Celda de contenido | Celda de contenido |

#### Javascript

```javascript
function test(){
	console.log("Hola Mundo!");
}
 
(function(){
    var box = function(){
        return box.fn.init();
    };

    box.prototype = box.fn = {
        init : function(){
            console.log('box.init()');

			return this;
        },

		add : function(str){
			alert("add", str);

			return this;
		},

		remove : function(str){
			alert("remove", str);

			return this;
		}
    };
    
    box.fn.init.prototype = box.fn;
    
    window.box =box;
})();

var testBox = box();
testBox.add("jQuery").remove("jQuery");
```

#### Código HTML

```html
<!DOCTYPE html>
<html>
    <head>
        <mate charest="utf-8" />
        <title>Hola Mundo!</title>
    </head>
    <body>
        <h1>Hola Mundo!</h1>
    </body>
</html>
```

### Imágenes

Imagen:

![](https://pandao.github.io/editor.md/examples/images/4.jpg)

> Sigue tu corazón.

----

### Listas

#### Lista desordenada (-)

- Valor A
- Valor B
- Valor C
     
#### Lista desordenada (*)

* Valor A
* Valor B
* Valor C

#### Lista desordenada (signo más y anidada)
                
+ Valor A
+ Valor B
    + Valor B 1
    + Valor B 2
    + Valor B 3
+ Valor C
    * Valor C 1
    * Valor C 2
    * Valor C 3

#### Lista ordenada
                
1. Valor A
2. Valor B
3. Valor C
                
----
                    
### Tablas
                    
Primer encabezado   | Segundo encabezado
------------------- | -------------
Celda de contenido  | Celda de contenido
Celda de contenido  | Celda de contenido 

| Primer encabezado   | Segundo enzabezado  |
| ------------------- | ------------------- |
| Celda de contenido  | Celda de contenido  |
| Celda de contenido  | Celda de contenido  |

| Nombre de la función | Descripción                    |
| -------------------- | ------------------------------ |
| `help()`             | Muestra la ventana de ayuda.   |
| `destroy()`          | **¡Destruye tu ordenador!**    |

| Artículo   | Precio |
| ---------  | ------:|
| Ordenador  |  1600€ |
| Ratón      |    12€ |
| USB        |     1€ |

| Alineado a la izquierda | Centro alineado | Alineado a la derecha |
| :---------------------- |:---------------:| ---------------------:|
| contenido               | contenido       | contenido             |
| contenido               | contenido       | contenido             |
| contenido               | contenido       | contenido             |
                
----

#### Entradas HTML 

&copy; &  &uml; &trade; &iexcl; &pound;
&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot; 

X&sup2; Y&sup3; &frac34; &frac14;  &times;  &divide;   &raquo;

18&ordm;C  &quot;  &apos;

## Escapar de caracteres especiales

\*literal asterisks\*

## Markdown extras

### GFM lista de tareas

- [x] GFM Tarea 1
- [x] GFM Tarea 2
- [ ] GFM Tarea 3
    - [ ] GFM Tarea 3-1
    - [ ] GFM Tarea 3-2
    - [ ] GFM Tarea 3-3
- [ ] GFM Tarea 4
    - [ ] GFM Tarea 4-1
    - [ ] GFM Tarea 4-2

### TeX(LaTeX)

$$E=mc^2$$

Inline $$E=mc^2$$ Inline, Inline $$E=mc^2$$ Inline

$$\sin(\alpha)^{\theta}=\sum_{i=0}^{n}(x^i + \cos(f))$$


### Fin
