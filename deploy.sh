#!/bin/bash

echo "🔧 Construindo o projeto Angular para produção..."
ng build --configuration production --base-href /contabilidade-medeiros/

echo "🧹 Limpando a pasta docs antiga..."
rm -rf docs
mkdir docs

echo "📁 Copiando arquivos de build para a pasta docs..."
cp -r dist/contabilidade-medeiros/browser/* docs/

echo "📦 Adicionando arquivos ao Git..."
git add docs -f
git commit -m "Realizando deploy"
git push origin main

echo "✅ Deploy finalizado com sucesso!"
