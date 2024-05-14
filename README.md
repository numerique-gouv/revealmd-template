# revealmd-template

Ces templates utilisent [reveal.js](https://revealjs.com/) et [reveal-md](https://github.com/webpro/reveal-md)

## Prérequis

* docker

## Utilisation

Créez vos présentations dans le sous dossier **slides**.


Voici un fichier d'exemple :

```
<!-- .slide: data-background="../img/background.jpg" -->

# Titre niveau 1

- item 1
- item 2
- item 3

---
<!-- .slide: data-background="../img/background.jpg" -->

## Titre niveau2

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dapibus nisi odio, pretium posuere tortor laoreet et. Pellentesque a lectus

----

### sous slide 1

  * item1
  * item2

Note:
* note1
* note2
* note3
* note4

----

### sous slide2

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dapibus nisi odio, pretium posuere tortor laoreet et. Pellentesque a lectus

```

### Rendu temps réel

```
./run.sh
```

Une fois le script lancé vous pouvez visiter le rendu ici : http://localhost:1948/

### Génération html et pdf

```
./generate.sh fichier.md "Titre de la presentation"
```

Les fichiers générés se trouvent dans **/tmp/public/slides/*.html** et **/tmp/*.pdf**
