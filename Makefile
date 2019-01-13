build: install open

open: 
	- open ./Example/UCRuntimeKit.xcworkspace
quit:
	- osascript -e 'quit app "Xcode"'
install:
	- pod install --project-directory=Example
delete pod:
	- pod deintegrate
clean cache:
	pod cache clean --all
test:
	- xcodebuild -scheme UCRuntimeKit-Example -workspace Example/UCRuntimeKit.xcworkspace -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone Xs,OS=12.1' build test
lint:
	- pod lib lint --allow-warnings
push:
	- pod trunk push --allow-warnings
