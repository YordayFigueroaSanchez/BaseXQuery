for $player in /jornada/game/team/player
group by $name := $player/@name/string()
return element persons {
  attribute name { $name },
  $player/@player_code ! element player_code { data() }
  (:,$player/@url_photo ! element player_url { data() }:)
  
}