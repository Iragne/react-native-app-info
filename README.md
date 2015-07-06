# react-native-app-info



## Installation

`$ npm install react-native-app-info`


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