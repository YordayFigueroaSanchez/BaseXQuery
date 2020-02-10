for 
$team in /jornada[@nro =('01','02','03','04','05','06','07','08','09','10','11','12','13',
'14','15','16','17','18','19','20','21','22','23')]/game/team
order by $team/@name/string() ascending
group by $name := $team/@name/string()
return element team {
  attribute cant { count($team/@point)},
  attribute ptos { sum($team/@point) },
  attribute name { $name }
}