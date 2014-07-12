Myfox Swagger files - Unofficial repo
=====================================

!! The generated code hasn't been tested at all. It may work, or not. !!

# More information
See http://www.myfox.fr/ and https://api.myfox.me for more information on myfox and their API.

See https://helloreverb.com/developers/swagger for more information on Swagger.

# What is it ?
This repo gathers both the json files and the generated code for the myfox API.

Json files have been taken from the myfox API documentation (https://api.myfox.me/dev/docs)
and slightly modified to make them valid for generation.

Code has been generated on OS X Mavericks with the following command :

    ./bin/runscala.sh com.wordnik.swagger.codegen.Basic{LANGUAGE}Generator http://www.myfox-swagger.loc

See https://github.com/wordnik/swagger-codegen for more information on code generation