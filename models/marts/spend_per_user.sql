SELECT p.user_id, SUM(i.price) AS spend
  FROM {{ref('stg_mysql_purchase')}} p 
    INNER JOIN {{ref('stg_mysql_line_item')}} li ON li.purchase_id = p.id
    INNER JOIN {{ref('stg_mysql_item')}} i ON i.item_id = li.item_id
  GROUP BY p.user_id