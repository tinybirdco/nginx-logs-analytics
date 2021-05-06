# tb push datasources/nginx_raw.datasource
# tb push pipes/ip2nation_mv.pipe --push-deps --populate
# necessary to append data to ip2nation
# tb push datasources/countries.datasource
# necessary to append data to countries

# we should extract country info here too
tb push pipes/nginx_log_mv.pipe --push-deps --populate
tb push pipes/nginx_log_daily_mv.pipe --push-deps --populate
# tb push pipes/nginx_log_daily_precomputing_counts_mv.pipe --push-deps --populate
tb push pipes/nginx_log_hourly_mv.pipe --push-deps --populate
tb push pipes/nginx_log_5mins_mv.pipe --push-deps --populate
tb push pipes/nginx_log_monthly_mv.pipe --push-deps --populate

tb push endpoints/query_grouped_requests.pipe --force --no-check