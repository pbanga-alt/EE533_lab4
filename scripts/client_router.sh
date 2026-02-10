#!/bin/bash
rm -f client_router.log
touch client_router.log
for i in {0..9}
do
	echo "Sending packets to node $n1"
	iperf -c $n1 -u -t 30 -w 512 -b 1g >> client_router.log
	echo "Sending packets to node $n2"
	iperf -c $n2 -u -t 30 -w 512 -b 1g >> client_router.log
	echo "Sending packets to node $n0"
	iperf -c $n0 -u -t 30 -w 512 -b 1g >> client_router.log
done
