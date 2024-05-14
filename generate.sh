#!/bin/bash

if [ -f $PWD/slides/$1 ]; then
	docker run --rm -u $(id -u):$(id -g) -v $PWD:/slides -v $PWD/img:/slides/slides/img -v $PWD/favico.ico:/slides/favico.ico -v /tmp:/tmp webpronl/reveal-md:latest --static /tmp/public --static-dirs img --css css/reveal-override.css --title "$2" --template templates/template.html /slides
	docker run --rm -t -v /tmp/public/img:/home/user/slides/img -v /tmp:/slides -v /tmp/public:/home/user astefanutti/decktape /home/user/slides/slides.html ${1%.*}.pdf
else
	echo "$PWD/slides/$1" not found
fi
