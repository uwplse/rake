PREFIX=$1
MIN=$2
MAX=$3

for i in $(seq $MIN $MAX); do
    NAME="${PREFIX}_${i}"
    echo $NAME
    racket $NAME.rkt 1> $NAME.stdout 2> $NAME.stderr
done
