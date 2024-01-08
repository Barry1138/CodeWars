SELECT (la_liga_goals+copa_del_rey_goals+champions_league_goals)
as res FROM goals

--or

SELECT la_liga_goals + copa_del_rey_goals + champions_league_goals
AS res
FROM goals;
