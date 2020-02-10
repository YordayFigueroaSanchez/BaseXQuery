for $valor in /jornada/game/team/player
where $valor/@name/string() = 'Etebo'
return <valor>{$valor/@player_code}</valor>