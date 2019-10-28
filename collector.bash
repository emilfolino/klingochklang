if [[ ! -d report ]]; then
    mkdir report
fi;

STUDENTS=("ancl19" "saji19")

for i in "${STUDENTS[@]}"
do
    echo "$i"
    if [[ ! -d submissions/$i ]]; then
        mkdir -p submissions/$i
    fi;
    dbwebb --yes --force download kmom06 $i
    cp -r ../me/kmom06/analyzer/ submissions/$i/
done

# python3 check-similarity.py
