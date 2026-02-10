#!/bin/bash
rm -f server_report_router_tcp.txt
touch server_report_router_tcp.txt
iperf -s -p 5004 >> server_report_router_tcp.txt &
echo "iperf UDP server started on $(hostname)"

