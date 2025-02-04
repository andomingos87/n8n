# Usa a imagem oficial do n8n
FROM n8nio/n8n

# Define o diretório de trabalho
WORKDIR /data

# Copia o package.json para instalar dependências
COPY package.json /data/package.json

# Instala as dependências globalmente
RUN npm install

# Inicia o n8n
CMD ["n8n"]
