#!/bin/bash
#
mkdir /home/haules/project-audit/reports
hostnamectl hostname >> /home/haules/project-audit/reports/report.txt
df -h >> /home/haules/project-audit/reports/report.txt
uptime >> /home/haules/project-audit/reports/report.txt
who >> /home/haules/project-audit/reports/report.txt






