-- SCRIPT TO OBTAIN ALL DATA REQUIRED FOR THE DEMAND FORECASTING MODEL


SELECT
       *
       Inv_ID,
       Prod_ID,
       Item_condition,
       Size,
       Color,
       List_Price,
       Signed_Date,
       Purchase_ID,
       Boutique,
       Appraiser_ID,
       Consignor_ID,
       Commission_Rate,
       Discount

FROM inventory


-- LEFT JOIN especialidad e on usuario.usuarioespecialidadid = e.especialidadid
--
--
-- WHERE puestoid = 'MEDICO'
-- -- WHERE usuarionomfull ILIKE '%silv%'
-- --   AND puestoid = 'MEDICO'
--
--
-- ORDER BY
--          usuarioest,
--          usuarionomfull


LIMIT 10

;
