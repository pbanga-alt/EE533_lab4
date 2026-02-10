#!/bin/bash
rm -f client_router_tcp.log
touch client_router_tcp.log
for i in {0..9}
do
	echo "Sending packets to node $n1"
	iperf -c $n1 -p 5004 >> client_router_tcp.log
	echo "Sending packets to node $n2"
	iperf -c $n2 -p 5004 >> client_router_tcp.log
	echo "Sending packets to node $n0"
	iperf -c $n0 -p 5004 >> client_router_tcp.log
done
