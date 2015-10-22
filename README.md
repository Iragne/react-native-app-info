# react-native-app-info



## Installation

1. `$ npm install react-native-app-info --save`
2. In Xcode, add the `RNAppInfo.xcodeproj` file to your project’s `Libraries` directory.
3. In Xcode, add `libRNAppInfo.a` to the `Link Binary With Libraries` list in Build Phases.


## Usage

```js
var AppInfo = require('react-native-app-info');

console.log("App Version Number",AppInfo.getInfoVersion());
console.log("App Short Version Number",AppInfo.getInfoShortVersion());

console.log("App Version Number",AppInfo.getInfoBundleIdentifier());
console.log("App Short Version Number",AppInfo.getInfoName());


console.log("App Version Number",AppInfo.getInfoDisplayName());


AppInfo.setNetworkActivityIndicatorVisible(true);

AppInfo.setNetworkActivityIndicatorVisible(false);

```

## Licence
MIT