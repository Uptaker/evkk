       select array_to_json(array_agg(row_to_json(t)))
        from (
        select distinct count(tp1.text_id) as sum,
        sum(tp2.property_value::integer) as sonu,
        sum(tp3.property_value::integer) as lauseid
        from core.text_property as tp1
        JOIN core.text_property as tp2 on tp1.text_id=tp2.text_id
        JOIN core.text_property as tp3 on tp2.text_id=tp3.text_id
        WHERE tp1.property_name = 'korpus' AND tp1.property_value IN ('cFOoRQekA') AND
         tp2.property_name = #{pName} AND tp3.property_name = 'sonu' AND tp4.property_name = 'lauseid'
        ) t