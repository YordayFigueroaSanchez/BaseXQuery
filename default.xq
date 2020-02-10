for $jornada in /jornada
where $jornada/game/team/player/@player_code/string() = "default"
return element jornada {
  attribute name { $jornada/@nro }
}