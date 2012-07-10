hodor
=====

Logstash agent

## Design

1. Take syslog style message from files
2. Create JSON packet
3. GZIP the json string
4. Starts with `0x1f 0x8b` (GZIP bytes)
5. UDP send to port 12201 on whatever host provided

## Testing with the graylog2 server

1. Run the bootstrap script:

    ./scripts/bookstrap.sh

2. This will create and boot up a VM with graylog2 installed
