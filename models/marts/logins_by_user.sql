SELECT u.id AS user_id, COUNT(e.external_id) AS logins
FROM {{ref('stg_mysql_user_info')}} u, {{ref('stg_mongo_web_events')}} e
WHERE u.external_id = e.external_id
GROUP BY u.id