#!/bin/sh

# Uninstall Android Studio For Mac
if [[ -e /Applications/Android\ Studio.app ]]; then
	echo "Uninstall Android Studio For Mac"
	echo "================================"
	echo "Remove Android Studio "
	rm -Rf /Applications/Android\ Studio.app

	echo "================================"
	echo "Remove Android Studio Config"
	rm -Rf ~/Library/Preferences/AndroidStudio*
	rm ~/Library/Preferences/com.google.android.studio.plist
	rm -Rf ~/Library/Application\ Support/AndroidStudio*
	rm -Rf ~/Library/Logs/AndroidStudio*
	rm -Rf ~/Library/Caches/AndroidStudio*

	echo "Whether to remove ~/.gradle/"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read removeGradle
	case $removeGradle in
	1)
		echo "rm -Rf ~/.gradle "
		rm -Rf ~/.gradle
		;;
	*)
		echo "Cancel Remove .gradle"
		;;
	esac
	unset removeGradle

	echo "Whether to remove Android Virtual Devices(AVDs) and *.keystore"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read removeAVDS
	case $removeAVDS in
	1)
		echo "rm -Rf ~/.android"
		rm -Rf ~/.android
		;;
	*)
		echo "Cancel Remove .gradle"
		;;
	esac
	unset removeAVDS

	echo "Whether to remove Android SDK Tools"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read removeSDK
	case $removeSDK in
	1)
		echo "rm -Rf ~/Library/Android*"
		rm -Rf ~/Library/Android*
		;;
	*)
		echo "Cancel Remove .gradle"
		;;
	esac
	unset removeSDK
else
	echo "You Not Install AndroidStudio"
fi
