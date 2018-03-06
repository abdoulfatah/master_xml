CC=gcc
CFLAGS= -Wall -ansi -pedantic -std=c99
LDFLAGS=
EXEC=decoupe

dtd:
	xmllint --valid --noout master.xml
xsd:
	xmllint --valid --noent --noout --schema master.xsd master.xml
web:
	mkdir -p www
	java -jar saxon9/saxon9he.jar -xsl:xsl/master.xsl master.xml -o:www/index.html
tidyXHTML:
	cd tidy && make all
xqReq:	
	java -cp saxon9/saxon9he.jar net.sf.saxon.Query "-q:xq.txt" > www/xq.html
javaNomUE:
	cd java && make all
clean:
	rm -R  www
all:  clean dtd xsd web tidyXHTML xqReq  javaNomUE
