--SQL: 8 kyu - Even or Odd

SELECT number,
  case 
    WHEN number % 2 = 0 THEN 'Even'
    ELSE 'Odd'
  END AS is_even
FROM numbers;
