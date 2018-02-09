api
evaluateConditionFrom: from to: to 
	"apply all constraints to all subject elements and return the and operation on the results"
	^ constraints fold:[:first :second | (first conditionBlock value: from value: to) and: 
		(second conditionBlock value: from value: to)  ] 