CC=gcc
CFLAGS= -Wall -ansi -pedantic -std=c99
LDFLAGS=
EXEC=decoupe


dtd:
	xmllint --valid --noout master.xml
	@echo "-----[ DTD OK ]-----"
xsd:
	xmllint -schema master.xsd master.xml --noout
	@echo "-----[ XSD OK ]-----"
web:
	mkdir -p www
	xsltproc -o www/index.html xsl/master.xsl master.xml
	@echo "-----[ Génération site WEB OK ]-----"
tidy:


