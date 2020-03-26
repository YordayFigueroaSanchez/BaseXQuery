for $player in /jornada[@nro = ('22','23','24','25','26')]/game/team/player
order by $player/@player_code/string() descending
group by $player_code := $player/@player_code/string(), $player_name := $player/@name/string()
return element persons {
  attribute point { sum($player/@point/number()) },
  attribute code { $player_code },
  attribute name { $player_name }
}