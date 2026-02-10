#!/bin/bash
rm -f client_ids.log
touch client_ids.log
for i in {0..9}
do
	echo "sending packets to node $n1"
	iperf -c $n1 -u >> client_ids.log
	echo "sending packets to node $n2"
	iperf -c $n2 -u >> client_ids.log
	echo "sending packets to node $n0"
	iperf -c $n0 -u >> client_ids.log
done
