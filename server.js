const express = require('express');
const app = express();
const port = 3000;

app.get( '/', (req, res) => res.send('You are an MT10') );
app.listen(port, () => console.log('Masters of Torque is listening on port ' + port + '!'));
