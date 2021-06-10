        select array_to_json(array_agg(row_to_json(t)))
        from (
        select property_name, property_value from core.text_property
        WHERE property_value = 'cFOoRQekA'
        ) t