public
andSubjectExample
	<gtExample>
	| andSubject |
	andSubject := self andSubject.
	self assert: andSubject ruleSubjects size equals: 1.
	^ andSubject 