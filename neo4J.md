## Creer un noeud

```
create (n) return n
```

## trouver tous les noeuds

```
match (n) return n
```

## Créer un noeud avec une propriété

```
create (n {name:'Sun'}) return n
```

## Créer un noeud avec un label

```
create (n:Astre {name:'Sun'}) return n
```

## Formalisme de création des relations

```
()<-[]-()
()-[]->()
()<-[]->()
()-[]-()
```

## Créer deux noeud avec une relation entre ces deux noeuds

```
create (e:Astre {name:'Earth'})<-[:Satellite {distance:384000}]-(m:Astre {name:'Moon'}) return e, m

```

```
create (e:Astre {name:'Earth'})
create (m:Astre {name:'Moon'})
create (e)<-[:Satellite {distance:384000}]-(m)
return e, m
```

## Trouver un noeud avec une propriété

```
match (n {name:'Sun'}) return n
```

## Trouver un noeud avec un label

```
match (n:Astre) return n
```

## Trouver des noeuds en fonction d'une relation

```
match (n1) <-[r:Satellite]- (n2) return r,n1,n2
```

## Exemple GameOfThrones

```
//GameOfThrones:
//sans clan :
CREATE (sansclan:clan { clanname : 'Clan des sans lien de sang'})
CREATE (hodor:personnage { name : 'Hodor', nickname : 'I am the only good actor here !' })
CREATE (khal:personnage { name : 'Khal Drogo', nickname : 'Horse Man' })
CREATE (petyr:personnage { name : 'Petyr Baelish', nickname : 'LittleFinger' })
CREATE (shae:personnage { name : 'Shae for the Imp', nickname : 'Dead' })

//lanister :
CREATE (lanister:clan { clanname : 'The Lannisters'})
CREATE (tyrion:personnage { name : 'Tyrion Lannister', nickname : 'The Imp' })
CREATE (tywin:personnage { name : 'Tywin Lannister', nickname : 'Father of the Lannisters' })
CREATE (jaime:personnage { name : 'Jaime Lannister', nickname : 'King Slayer' })
CREATE (cersei:personnage { name : 'Cersei Lannister', nickname : 'Brother Lover'})
CREATE (joffrey:personnage { name : 'Joffrey Lannister', nickname : 'Mad King 2' })


//baratheons :
CREATE (baratheon:clan { clanname : 'The Baratheons'})
CREATE (robert:personnage { name : 'Robert Baratheon', nickname : 'King Robert' })
CREATE (renly:personnage { name : 'Renly Baratheon', nickname : 'King Gay' })
CREATE (stannis:personnage { name : 'Stannis Baratheon', nickname : 'Stéphane' })
CREATE (gendry:personnage { name : 'Gendry ???Baratheon', nickname : 'What happened to my story ?' })

//tyrells :
CREATE (tyrell:clan { clanname : 'The Tyrells'})
CREATE (margeary:personnage { name : 'Margeary Tyrell', nickname : 'Tyrell asset' })
CREATE (loras:personnage { name : 'Loras Tyrell', nickname : 'King Gay Knight' })
//targaryens :
CREATE (targaryen:clan { clanname : 'The Targaryen'})
CREATE (daenerys:personnage { name : 'Daenerys Targaryen', nickname : 'Mother of Dragons' })
CREATE (viserys:personnage { name : 'Viserys Targaryen', nickname : 'Gold Head' })

//Stark :
CREATE (stark:clan { clanname : 'The Starks'})
CREATE (arya:personnage { name : 'Arya Stark', nickname : 'I am 20' })
CREATE (sansa:personnage { name : 'Sansa Stark', nickname : 'I am sorry I can t smile.' })
CREATE (rosse:personnage { name : 'Roose Bolton', nickname : 'Come by the house I ll kill you' })
CREATE (eddard:personnage { name : 'Eddard Stark', nickname : 'Whhhhy ???' })
CREATE (robb:personnage { name : 'Robb Stark', nickname : 'King of the North' })
CREATE (john:personnage { name : 'John Snow', nickname : 'The Bastard' })
CREATE (bran:personnage { name : 'Bran Stark', nickname : 'Stop boring me' })

//tullys :
CREATE (tully:clan { clanname : 'The Tullys'})
CREATE (catelyn:personnage { name : 'Catelyn Stark', nickname : 'Mother of Stark ?' })
CREATE (lysa:personnage { name : 'Lyse Tully', nickname : 'Crazy' })
//greyjoys :
CREATE (greyjoy:clan { clanname : 'The Greyjoys'})
CREATE (theon:personnage { name : 'Theon Greyjoy', nickname : 'The enuque' })
CREATE (balon:personnage { name : 'Balon Greyjoy', nickname : 'Nicest father ever' })


//actions :
CREATE (tyrion)-[:TUE{type : 'homicide'}]->(tywin)
CREATE (tyrion)-[:TUE{type : 'homicide'}]->(shae)
CREATE (petyr)-[:TUE{type : 'homicide'}]->(joffrey)
CREATE (stannis)-[:TUE{type : 'homicide'}]->(renly)
CREATE (khal)-[:TUE{type : 'homicide'}]->(khal)
CREATE (khal)-[:TUE{type : 'homicide'}]->(viserys)
CREATE (joffrey)-[:TUE{type : 'homicide'}]->(eddard)
CREATE (rosse)-[:TUE{type : 'homicide'}]->(robb)
CREATE (rosse)-[:TUE{type : 'homicide'}]->(catelyn)
CREATE (petyr)-[:TUE{type : 'homicide'}]->(lysa)
CREATE (jaime)-[:AIME{type : 'amour'}]->(cersei)
CREATE (cersei)-[:AIME{type : 'amour'}]->(jaime)
CREATE (tyrion)-[:AIME{type : 'amour'}]->(shae)
CREATE (shae)-[:AIME{type : 'amour'}]->(tywin)
CREATE (robert)-[:AIME{type : 'amour'}]->(cersei)
CREATE (loras)-[:AIME{type : 'amour'}]->(renly)
CREATE (renly)-[:AIME{type : 'amour'}]->(loras)
CREATE (margeary)-[:AIME{type : 'amour'}]->(joffrey)
CREATE (joffrey)-[:AIME{type : 'amour'}]->(margeary)

CREATE (khal)-[:AIME{type : 'amour'}]->(daenerys)
CREATE (daenerys)-[:AIME{type : 'amour'}]->(khal)
CREATE (petyr)-[:AIME{type : 'amour'}]->(catelyn)
CREATE (eddard)-[:AIME{type : 'amour'}]->(catelyn)
CREATE (catelyn)-[:AIME{type : 'amour'}]->(eddard)

```













