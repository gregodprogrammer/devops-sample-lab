const express = require("express");
const app = express();
const PORT = process.env.PORT || 3001;

app.get('/', (req, res) => {
    res.send('Hello DevOps World!');
});

app.listen(PORT, '0.0.0.0', () => {
    console.log(`App running on http://0.0.0.0:${PORT}`);
});
