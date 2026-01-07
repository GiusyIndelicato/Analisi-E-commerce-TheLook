select
-- Identificativi utenti e ordini
u.id as `User Id`,
o.order_id as `Order Id`,
o.num_of_item as `N_items`,

-- Conversione temporale
cast(o.created_at as date) as `Data Ordine`,

-- Dati geografici e demografici
u.country as `Country`,
u.state as `State`,
u.city as `City`,
u.age as `Age`,
u.gender as `Gender`,
u.traffic_source as `Traffic Source`,

-- Dati prodotto
p.brand as `Brand`,
p.category as `Categoria`,
p.department as `Reparto`,

--Prezzo e costo arrotondati
round(oi.sale_price, 2) as `Prezzo Vendita`,
round(p.cost, 2) as `Costo Prodotto`

from `bigquery-public-data.thelook_ecommerce.users` u
join `bigquery-public-data.thelook_ecommerce.orders` o
 on u.id = o.user_id
join `bigquery-public-data.thelook_ecommerce.order_items` oi
 on o.order_id = oi.order_id
join `bigquery-public-data.thelook_ecommerce.products` p
 on oi.product_id = p.id
 
-- Esclusione dei resi e ordini cancellati e filtro sull'anno 2025
where o.status in ('Complete', 'Processing', 'Shipped') and extract(YEAR from o.created_at) = 2025
