for $valor in /juego/jugador
where $valor/@id = 12
return <valor>{$valor/data/text()}</valor>
