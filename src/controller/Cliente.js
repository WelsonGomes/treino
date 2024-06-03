const router = require('express').Router();

router.get('/', (req,res) => {
    return res.json({'msg':'Rota acessada com sucesso!'});
});

router.post('/',(req,res) => {
    return res.json({'msg':'Rota POST acessada com sucesso.'});
});

module.exports = router;