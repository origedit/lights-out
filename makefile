name=lights-out
tal=${name}.tal
rom=${name}.rom

run: ${rom}
	uxnemu ${rom}

${rom}: format
	drifblim ${tal} ${rom}

format: ${tal}
	uxnfor ${tal}
