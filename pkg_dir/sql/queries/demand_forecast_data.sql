-- SCRIPT TO OBTAIN ALL DATA REQUIRED FOR THE DEMAND FORECASTING MODEL


SELECT
       *
--        usuarioid,
--        usuarionomfull,
--        e.especialidadnom,
--        usuarioest

FROM usuario


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
