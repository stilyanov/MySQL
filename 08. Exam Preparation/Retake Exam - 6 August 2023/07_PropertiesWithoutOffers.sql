SELECT SUBSTRING(pr.address, 1, 6) AS 'agent_name',
       CHAR_LENGTH(pr.address) * 5430 AS 'price'
FROM properties pr
LEFT JOIN property_offers po ON pr.id = po.property_id
WHERE po.agent_id IS NULL
ORDER BY `agent_name` DESC, `price` DESC;