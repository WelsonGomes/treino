const swaggerAutogen = require('swagger-autogen')();
import dotenv from 'dotenv';

const outputFile = './swagger_output.json';
const endpointsFiles = ['./src/server.js'];

dotenv.config();
const PORT = process.env.SERVICE_PORT;

const doc = {
    info: {
        title: 'API Treino',
        description: 'Documentação da API usando Swagger',
        version: '1.0.0',
    },
    host: `localhost:${PORT}`,
    basePath: '/',
    schemes: ['http'],
    consumes: ['application/json'],
    produces: ['application/json'],
};

swaggerAutogen()(outputFile, endpointsFiles, doc).then(() => {
    console.log('Geração de documentação com sucesso pelo swagger');
    process.exit();
});