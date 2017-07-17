# Work in progress!


I just had this idea and created this repo :sweat_smile:.

---

[![Build Status](https://travis-ci.org/Sirius-A/abap-doc-export.svg?branch=master)](https://travis-ci.org/Sirius-A/abap-doc-export) [![Greenkeeper badge](https://badges.greenkeeper.io/Sirius-A/abap-doc-export.svg)](https://greenkeeper.io/)

# abap-doc-export
Generates a HTML export from ABAP Doc comments within abap source code files

[ABAP Doc](https://blogs.sap.com/2013/04/29/abap-doc/) allows documentation of ABAP source code right within the code itself. The documentation can be exported to HTML files in Eclipse ADT. ADT only allows exports form classes and packages. It also requires connection to a SAP System and can not be automated easily.

This utility generates the documentation export from any abap source. 
The main purpose of abap-doc-export is to be used in CI of an [abapGit](http://abapgit.org) project.

## Usage 
1. npm i
2. npm run compile
3. npm start <folder_path> (i.e. npm start abap-samples)
