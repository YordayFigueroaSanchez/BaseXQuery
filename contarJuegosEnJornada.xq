for $jornada in /jornada
return element jornada {
  attribute nro { $jornada/@nro },
  attribute game { count($jornada/game) }
}