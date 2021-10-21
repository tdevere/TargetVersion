#!/usr/bin/env bash
echo "Print project.assets.json"
find /$APPCENTER_SOURCE_DIRECTORY -type f -name project.assets.json -exec cat -n {} +

Xamarin.Android.Common.targets

echo "Print Xamarin.Android.CSharp.targets"
find /$(MSBuildExtensionsPath) -type f -name Xamarin.Android.CSharp.targets -exec cat -n {} +
