rm -rf report && mkdir report
rm -rf submission && mkdir submission

STUDENTS=("muab19" "haac14" "osah18" "frah19" "haal19" "saaf18" "baaa19" "daam18" "ebam18" "axad19" "daap19" "head19" "naad19" "siae19" "siaq19" "liar19" "paar19" "osas19" "jobj18" "svax18" "reaz19" "gubg19" "jobj16" "olbe19" "sebr19" "macj19" "chbl19" "afbo19" "sibo18" "jobs19" "adbz17" "mabw19" "chca13" "teca19" "alca19" "ancl19" "aidg19" "jodl19" "miek19" "joeg19" "kreg19" "raen19" "adei18" "aner19" "roer18" "ader19" "gufo19" "alfh14" "alfs19" "jefr19" "mafd19" "elge19" "pegh19" "xegi18" "isgl19" "emed15" "adgm19" "magm19" "rogr19" "ligm19" "stgu19" "togo19" "mahk19" "luha19" "erhn18" "hahs18" "mehe19" "sahx11" "shhe19" "alhi19" "anho16" "nihl19" "jiho19" "hahu19" "ahhu19" "dahq14" "sahk19" "mahu19" "anih19" "daje19" "saji19" "anjn19" "oljh19" "kajn19" "lujh19" "sijh19" "chjg14" "axja19" "jeks19" "mokh19" "jokp15" "iskl18" "viko19" "erko19" "mcko11" "aekr19" "saku16" "kakl19" "idla18" "frls19" "malm19" "tila19" "hile14" "jale19" "jolb15" "mamv18" "stli19" "vilu16" "belu19" "ollu19" "olln19" "chly19" "macp16" "krmr18" "hamt19" "jomi19" "esmo18" "hami19" "nimu09" "kamn19" "nina19" "elni14" "pene14" "aino17" "kino15" "anpq15" "seno19" "brna15" "jeoj19" "lioo19" "bjos19" "lupa18" "qipa19" "hepa19" "hepe19" "mapu19" "abra19" "kara19" "mari19" "jorj18" "viri19" "erru17" "anro19" "idsa18" "nasc16" "suse19" "ussa19" "nasl19" "sisd19" "hesi19" "agsh19" "sisl19" "rist19" "frst19" "hese19" "rost19" "jess19" "chsr19" "evsr17" "fisu19" "issv19" "arts19" "asti18" "ebtj19" "jobt19" "emai19" "daae19" "maaq19" "olai19" "ylwr15" "bayi19" "amzu13" "emoh19" "maor19" "maoi19")

for i in "${STUDENTS[@]}"
do
    if [[ -f ../me/kmom10/try1/exam.py ]]
    then
        rm ../me/kmom10/try1/exam.py
    fi

    dbwebb --yes --force download try1 $i

    if [[ -f ../me/kmom10/try1/exam.py ]]
    then
        cp ../me/kmom10/try1/exam.py submission/"$i"_exam.py
        sed -i '/"""/,/"""/d' submission/"$i"_exam.py
    fi
done

python3 check-similarity.py

firefox report/index.html &
