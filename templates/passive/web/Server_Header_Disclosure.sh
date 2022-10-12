if [ "$SSL" = "false" ]; then
	AUTHOR='@zwpseudo'
	VULN_NAME='Server Header Disclosure - HTTP'
	FILENAME="$LOOT_DIR/web/headers-http-$TARGET.txt"
	MATCH="Server\:"
	SEVERITY='P4 - LOW'
	GREP_OPTIONS='-i'
	SEARCH='positive'
	SECONDARY_COMMANDS=''
else
	AUTHOR='@zwpseudo'
	VULN_NAME='Server Header Disclosure - HTTPS'
	FILENAME="$LOOT_DIR/web/headers-https-$TARGET.txt"
	MATCH="Server\:"
	SEVERITY='P4 - LOW'
	GREP_OPTIONS='-i'
	SEARCH='positive'
	SECONDARY_COMMANDS=''
fi