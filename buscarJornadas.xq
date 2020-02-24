for $jornada in /jornada
where $jornada/game/team/player/@name/string() = "En-Nesyri"
return element jornada {
  attribute name { $jornada/@nro }
}