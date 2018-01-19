public
and: aSubject with: anotherSubject
	associations := aSubject ruleAssociations asDictionary intersectionByValue: anotherSubject ruleAssociations asDictionary.
	