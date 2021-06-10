        select array_to_json(array_agg(row_to_json(t)))
        from (
        select (select distinct count(tp2.text_id), tp2.property_name, tp2.property_value from core.text_property as tp1
        JOIN core.text_property as tp2 on tp1.text_id=tp2.text_id 
        WHERE tp1.property_value = 'cFOoRQekA' AND tp2.property_value = 'eesti' AND tp2.property_name = 'tekstikeel'
        ) t