#!/bin/bash
rm -f server_report_router.txt
touch server_report_router.txt
iperf -s -u >> server_report_router.txt &
echo "iperf UDP server started on $(hostname)"

