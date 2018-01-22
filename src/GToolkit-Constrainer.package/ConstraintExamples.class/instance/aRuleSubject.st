public
aRuleSubject
	<gtExample>
	^ SimpleSubject new 
	the: #value 
	of: { #a -> #b . #a -> #cc . #b -> #cc} 
	