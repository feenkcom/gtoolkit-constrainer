api
must: aBlock
	conditionBlock := aBlock.
	ruleMatches := self check. 
	ruleBreakings := allPossibleMatches \ ruleMatches.
	ruleBreakers := leftSubject ruleAssociations asDictionary keys \ ruleMatchers asDictionary keys.
	^ self.