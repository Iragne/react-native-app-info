# react-native-app-info



## Installation

1. `$ npm install react-native-app-info --save`
2. `$ rnpm link react-native-app-info`


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

**Notice:** `setNetworkActivityIndicatorVisible` function is not supported on Android.

## Licence
MIT
