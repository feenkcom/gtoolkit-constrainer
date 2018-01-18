basic
check
	| ruleExceptions currentRelatedItems currentRuleExceptions |
	ruleBreakers := OrderedCollection new.
	ruleExceptions := OrderedCollection new.
	leftSubject ruleCollection
		do: [ :each | 
			currentRelatedItems := leftSubject ruleSubject.
			
			currentRelatedItems isCollection
				ifFalse: [ currentRelatedItems := OrderedCollection new.
					currentRelatedItems add: (leftSubject ruleSubject) ].
			
			currentRuleExceptions := currentRelatedItems
				select: [ :relatedItem | conditionBlock value: each value: relatedItem ].
			currentRuleExceptions size > 0
				ifTrue: [ ruleBreakers add: each ].
				
			ruleExceptions addAll: currentRuleExceptions ].
	^ ruleExceptions