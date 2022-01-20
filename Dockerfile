FROM nginx:1.17.2-alpine
#nome da imagem base que usaremos para criar a imagem
ADD index.html /usr/share/nginx/html
#adciona tudo dentro do diretorio atual root para o path informado
