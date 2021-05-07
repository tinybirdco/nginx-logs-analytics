This project should be used along with tbtail to send and process Nginx logs on Tinybird.

Events are ingested to a Null Data Source (`nginx_raw`), then the info from the JSON is extracted to columns in `nginx_log`, where all the logs are saved with a TTL of 3 days. From there, materialized views with aggregations on 4 different time frames (monthly, daily, hourly and by 5 mins intervals) are created and saved in other Data Sources

![Diagram of what this project creates](/nginx_logs_diagram.png)

To replicate the project in your Tintybird account, run

```bash
git clone git@github.com:tinybirdco/nginx-logs-analytics.git # clones the data project
cd nginx-logs-analytics/tb_project sets the working directory to the root dir of the data project

tb auth # will ask for your admin token. You can get it from https://ui.tinybird.co/tokens. Will create a .tinyb file in the current folder

sh push_resources.sh # Creates the full data project on your Tinybird account (Data Sources, Materialized Views, pipes and endpoints)
```
