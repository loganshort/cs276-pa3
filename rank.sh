#!/usr/bin/env sh
# ./rank.sh <signal_data_path> taskType
java -Xmx1024m -cp bin/ edu.stanford.cs276.Rank 2015.data/pa3.signal.train $1
java -Xmx1024m -cp bin/ edu.stanford.cs276.NdcgMain output.txt 2015.data/pa3.rel.train
java -Xmx1024m -cp bin/ edu.stanford.cs276.Rank 2015.data/pa3.signal.dev $1
java -Xmx1024m -cp bin/ edu.stanford.cs276.NdcgMain output.txt 2015.data/pa3.rel.dev
