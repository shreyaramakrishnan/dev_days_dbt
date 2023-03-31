SELECT p.user_id, SUM(i.price) AS spend
  FROM public.purchase p 
    INNER JOIN public.line_item li ON li.purchase_id = p.id
    INNER JOIN public.item i ON i.item_id = li.item_id
  GROUP BY p.user_id