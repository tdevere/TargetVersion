#!/usr/bin/env bash
echo "Project Level Build Script"
echo "upgrading npm i appcenter-cli"
appcenter --version
npm i appcenter-cli@latest
appcenter --version
#echo "Print project.assets.json"
#find /$APPCENTER_SOURCE_DIRECTORY -type f -name project.assets.json -exec cat -n {} +
#Xamarin.Android.Common.targets
#echo "Print Xamarin.Android.CSharp.targets"
#find /$(MSBuildExtensionsPath) -type f -name Xamarin.Android.CSharp.targets -exec cat -n {} +

#echo "Git Create Branch"
#uploadBranch=AppCenterSupport
#finalBranchName="${$APPCENTER_BUILD_ID}_${uploadBranch}"
#git branch $finalBranchName

#echo "List branches"
#git branch
#echo "List Frameworks"
#ls -d /Library/Frameworks/Mono.framework/Versions/*

#echo "cat $AGENT_HOMEDIRECTORY/scripts/select-xamarin-sdk.sh"
#cat $AGENT_HOMEDIRECTORY/scripts/select-xamarin-sdk.sh

#echo "Use Older version of Mono"
#/bin/bash $AGENT_HOMEDIRECTORY/scripts/select-xamarin-sdk.sh 6_4_0

#echo "Start Verbose Build"
#/Library/Frameworks/Mono.framework/Versions/6_4_0/bin/msbuild /version /nologo
#/Library/Frameworks/Mono.framework/Versions/6_4_0/bin/msbuild /Users/runner/work/1/s/TargetVersion/TargetVersion.csproj -t:SignAndroidPackage -p:AndroidPackageFormat=aab /p:Configuration=Release -v:diag

