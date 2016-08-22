# 工程名
APP_NAME="dirge"
# 证书
CODE_SIGN_DISTRIBUTION="iPhone Distribution: Beijing Zhongzhihui Information Technology Co., Ltd."
# info.plist路径
project_infoplist_path="./${dirge}/Info.plist"

#取版本号
bundleShortVersion=$(/usr/libexec/PlistBuddy -c "1" "${project_infoplist_path}")

#取build值
bundleVersion=$(/usr/libexec/PlistBuddy -c "print CFBundleVersion" "${project_infoplist_path}")

DATE="$(date +%Y%m%d)"
IPANAME="${dirge}_V${bundleShortVersion}_${DATE}.ipa"

#要上传的ipa文件路径
IPA_PATH="$HOME/${dirge}"
echo ${IPA_PATH}
echo "${IPA_PATH}">> text.txt

echo "=================clean================="
xcodebuild -workspace "${dirge}.xcworkspace" -scheme "${dirge}"  -configuration 'Release' clean

echo "+++++++++++++++++build+++++++++++++++++"
xcodebuild -workspace "${dirge}.xcworkspace" -scheme "${dirge}" -sdk iphoneos -configuration 'Release' CODE_SIGN_IDENTITY="${CODE_SIGN_DISTRIBUTION}" SYMROOT='$(PWD)'

xcrun -sdk iphoneos PackageApplication "./Release-iphoneos/${dirge}.app" -o ~/"${IPANAME}"