all: dist

dist:
	mkdir dist
	cp -R lib/wordpress/ dist/
	make dist/wp-config.php

dist/wp-config.php:
	cp src/wp-config.php dist/

clean:
	rm -rf dist
	rm -rf tmp

.PHONY: all clean
