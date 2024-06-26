const express = require("express");
const app = express.Router();
const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();
const jwt = require("jsonwebtoken");
const dotenv = require("dotenv");

dotenv.config();

app.post("/create", async (req, res) => {
    try {
        const result  = await prisma.Customers.create({
            data: req.body,
        });

        res.send({ result: result });
    } catch (e) {
        res.status(500).send({ error: e.message });
    }
})

app.get('/list', async (req, res) => {
    try {
        const data = await prisma.Customers.findMany({
            orderBy: {
                id: 'desc'
            },
            where: {
                status: 'use'
            }
        })

        res.send({ results: data });
    } catch (e) {
        res.status(500).send({ error: e.message });
    }
})

app.delete('/remove/:id', async (req, res) => {
    try {
        await prisma.Customers.update({
            data: {
                status: 'delete'
            },
            where: {
                id: parseInt(req.params.id)
            }
        })

        res.send({ message: 'success' })
    } catch (e) {
        res.status(500).send({ error: e.message });
    }
})

app.put('/update', async (req, res) => {
    try {
        await prisma.Customers.update({
            data: req.body,
            where: {
                id: parseInt(req.body.id)
            }
        });

        res.send({ message: 'success'});
    } catch (e) {
        res.status(500).send({ error: e.message })
    }
})

module.exports = app;