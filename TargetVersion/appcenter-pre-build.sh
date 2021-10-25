#!/usr/bin/env bash
echo "Project Level Build Script"
echo "Print project.assets.json"
find /$APPCENTER_SOURCE_DIRECTORY -type f -name project.assets.json -exec cat -n {} +
#Xamarin.Android.Common.targets
#echo "Print Xamarin.Android.CSharp.targets"
#find /$(MSBuildExtensionsPath) -type f -name Xamarin.Android.CSharp.targets -exec cat -n {} +

#echo "Git Create Branch"
#uploadBranch=AppCenterSupport
#finalBranchName="${$APPCENTER_BUILD_ID}_${uploadBranch}"
#git branch $finalBranchName

#echo "List branches"
#git branch
echo "List Frameworks"
ls -d /Library/Frameworks/Mono.framework/Versions/*

echo "Start Verbose Build"
/Library/Frameworks/Mono.framework/Versions/6_12_7/bin/msbuild /version /nologo
/Library/Frameworks/Mono.framework/Versions/6_12_7/bin/msbuild /Users/runner/work/1/s/TargetVersion/TargetVersion.csproj /t:PackageForAndroid -t:SignAndroidPackage -p:AndroidPackageFormat=aab /p:Configuration=Release -v:diag

