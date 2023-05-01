# openswoole-sigterm-replication

1. docker compose up --build
2. Start a jmeter test to localhost:9501, either by using test.jmx, or create one yourself with 4 workers, set the threads to stop after receiving an error (to avoid connection refused spam)
3. CTRL-C the docker compose up command.
4.  observe 4 requests having this error in jMeter:

```
Thread Name:Thread Group 1-2
Sample Start:2023-05-01 09:01:54 CEST
Load time:18
Connect Time:0
Latency:0
Size in bytes:2091
Sent bytes:0
Headers size in bytes:0
Body size in bytes:2091
Sample Count:1
Error Count:1
Data type ("text"|"bin"|""):text
Response code:Non HTTP response code: org.apache.http.NoHttpResponseException
Response message:Non HTTP response message: localhost:9501 failed to respond

```
