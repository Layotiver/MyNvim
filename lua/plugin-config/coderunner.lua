local cr = require("coderunner")
cr.commands = {
    sh = "${FP}",
    py = "python ${FP}",
    -- note that this is a shell command, so it can be something more elaborate 
    c = "gcc -o ${N} ${FP};if [[ $? ]];then ${N}; fi"
}