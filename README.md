# PDF Markdown Generador

En este repositorio proporciono un laboratorio básico de generación de documentos PDF con estilo a través de Markdown con ayuda de [Pandoc](https://pandoc.org/) y la plantilla de estilo de [LaTeX](https://es.overleaf.com/) creada por [@Wandmalfarbe](https://github.com/Wandmalfarbe/pandoc-latex-template).

## Previsualización

| Fondo predeterminado  | Fondo personalizado |
| :-------------------: | :-----------------: |
| [![Fondo predeterminado](/img/Fondo_predeterminado.png)](Ejemplo%20fondo%20predeterminado.pdf) | [![Fondo personalizado](/img/Fondo_personalizado.png)](Ejemplo%20fondo%20personalizado.pdf) |


## Uso del laboratorio

Descarga o clona este repositorio:

```bash
git clone https://github.com/alejandroalsa/PDF-Markdawn-Generador
```

Copia el archivo `new-document.sh` a la siguiente ubicación `/usr/local/bin/`

```bash
sudo mv new-document.sh /usr/local/bin
```

Por último asígnale los permisos necesarios

```bash
sudo chmod +x /usr/local/bin/new-document.sh
```

Una vez realizados estos pasos podras ejecutar crear los archivos `.md` sin esfuerzo y listos para ser convertidos a PDF con las herramientas de [Pandoc](https://pandoc.org/), [LaTeX](https://es.overleaf.com/) y [@Wandmalfarbe](https://github.com/Wandmalfarbe/pandoc-latex-template).

Para poder crear los archivos `.md` tendrás que ejecutar el siguiente comando:

```bash
./new-document.sh -t "Titulo del Documento" -s "Subtítulo del Documento"
```

También podrás agregarle las opciones `-a` para identificar al autor y `-b` para indicar el tipo de fondo que deseas.

```bash
./new-document.sh -t "Titulo del Documento" -s "Subtítulo del Documento" -a "alejandroalsa" -b "22272E"
```

En el caso de que no indiques nada en `-a` de forma automática se asignara `alejandroalsa`, ya que es el que está establecido por defecto en el Script, de igual forma si no aplicas `-b` se aplicará el fondo por defecto que es `background.pdf`. En el caso de que este archivo no este en el directorio del documento el proceso de exportación a PDF fallara.

Por último para poder ejecutar Pandoc y generar el PDF con los estilos tendrás que ejecutar la siguiente instrucción:

```bash
pandoc "Nombre del archivo markdown.md" -o "Nombre del PDF.pdf" --from markdown --template "eisvogel" --listings
```

## Instalación de [Pandoc](https://pandoc.org/)

```bash
sudo apt-get update
```
```bash
sudo apt-get install pandoc
```
```bash
pandoc --version
```

## Instalación de [LaTeX](https://pandoc.org/)

```bash
sudo apt-get install texlive-latex-extra
```
```bash
sudo tlmgr install adjustbox babel-german background bidi collectbox csquotes everypage filehook footmisc footnotebackref framed fvextra letltxmacro ly1 mdframed mweights needspace pagecolor sourcecodepro sourcesanspro titling ucharcat ulem unicode-math upquote xecjk xurl zref
```

## Instalación de [Wandmalfarbe](https://pandoc.org/)

Descargar la última versión de la plantilla Eisvogel desde [este enlace](https://github.com/Wandmalfarbe/pandoc-latex-template/releases).

Extrae el archivo ZIP descargado en cualquier carpeta.

Mover la plantilla `eisvogel.latexa` su carpeta de plantillas de pandoc. La ubicación de la carpeta es `/usr/share/pandoc/data/templates/`.

Si no existe la carpeta `templates` tendrás que crearla.

## Descarga

```bash
git clone https://github.com/alejandroalsa/PDF-Markdawn-Generador
```

## Desarrolladores

> @alejandroalsa

## Licencia

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png"/></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.
