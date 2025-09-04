#!/bin/bash

# Simple LaTeX build script for resume
echo "Building resume.tex..."

cd "$(dirname "$0")"
/Library/TeX/texbin/xelatex -synctex=1 -interaction=nonstopmode -file-line-error resume.tex

if [ -f "resume.pdf" ]; then
    echo "✅ Build successful! PDF created: resume.pdf"
    echo "📄 Opening PDF..."
    open resume.pdf
else
    echo "❌ Build failed. PDF not created."
fi 