FROM mcr.microsoft.com/playwright:v1.44.1-jammy

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos do projeto
COPY . .

# Instalar dependências e compilar (se aplicável)
RUN npm install
RUN npm run build

# Copiar script de inicialização e garantir permissões
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expor a porta padrão (Render usa a PORT dinamicamente)
EXPOSE 8931

# Usar o script como comando de inicialização
CMD ["/start.sh"]