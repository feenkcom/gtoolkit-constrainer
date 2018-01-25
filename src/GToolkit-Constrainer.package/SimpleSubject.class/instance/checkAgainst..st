visiting
checkAgainst: aConstraint
	| aResult currentRelatedItems currentRuleMatches |
	aResult := ConstraintResult new.
	associations
		do: [ :each | 
			currentRelatedItems := each to.
			(currentRelatedItems isCollection and: currentRelatedItems isString not)
				ifFalse: [ currentRelatedItems := OrderedCollection new.
					currentRelatedItems add: each to ].
			currentRuleMatches := currentRelatedItems
				select: [ :relatedItem | aConstraint evaluateConditionFrom: each to: relatedItem ].
			(currentRuleMatches size > 0)
				ifTrue: [ aResult addConstraintMatcher: each ];
				ifFalse: [ aResult addConstraintBreaker: each ]
				].
	^ aResult