UPDATE employees
SET salary = salary + 1000
WHERE id IN (SELECT DISTINCT leader_id
             FROM teams)
  AND age < 40
  AND salary <= 5000;