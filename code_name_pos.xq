for $player in /jornada/game/team/player
group by 	$player_code := $player/@player_code/string(), 
           $player_position := $player/@position/string(), 
           $player_photo := $player/@url_photo/string(), 
           $player_name := $player/@name/string()
return element persons {
  attribute code { $player_code },
  attribute position { $player_position },
  attribute photo { $player_photo },
  attribute name { $player_name }
}