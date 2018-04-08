# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\AndroidStudioSDK\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-keepattributes Exceptions,InnerClasses,Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-keepattributes Signature
-keepattributes *Annotation*

-dontwarn javax.**
-dontwarn android.webkit.**
-dontwarn com.android.support.**
-dontwarn okio.**
-dontwarn com.makeramen.**
#            firetv
-dontwarn amazon.**
-dontwarn com.amazon.**
-dontwarn com.bumptech.glide.**
-dontwarn com.dp.**
-dontwarn com.google.**
-dontwarn com.codahale.metrics.**
-dontwarn com.sbstrm.appirater.**
-dontwarn de.greenroboot.**
-dontwarn org.**
-dontwarn retrofit.**
-dontwarn com.google.common.**

-assumenosideeffects class android.util.Log {
    public static int v(...);
    public static int i(...);
    public static int w(...);
    public static int d(...);
}

-keepclassmembers class ** {
    @com.squareup.otto.Subscribe public *;
    @com.squareup.otto.Produce public *;
}
-keepclassmembers class **.R$* {
    public static <fields>;
}
-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keepclassmembers public class * extends android.view.View {
   void set*(***);
   *** get*();
}
-keepclasseswithmembernames class * {
    native <methods>;
}

-keep public class android.webkit.** {*;}
-keep public class javax.**

-keep public class com.cetusplay.remotephone.R$*{
    public static final int *;
}

-keepclassmembers class * {
   public <init>(org.json.JSONObject);
}

-keep class !android.support.v7.internal.view.menu.**,android.support.** {*;}

-dontusemixedcaseclassnames
-dontshrink
-dontoptimize
-dontwarn com.google.android.**
-dontwarn android.webkit.WebView
-dontwarn com.umeng.**
-dontwarn com.tencent.weibo.sdk.**
-dontwarn com.facebook.**
-keep public class javax.**
-keep public class android.webkit.**
-dontwarn android.support.v4.**
-keep enum com.facebook.**
-keepattributes Exceptions,InnerClasses,Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable

-keep public interface com.facebook.**
-keep public interface com.tencent.**
-keep public interface com.umeng.socialize.**
-keep public interface com.umeng.socialize.sensor.**
-keep public interface com.umeng.scrshot.**

-keep public class com.umeng.socialize.* {*;}

#If you are using the Google Mobile Ads SDK, add the following:
# Preserve GMS ads classes
-dontwarn com.google.android.gms.**

-keep class com.google.android.gms.** { *; }
-keep class com.google.firebase.remoteconfig.** { *; }
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
   public static final *** NULL;
}

-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
   @com.google.android.gms.common.annotation.KeepName *;
}



-keep class com.facebook.**
-keep class com.facebook.** { *; }
-keep class com.umeng.scrshot.**
-keep public class com.tencent.** {*;}
-keep class com.umeng.socialize.sensor.**
-keep class com.umeng.socialize.handler.**
-keep class com.umeng.socialize.handler.*
-keep class com.umeng.weixin.handler.**
-keep class com.umeng.weixin.handler.*
-keep class com.umeng.qq.handler.**
-keep class com.umeng.qq.handler.*
-keep class UMMoreHandler{*;}
-keep class com.tencent.mm.sdk.modelmsg.WXMediaMessage {*;}
-keep class com.tencent.mm.sdk.modelmsg.** implements   com.tencent.mm.sdk.modelmsg.WXMediaMessage$IMediaObject {*;}
-keep class im.yixin.sdk.api.YXMessage {*;}
-keep class im.yixin.sdk.api.** implements im.yixin.sdk.api.YXMessage$YXMessageData{*;}
-keep class com.tencent.mm.sdk.** {
 *;
}
-dontwarn twitter4j.**
-keep class twitter4j.** { *; }

-keep class com.tencent.** {*;}
-dontwarn com.tencent.**
-keep public class com.umeng.com.umeng.soexample.R$*{
public static final int *;
}
-keep public class com.linkedin.android.mobilesdk.R$*{
public static final int *;
    }
-keepclassmembers enum * {
public static **[] values();
public static ** valueOf(java.lang.String);
}

-keep class com.tencent.open.TDialog$*
-keep class com.tencent.open.TDialog$* {*;}
-keep class com.tencent.open.PKDialog
-keep class com.tencent.open.PKDialog {*;}
-keep class com.tencent.open.PKDialog$*
-keep class com.tencent.open.PKDialog$* {*;}

-keep class com.sina.** {*;}
-dontwarn com.sina.**
-keep class  com.alipay.share.sdk.** {
   *;
}
-keepnames class * implements android.os.Parcelable {
public static final ** CREATOR;
}

-keep class com.linkedin.** { *; }
-keepattributes Signature


#            firetv
-keep class  amazon.**
-keep class  com.amazon.**
-keep class  com.bumptech.glide.**
-keep class  com.dp.**
-keep class  com.google.**
-keep class  com.codahale.metrics.**
-keep class  com.sbstrm.appirater.**
-keep class  de.greenroboot.**
-keep class  org.**
-keep class  retrofit.**
# Required to preserve the Flurry SDK
-keep class com.flurry.** { *; }
-dontwarn com.flurry.**
-keepattributes *Annotation*,EnclosingMethod,Signature
-keepclasseswithmembers class * {
    public  <init>(android.content.Context, android.util.AttributeSet, int);
}

-keep public class * extends com.orm.**{*;}
-keep public class * extends android.dataBaseClass.BaseSugarRecord{*;}
-keeppackagenames 'com.cetusplay.remotephone.bus.EventBus'
-keep public class com.cetusplay.remotephone.bus.EventBus {*;}
-keep public class com.squareup.otto.Bus {*;}
-keep class com.connectsdk.**       { * ; }
-keep class com.tencent.smtt.** {*;}
-keep class com.tencent.tbs.** {*;}
-dontwarn com.tencent.smtt.**
-dontwarn com.tencent.tbs.**
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# One Audience SDK Begin
-keep class com.oneaudience.** { *; }
# One Audience SDK END

### MoPub SDK Begin
# Keep public classes and methods.
-keepclassmembers class com.mopub.** { public *; }
-keep public class com.mopub.**
-keep public class android.webkit.JavascriptInterface {}

# Explicitly keep any custom event classes in any package.
-keep class * extends com.mopub.mobileads.CustomEventBanner {}
-keep class * extends com.mopub.mobileads.CustomEventInterstitial {}
-keep class * extends com.mopub.nativeads.CustomEventNative {}
-keep class * extends com.mopub.nativeads.CustomEventRewardedAd {}

# Keep methods that are accessed via reflection
-keepclassmembers class ** { @com.mopub.common.util.ReflectionTarget *; }
# Support for Android Advertiser ID.
-keep class com.google.android.gms.common.GooglePlayServicesUtil {*;}
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient {*;}
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient$Info {*;}

-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}
### MoPub SDK END

### Glide SDK BEGIN
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public class * extends com.bumptech.glide.module.AppGlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}

# for DexGuard only
#-keepresourcexmlelements manifest/application/meta-data@value=GlideModule
### Glide SDK END


### AdColony SDK BEGIN
# Keep ADCNative class members unobfuscated
-keepclassmembers class com.adcolony.sdk.ADCNative** {
    *;
 }
### AdColony SDK BEGIN

