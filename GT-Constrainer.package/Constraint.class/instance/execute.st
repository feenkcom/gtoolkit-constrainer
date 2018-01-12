basic
execute
	| ruleExceptions currentRelatedItems |
	ruleExceptions := OrderedCollection new.
	relatedItems := OrderedCollection new.
	subject
		do: [ :each | 
			currentRelatedItems := relationBlock value: each.
			relatedItems addAll: currentRelatedItems.
			ruleExceptions
				addAll: (currentRelatedItems select: [ :relatedItem | conditionBlock value: each value: relatedItem ]) ].
	^ ruleExceptions