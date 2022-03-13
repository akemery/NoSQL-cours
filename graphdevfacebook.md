## Start

```
curl -1 -i -X GET "https://graph.facebook.com/facebook/picture?redirect=false"
```

## Récuperer les information sur un noeud

```
curl -1 -i -X GET "https://graph.facebook.com/USER-ID?access_token=ACCESS-TOKEN"
```

## Récupérer des métadonnées d'un noeud

```
curl -1 -i -X GET "https://graph.facebook.com/USER-ID?metadata=1&access_token=ACCESS-TOKEN"
```




## Récupérer des métadonnées personnels

```
curl -1 -i -X GET "https://graph.facebook.com/me?access_token=ACCESS-TOKEN"
```


## Arêtes 

### obtenir les photos

```
curl -i -X GET "https://graph.facebook.com/USER-ID/photos?access_token=ACCESS-TOKEN"
```

### Définir les champs

```
curl -i -X GET "https://graph.facebook.com/USER-ID?fields=id,name,email,picture&access_token=ACCESS-TOKEN"
```

## Paramètres complexes

La plupart des types de paramètres sont des primitives directes telles que bool, string et int, mais les types list et object peuvent aussi être indiqués dans la demande.

Le type list est indiqué dans la syntaxe JSON, par exemple : ["firstitem", "seconditem", "thirditem"]

Le type object est aussi indiqué dans la syntaxe JSON, par exemple : {"firstkey": "firstvalue", "secondKey": 123}


## Publication, mise à jour et suppression

Certains nœuds vous permettent de mettre à jour des champs avec des opérations POST. Par exemple, vous pouvez mettre à jour votre champ email comme suit :

```
curl -i -X POST "https://graph.facebook.com/USER-ID?email=YOURNEW@EMAILADDRESS.COM&access_token=ACCESS-TOKEN"
```

Lecture après écriture

Pour les points de terminaison de création et mise à jour, l’API Graph peut immédiatement lire un objet publié ou mis à jour et renvoyer les champs pris en charge par le point de terminaison de lecture correspondant.

Par défaut, un ID de l’objet créé ou mis à jour est renvoyé. Pour inclure d’autres informations dans la réponse, ajoutez le paramètre fields dans votre demande et spécifiez les champs à renvoyer. Par exemple, pour publier le message « Salut » sur le fil d’une Page, vous pouvez faire la demande suivante :


```
curl -i - X POST "https://graph.facebook.com/PAGE-ID/feed?message=Hello&fields=created_time,from,id,message&access_token=ACCESS-TOKEN"
```
