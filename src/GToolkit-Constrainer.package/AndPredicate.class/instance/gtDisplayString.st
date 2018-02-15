api
gtDisplayString
	^ constraints fold: [:first :second |
		first conditionBlock gtDisplayString, ' & ', second conditionBlock gtDisplayString
		] 