#!/bin/bash
 
FILE="${1}"
 
if [[ $# != 1 ]]; then
    echo "Usage: ./render_post.sh <file>"
    exit
fi
 
if [[ ! -f "${FILE}" ]]; then
    echo "Uh oh, it looks like the file you provided me doesn't exist: ${FILE}"
    exit
fi
 
hash watchmedo 2> /dev/null || {
    echo "Oh dear. I require Watchdog to work"
    echo "Install it with:"
    echo "\t$ pip install watchdog"
    exit
}
 
PATTERN="*.Rmd"
KNITR="echo \"Rerunning Knitr...\"; Rscript render_post.R ${FILE}"
 
echo "Watching ${FILE}..."
watchmedo shell-command --patterns="${PATTERN}" --command="${KNITR}" .