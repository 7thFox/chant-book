LY_FILES := $(shell find . -type f -name '*.ly')

watch:
	echo "Watching for changes...";
	while file=$$(inotifywait -r -q -e close_write --include '.*\.ly$$' --format '%w%f' .); do \
 		lilypond --silent -o "$${file%.ly}" "$$file"; \
	done

clean:
	find . -type f -name '*.pdf' -delete
	find . -type f -name '*.midi' -delete

all:
	for file in $(LY_FILES); do \
		printf "%-65s => %s\n" "$$file" "$${file%.ly}.*"; \
		lilypond --silent -o "$${file%.ly}" "$$file"; \
	done

%.pdf: %.ly
	echo "$< => $*"