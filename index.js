const core = require('@actions/core');
const github = require('@actions/github');
const fs = require("fs");
const {mdToPdf} = require('md-to-pdf');


async function run() {
    try {
        const fileIn = core.getInput('input-file');
        const fileOut = core.getInput('output-file');

        console.log(`Processing ${fileIn} to ${fileOut}`);

        const pdf = await mdToPdf({path: fileIn}, {dest: fileOut});
        if (pdf) fs.writeFileSync(pdf.filename, pdf.content);

        const payload = JSON.stringify(github.context.payload, undefined, 2)
        console.log(`The event payload: ${payload}`);
    } catch (error) {
        core.setFailed(error.message);
    }
}

run();