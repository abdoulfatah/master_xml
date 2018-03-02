CC=gcc
CFLAGS= -Wall -ansi -pedantic -std=c99
LDFLAGS=
EXEC=decoupe

dtd:
	xmllint --valid --noout master.xml
	@echo "-----[ DTD OK ]-----"
NoEnt: 
	xmllint --valid --noent master.xml > masterNoEntite.xml
	@echo "-----[ XML doc noENTITY OK ]-----"
xsd:
	xmllint --valid --noent --noout --schema master.xsd master.xml
	@echo "-----[ XSD OK ]-----"
web:
	mkdir -p www
	xsltproc -o www/index.html xsl/master.xsl master.xml
	@echo "-----[ Génération site WEB OK ]-----"
tidyXHTML:
	cd tidy && make all
	@echo "-----[ TIDY OK ]-----"
xqReq:	
	java -cp saxon9/saxon9he.jar net.sf.saxon.Query "-q:xq.txt" > www/xq.xhtml
	@echo "-----[ XQ OK ]-----"
javaNomUE:
	cd java && make all
	@echo "-----[ JAVA OK ]-----"

all:  dtd xsd web tidyXHTML xqReq  javaNomUE
