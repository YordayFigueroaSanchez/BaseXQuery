for $player in /jornada/game/team/player
where $player/@position/string() contains text 'Cen'
group by 	$player_code := $player/@player_code/string(), 
           $player_photo := $player/@url_photo/string()
return element persons {
  attribute code { $player_code },
  attribute position { $player_photo }
  }