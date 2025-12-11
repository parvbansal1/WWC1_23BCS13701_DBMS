-----------Parv Bansal (23BCS13701)---------

CREATE OR REPLACE FUNCTION NthHighestSalary(N INT)
RETURNS INT AS $$
DECLARE
    result INT;
BEGIN
    IF N <= 0 THEN
        RETURN NULL;
    END IF;

    SELECT salary INTO result
    FROM (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        OFFSET N - 1 LIMIT 1
    ) AS t;

    RETURN result;
END;
$$ LANGUAGE plpgsql;
