basic
check
	| currentRelatedItems currentRuleMatches |
	ruleBreakers := OrderedCollection new.
	ruleMatches := OrderedCollection new.
	ruleMatchers := OrderedCollection new.
	allPossibleMatches := OrderedCollection new.
	leftSubject ruleAssociations 
		do: [ :each | 
			currentRelatedItems := each value.
			
			(currentRelatedItems isCollection and: currentRelatedItems isString not)
				ifFalse: [ currentRelatedItems := OrderedCollection new.
					currentRelatedItems add: (each value) ].
				
			allPossibleMatches addAll: currentRelatedItems.
			
			currentRuleMatches := currentRelatedItems
				select: [ :relatedItem | conditionBlock value: each value: relatedItem ].
				
			currentRuleMatches size > 0 ifTrue: [ ruleMatchers add: each ].
				
			ruleMatches addAll: currentRuleMatches ].
	^ ruleMatches