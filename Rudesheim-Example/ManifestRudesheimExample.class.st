"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestRudesheimExample,
	#superclass : #PackageManifest,
	#category : #'Rudesheim-Example-Manifest'
}

{ #category : #'code-critics' }
ManifestRudesheimExample class >> ruleCollectionMessagesToExternalObjectRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#'RHStringTransformWindow class' #defaultLayout #true)) #'2023-01-28T14:16:00.460117+09:00') #(#(#RGPackageDefinition #(#'Rudesheim-Example')) #'2023-02-08T22:42:16.741288+09:00') )
]
