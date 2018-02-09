api
evaluateConstraintOn: aBiElement
	"apply all constraints to all subject elements and return the and operation on the results"
	^ constraints fold:[:first :second | 
		(first conditionBlock value: aBiElement from value: aBiElement to) and: 
		(second conditionBlock value: aBiElement from value: aBiElement to)  ] 