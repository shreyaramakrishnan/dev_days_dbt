SELECT u.id AS user_id, COUNT(e.external_id) AS logins
FROM public.user u, public.Website_Events e
WHERE u.external_id = e.external_id
GROUP BY u.id