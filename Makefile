SHELL = sh
.ONESHELL:
.SHELLFLAGS = -e

lint:
	swift run --configuration release --package-path ./Formatter --build-path ./.formatterCache -- swift-format lint --configuration ./Formatter/formatterConfig.json --parallel --recursive ./UI/Sources

format:
	swift run --configuration release --package-path ./Formatter --build-path ./.formatterCache -- swift-format format --configuration ./Formatter/formatterConfig.json --parallel --recursive --in-place ./UI/Sources 
