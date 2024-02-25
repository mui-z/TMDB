.PHONY: template

open:
	open Tmdb.xcworkspace	


template:
	genesis generate templates/template.yml -d TmdbPackage/Sources/TmdbPackage/

format:
	swiftformat .
