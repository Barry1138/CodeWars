SELECT
  ciclo.id,
  ciclo.hours,
  round(ciclo.hours/2 - 0.5) as liters
FROM cycling as ciclo
