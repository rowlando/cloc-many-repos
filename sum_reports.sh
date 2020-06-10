cd reports
ARGS=$(cat ../repos.txt)

cloc --sum-reports --out=sumofrepos ${ARGS}
