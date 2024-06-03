require('dotenv').config();
const express = require('express');

// Definição de rotas de acesso as requisições
const cliente = require('./controller/Cliente');

const app = express();
app.use(express.urlencoded({extended:true}))
app.use(express.json())
const PORT = process.env.SERVICE_PORT;

// Definição das chamadas das rotas
app.use('/Cliente', cliente);

app.listen(PORT, () => {
    console.log(`App running on port ${PORT}`);
});