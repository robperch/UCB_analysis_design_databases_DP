-- SCRIPT TO OBTAIN ALL DATA REQUIRED FOR THE DEMAND FORECASTING MODEL


SELECT

       -- Inventory fields
--        inv.Inv_ID,
       inv.Prod_ID,
--        Item_condition,
       inv.Size,
       inv.Color,
       inv.List_Price,
       inv.Signed_Date,
--        inv.Purchase_ID,
--        inv.Boutique,
--        inv.Appraiser_ID,
--        inv.Consignor_ID,
--        inv.Commission_Rate,
       inv.Discount,

       -- Products fields
       prd.Prod_ID,
       prd.Category,
       prd.Style1,
       prd.Style2,
       prd.Style3,
       prd.Collection,

       -- Online purchase fields
--        onp.Purchase_ID,
--        onp.Customer,
       onp.Purchase_Date
--        onp.Delivery_Status,
--        onp.Ship_Date,
--        onp.Arrival_Date,
--        onp.Shipping_Addr,
--        onp.Distributor_ID

FROM inventory as inv


LEFT JOIN products prd ON inv.Prod_ID = prd.Prod_ID

LEFT JOIN online_purchase onp ON inv.Purchase_ID = onp.Purchase_ID




-- WHERE puestoid = 'MEDICO'
-- -- WHERE usuarionomfull ILIKE '%silv%'
-- --   AND puestoid = 'MEDICO'
--
--
-- ORDER BY
--          usuarioest,
--          usuarionomfull


;
