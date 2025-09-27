# Usar uma imagem base oficial do Python
FROM python:3.9-slim

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar os arquivos da aplicação para dentro do container
COPY requirements.txt .
COPY app.py .

# Instalar as dependências da aplicação
RUN pip install --no-cache-dir -r requirements.txt

# Expor a porta que a aplicação usa
EXPOSE 5000

# Comando para executar a aplicação quando o container iniciar
CMD ["python", "app.py"]