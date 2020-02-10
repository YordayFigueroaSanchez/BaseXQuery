for $valor in /jornada/game/team
  for $point in $valor
    $suma = $suma + $point/@point
return <valor>{$suma}</valor>