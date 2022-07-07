# Todo em React com TypeScript

## criar imagem dev
### `docker build -f Dockerfile.dev -t todo-react-ts .`

## criar imagem produção
### `docker build -t todo-react-ts-prod .`

## rodar a aplicação dev 
### `docker run -it -p 3000:3000 --rm todo-react-ts`

## rodar a aplicação produção
### `docker run -it -p 80:80 --rm todo-react-ts-prod`

## usando composer ambiente desenvolvedor
### `docker-compose -f docker-compose-dev.yml up -d`
