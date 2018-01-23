public
andResultList: aResultList
	^ aResultList
		fold: [ :aResult :bResult | 
			ConstraintResult new addConstraintMatcher: 
			((aResult constraintMatchers asDictionary
				intersectionByValue: bResult constraintMatchers asDictionary)
				associations) ]