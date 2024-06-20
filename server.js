const express = require('express');
const app = express();
const bodyParsar = require('body-parser');
const cors = require('cors');

const userController = require('./controllers/UserController');
const customerController = require('./controllers/CustomerController');

app.use(bodyParsar.json());
app.use(bodyParsar.urlencoded({ extended:true }))
app.use(cors());

app.use('/user', userController);
app.use('/customer', customerController);

app.listen(3001);