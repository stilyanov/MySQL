CREATE FUNCTION ufn_calculate_future_value(initial_sum DECIMAL(10, 4),
                                           yearly_interest_rate DECIMAL(10, 4),
                                           number_of_years DECIMAL(10, 4))
    RETURNS DECIMAL(10, 4)
    READS SQL DATA
BEGIN
    RETURN initial_sum * POW((1 + yearly_interest_rate), number_of_years);
END;

SELECT ufn_calculate_future_value(1000, 0.5, 5 );