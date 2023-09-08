#!/bin/bash

titulo=""
subtitulo=""
autor="Alejandro Alfaro Sánchez"
background=""

print_usage() {
    echo "Uso: new-document -t <Titulo> -s <Subtitulo> [-a <Autor>] [-b <Background>]"
}

while getopts ":t:s:a:b:" opt; do
    case $opt in
        t)
            titulo="$OPTARG"
            ;;
        s)
            subtitulo="$OPTARG"
            ;;
        a)
            autor="$OPTARG"
            ;;
        b)
            background="$OPTARG"
            ;;
        \?)
            echo "Opción inválida: -$OPTARG" >&2
            print_usage
            exit 1
            ;;
    esac
done

if [ -z "$titulo" ]; then
    echo "El título es obligatorio."
    print_usage
    exit 1
fi

if [ -z "$background" ]; then
    background="fondo.pdf"
    background_option="titlepage-background"
else
    background_option="titlepage-color"
fi

cat <<EOL > "${titulo}.md"
---
title: "${titulo}"
author: [${autor}]
date: "$(date +'%Y-%m-%d')"
subject: "Markdown"
keywords: [Markdown, Example]
subtitle: "${subtitulo}"
lang: "es"
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
${background_option}: "$background"
toc: true
toc-own-page: true
...

<!-- pandoc "${titulo}.md" -o "${titulo}.pdf" --from markdown --template "eisvogel" --listings -->

# ${titulo}
EOL

echo "Archivo ${titulo}.md creado en el directorio actual."
code "${titulo}.md"
