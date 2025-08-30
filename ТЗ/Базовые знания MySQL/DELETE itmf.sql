DELETE itmf
FROM
    indicator_to_mo_fact itmf
    JOIN indicator_to_mo itm ON itmf.indicator_to_mo_id = itm.indicator_to_mo_id
    JOIN indicator i ON itm.indicator_id = i.indicator_id
WHERE
    i.indicator_id = 273
    AND DATE (itmf.fact_time) = '2024-09-10';