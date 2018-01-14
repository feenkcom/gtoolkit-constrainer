basic
execute
	| ruleExceptions currentRelatedItems currentRuleExceptions |
	ruleBreakers := OrderedCollection new.
	ruleExceptions := OrderedCollection new.
	relatedItems := OrderedCollection new.
	subject
		do: [ :each | 
			currentRelatedItems := relationBlock value: each.
			currentRelatedItems isCollection
				ifFalse: [ currentRelatedItems := OrderedCollection new.
					currentRelatedItems add: (relationBlock value: each) ].
			relatedItems addAll: currentRelatedItems.
			currentRuleExceptions := currentRelatedItems
				select: [ :relatedItem | conditionBlock value: each value: relatedItem ].
			currentRuleExceptions size > 0
				ifTrue: [ ruleBreakers add: each ].
			ruleExceptions addAll: currentRuleExceptions ].
	^ ruleExceptions