corrections
applyAllCorrections
	^ self issues
		inject: nil
		into: [ :sum :each | 
			(self correctionActionFor: each)
				ifNil: [ sum ]
				ifNotNil: [ :action | (action cull: each cull: sum) ifNil: [ sum ] ] ]