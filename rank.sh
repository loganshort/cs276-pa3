#!/usr/bin/env sh
# ./rank.sh <signal_data_path> taskType
java -Xmx1024m -cp bin/ edu.stanford.cs276.Rank $1 $2
java -Xmx1024m -cp bin/ edu.stanford.cs276.NdcgMain $3 $4
