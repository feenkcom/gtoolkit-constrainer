public
andResultList: aResultList
	^ aResultList
		fold: [ :aResult :bResult | 
			| foldResult |
			foldResult := ConstraintResult new.
			(aResult constraintMatchers
				intersectionByValue: bResult constraintMatchers)
				do: [ :each | foldResult addConstraintMatcher: each ].
			(aResult constraintBreakers
				intersectionByValue: bResult constraintBreakers)
				do: [ :each | foldResult addConstraintBreaker: each ].
			foldResult ]