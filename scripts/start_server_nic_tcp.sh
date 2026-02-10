#!/bin/bash
rm -f server_report_nic.txt
touch server_report_nic.txt
iperf -s -p 5003 >> server_report_nic.txt &
echo "iperf UDP server started on $(hostname)"

