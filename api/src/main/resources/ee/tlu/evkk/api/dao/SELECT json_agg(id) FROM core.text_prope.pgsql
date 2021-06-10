    SELECT json_agg(id) FROM core.text_property
    WHERE property_value = 'cFOoRQekA'
    GROUP BY property_value;