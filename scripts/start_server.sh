#!/bin/bash
iperf -s -u >> server_report.txt &
echo "iperf UDP server started on $(hostname)"

