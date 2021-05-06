tb pipe rm nginx_log_mv__v1 --yes

tb pipe rm nginx_log_daily_mv__v1 --yes
tb pipe rm nginx_log_hourly_mv__v1 --yes
tb pipe rm nginx_log_monthly_mv__v1 --yes
tb pipe rm nginx_log_5mins_mv__v1 --yes
# tb pipe rm nginx_log_daily_precomputing_counts_mv__v1 --yes

tb pipe rm query_grouped_requests__v1 --yes

tb datasource rm nginx_raw --yes
tb datasource rm nginx_log__v1 --yes
tb datasource rm nginx_log_daily__v1 --yes
tb datasource rm nginx_log_hourly__v1 --yes
tb datasource rm nginx_log_5mins__v1 --yes
tb datasource rm nginx_log_monthly__v1 --yes
# tb datasource rm nginx_log_daily_precomputing_counts__v1 --yes
