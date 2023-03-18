#!/usr/bin/env node
'use strict';


const {mdToPdf} = require('md-to-pdf');
const fs = require("fs");


function getEnvVariable(name){
    return process.env['INPUT_' + name.toUpperCase()];
}


(async () => {
    const fileIn = getEnvVariable('input_file');
    const fileOut = getEnvVariable('output_file');

    const pdf = await mdToPdf({path: fileIn}, {dest: fileOut});
    if (pdf) fs.writeFileSync(pdf.filename, pdf.content);
})();