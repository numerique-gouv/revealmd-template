#!/bin/bash

docker run --rm -p 35729:35729 -p 1948:1948 -u $(id -u):$(id -g) -v $PWD:/slides -v $PWD/img:/slides/img -v $PWD/favico.ico:/slides/favico.ico -v /tmp:/tmp webpronl/reveal-md:latest --static-dirs img --css css/reveal-override.css --template templates/template.html /slides/slides -w
