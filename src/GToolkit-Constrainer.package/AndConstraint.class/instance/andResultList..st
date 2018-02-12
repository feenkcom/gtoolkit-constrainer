api
andResultList: aResultList
	^ aResultList
		fold: [ :aResult :bResult | 
			| foldResult |
			foldResult := ConstraintResult new.
			(aResult constraintMatchers
				intersection:  bResult constraintMatchers)
				do: [ :each | foldResult addConstraintMatcher: each ].
			(aResult constraintBreakers
				union: bResult constraintBreakers)
				do: [ :each | foldResult addConstraintBreaker: each ].
			foldResult ]