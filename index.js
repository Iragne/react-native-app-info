'use strict';


 var { RNAppInfo } = require('react-native').NativeModules;

var AppInfo = {
	getInfoVersion: function (){
		return RNAppInfo.version;
	},
	getInfoShortVersion: function (){
		return RNAppInfo.shortVersion;
	},
	getInfoBundleIdentifier: function (){
		return RNAppInfo.bundleIdentifier;
	},
	getInfoName: function (){
		return RNAppInfo.name;
	},
	getInfoDisplayName: function (){
		return RNAppInfo.displayName;
	},
	setNetworkActivityIndicatorVisible: function (visible) {
		if (Platform.OS === 'ios') {
			var appInfo = require('react-native').NativeModules.RNAppInfo;
			appInfo.setNetworkActivityIndicatorVisible(visible);
		} else {
			console.warn('setNetworkActivityIndicatorVisible function not supported by Android');
		}
	}
};


module.exports =  AppInfo;
