#!/bin/sh

# Clear Xcode cache

if [[ -e /Applications/Xcode.app ]]; then
	echo "移除 Xcode 运行安装 APP 产生的缓存文件(DerivedData)"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read r1
	case $r1 in
	1)
		sudo rm -rf ~/Library/Developer/Xcode/DerivedData
		;;
	*)
		echo "Cancel Remove"
		;;
	esac
	unset r1

	echo "移除 APP 打包的ipa历史版本(Archives)"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read r2
	case $r2 in
	1)
		sudo rm -rf ~/Library/Developer/Xcode/Archives
		;;
	*)
		echo "Cancel Remove"
		;;
	esac
	unset r2

	echo "移除 APP 打包的app icon历史版本(Archives)"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read r3
	case $r3 in
	1)
		sudo rm -rf ~/Library/Developer/Xcode/Products/
		;;
	*)
		echo "Cancel Remove"
		;;
	esac
	unset r3

	echo "移除模拟器的缓存数据(Devices)"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read r4
	case $r4 in
	1)
		sudo rm -rf ~/Library/Developer/CoreSimulator/Devices/
		;;
	*)
		echo "Cancel Remove"
		;;
	esac
	unset r4

	echo "移除对旧设备的支持(iOS DeviceSupport)"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read r5
	case $r5 in
	1)
		sudo rm -rf ~/Library/Developer/Xcode/iOS DeviceSupport
		;;
	*)
		echo "Cancel Remove"
		;;
	esac
	unset r5

	echo "移除 Xcode 中的无效的插件(Plug-ins)"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read r6
	case $r6 in
	1)
		sudo rm -rf ~/Library/Application Support/Developer/Shared/Xcode/Plug-ins
		;;
	*)
		echo "Cancel Remove"
		;;
	esac
	unset r6

	echo "移除旧版本的模拟器支持"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read r7
	case $r7 in
	1)
		sudo rm -rf ~/Library/Developer/CoreSimulator/Profiles/Runtimes/
		;;
	*)
		echo "Cancel Remove"
		;;
	esac
	unset r7

	echo "移除 playground 的项目缓存(XCPGDevices)"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read r8
	case $r8 in
	1)
		sudo rm -rf ~/Library/Developer/XCPGDevices/
		;;
	*)
		echo "Cancel Remove"
		;;
	esac
	unset r8

	echo "移除旧的文档(Docsets)"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read r9
	case $r9 in
	1)
		sudo rm -rf ~/Library/Developer/Shared/Documentation/DocSets
		;;
	*)
		echo "Cancel Remove"
		;;
	esac
	unset r9

	echo "移除模拟器中的SDK版本(iPhoneSimulator.sdk)"
	echo "0 -> Cancel"
	echo "1 -> Remove"
	read r10
	case $r10 in
	1)
		sudo rm -rf ~/application/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/
		;;
	*)
		echo "Cancel Remove"
		;;
	esac
	unset r10

else
	echo "You Not Insall Xcode"
fi
