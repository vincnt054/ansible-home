##
# Project Title
#
# @file
# @version 0.1
#
PLANTUML_JAR_URL = https://sourceforge.net/projects/plantuml/files/plantuml.jar/download
DIAGRAMS_SRC := $(wildcard diagrams/*.plantuml)
DIAGRAMS_PNG := $(addsuffix .png, $(basename $(DIAGRAMS_SRC)))
DIAGRAMS_SVG := $(addsuffix .svg, $(basename $(DIAGRAMS_SRC)))

# Default target first; build PNGs, probably what we want most of the time
png: plantuml.jar $(DIAGRAMS_PNG)

# SVG are nice-to-have but don't need to build by default
svg: plantuml.jar $(DIAGRAMS_SVG)

# clean up compiled files
clean:
	rm -f plantuml.jar $(DIAGRAMS_PNG) $(DIAGRAMS_SVG)

# If the JAR file isn't already present, download it
plantuml.jar:
	curl -sSfL $(PLANTUML_JAR_URL) -o plantuml.jar

# Each PNG output depends on its corresponding .plantuml file
diagrams/%.png: diagrams/%.plantuml
	java -jar plantuml.jar -tpng $^

# Each SVG output depends on its corresponding .plantuml file
diagrams/%.svg: diagrams/%.plantuml
	java -jar plantuml.jar -tsvg $^

# Quirk of GNU Make: https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html
.PHONY: png svg clean

# end
