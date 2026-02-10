#!/bin/bash
rm -f server_report_ids.txt
touch server_report_ids.txt
iperf -s -u >> server_report_ids.txt &
echo "iperf UDP server started on $(hostname)"

