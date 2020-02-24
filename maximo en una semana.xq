for $player in /jornada[@nro='20']/game/team/player
order by $player/@player_code/string() descending
return element persons {
  attribute point { $player/@point },
  attribute code { $player/@player_code },
  attribute position { $player/@position },
  attribute name { $player/@name }
}