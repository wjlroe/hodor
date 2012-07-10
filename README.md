hodor
=====

Logstash agent

## Design

1. Take syslog style message from files
2. Create JSON packet
3. GZIP the json string
4. Starts with `0x1f 0x8b` (GZIP bytes)
5. UDP send to port 12201 on whatever host provided
