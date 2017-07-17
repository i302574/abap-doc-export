#!/usr/bin/env node
import yargs from 'yargs'
import * as fs from "fs";
import File from "./file";

const argv = require("yargs")
    .usage('Usage: $0 filename')
    .demandCommand(1)
    .help('h')
    .alias('h', 'help')
    .argv;

console.dir(argv[0]);


function readFiles(dir: string, pre = ""): File[] {
    let files = fs.readdirSync(dir);
    let out: File[] = [];

    for (let file of files) {
        let full = dir + "/" + file;

        if (fs.lstatSync(full).isFile()) {
            let contents = fs.readFileSync(full, "utf8");
            out.push(new File(pre + file, contents));
        } else {
            out = out.concat(readFiles(full, pre + file + "/"));
        }
    }
    return out;
}