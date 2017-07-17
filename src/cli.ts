#!/usr/bin/env node
import * as yargs from 'yargs'
import * as fs from "fs";
import File from "./file";
import Export from "./export";

const argv = yargs
    .usage('Usage: $0 filename')
    .demandCommand(1)
    .help('h')
    .alias('h', 'help')
    .argv;

console.dir(argv._[0]);

console.dir(readFiles(argv._[0]));
function readFiles(dir: string): File[] {
    let files = fs.readdirSync(dir);
    let out: File[] = [];

    for (let file of files) {
        let full = dir + "/" + file;

        if (fs.lstatSync(full).isFile()) {
            let contents = fs.readFileSync(full, "utf8");
            out.push(new File(file, contents));
        } else {
            out = out.concat(readFiles(full + "/"));
        }
    }
    return out;
}