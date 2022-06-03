.class public Lcom/google/appinventor/components/common/TranslationContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 8
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    .line 11
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Basic"

    const-string/jumbo v3, "\u57fa\u672c"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Media"

    const-string/jumbo v3, "\u5a92\u4f53"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Animation"

    const-string/jumbo v3, "\u52a8\u753b"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Social"

    const-string/jumbo v3, "\u793e\u4ea4\u7684"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Sensors"

    const-string/jumbo v3, "\u4f20\u611f\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Screen Arrangement"

    const-string/jumbo v3, "\u5c4f\u5e55\u5e03\u5c40"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "LEGO\u00ae MINDSTORMS\u00ae"

    const-string/jumbo v3, "\u4e50\u9ad8\u673a\u5668\u4eba\u5957\u4ef6\u00ae"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Other stuff"

    const-string/jumbo v3, "\u5176\u4ed6\u4e1c\u897f"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Not ready for prime time"

    const-string/jumbo v3, "\u6d4b\u8bd5\u4e2d\u7684\u5957\u4ef6"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 20
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Old stuff"

    const-string/jumbo v3, "\u65e7\u4e1c\u897f"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Button"

    const-string/jumbo v3, "\u6309\u94ae"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Canvas"

    const-string/jumbo v3, "\u753b\u5e03"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "CheckBox"

    const-string/jumbo v3, "\u590d\u9009\u6846"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Clock"

    const-string/jumbo v3, "\u65f6\u949f"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Image"

    const-string/jumbo v3, "\u56fe\u50cf"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Label"

    const-string/jumbo v3, "\u4fbf\u7b7e"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "ListPicker"

    const-string/jumbo v3, "\u5217\u8868\u9009\u62e9\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "PasswordTextBox"

    const-string/jumbo v3, "\u5bc6\u7801\u6846"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "TextBox"

    const-string/jumbo v3, "\u6587\u672c\u6846"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "TinyDB"

    const-string/jumbo v3, "\u7ec6\u5c0f\u6570\u636e\u5e93"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Camcorder"

    const-string/jumbo v3, "\u6444\u50cf\u673a"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "\u76f8\u673a"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "ImagePicker"

    const-string/jumbo v3, "\u753b\u50cf\u9009\u62e9\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Player"

    const-string/jumbo v3, "\u64ad\u653e\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Sound"

    const-string/jumbo v3, "\u58f0\u97f3"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "VideoPlayer"

    const-string/jumbo v3, "\u5a92\u4f53\u64ad\u653e\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Ball"

    const-string/jumbo v3, "\u7403"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "ImageSprite"

    const-string/jumbo v3, "\u56fe\u7247\u7cbe\u7075"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "ContactPicker"

    const-string/jumbo v3, "\u8054\u7cfb\u4fe1\u606f\u9009\u62e9\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "EmailPicker"

    const-string/jumbo v3, "\u90ae\u4ef6\u9009\u62e9\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "PhoneCall"

    const-string/jumbo v3, "\u7535\u8bdd"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "PhoneNumberPicker"

    const-string/jumbo v3, "\u7535\u8bdd\u53f7\u7801\u9009\u62e9\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Texting"

    const-string/jumbo v3, "\u4fe1\u606f"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "Twitter"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "AccelerometerSensor"

    const-string/jumbo v3, "\u52a0\u901f\u5ea6\u4f20\u611f\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "LocationSensor"

    const-string/jumbo v3, "\u4f4d\u7f6e\u4f20\u611f\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "OrientationSensor"

    const-string/jumbo v3, "\u65b9\u5411\u4f20\u611f\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "HorizontalArrangement"

    const-string/jumbo v3, "\u6c34\u5e73\u6392\u5217"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "TableArrangement"

    const-string/jumbo v3, "\u8868\u5b89\u6392"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "VerticalArrangement"

    const-string/jumbo v3, "\u7ad6\u5411\u5e03\u7f6e"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "NxtColorSensor"

    const-string/jumbo v3, "Nxt\u989c\u8272\u4f20\u611f\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "NxtDirectCommands"

    const-string/jumbo v3, "Nxt\u76f4\u63a5\u547d\u4ee4"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "NxtDrive"

    const-string/jumbo v3, "Nxt\u9a71\u52a8"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "NxtLightSensor"

    const-string/jumbo v3, "Nxt\u5149\u4f20\u611f\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "NxtSoundSensor"

    const-string/jumbo v3, "Nxt\u58f0\u97f3\u4f20\u611f\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "NxtTouchSensor"

    const-string/jumbo v3, "Nxt\u89e6\u6478\u4f20\u611f\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "NxtUltrasonicSensor"

    const-string/jumbo v3, "Nxt\u8d85\u58f0\u6ce2\u4f20\u611f\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "ActivityStarter"

    const-string/jumbo v3, "\u6d3b\u52a8\u542f\u52a8"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "BarcodeScanner"

    const-string/jumbo v3, "\u6761\u7801\u626b\u63cf\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "BluetoothClient"

    const-string/jumbo v3, "\u84dd\u7259\u5ba2\u6237"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "BluetoothServer"

    const-string/jumbo v3, "\u84dd\u7259\u670d\u52a1\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Notifier"

    const-string/jumbo v3, "\u901a\u544a\u4eba"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "SpeechRecognizer"

    const-string/jumbo v3, "\u8bed\u97f3\u8bc6\u522b"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "TextToSpeech"

    const-string/jumbo v3, "\u6587\u672c\u5230\u8bed\u97f3"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "TinyWebDB"

    const-string/jumbo v3, "\u7ec6\u5c0f\u7f51\u7edc\u6570\u636e\u5e93"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Web"

    const-string/jumbo v3, "\u7f51\u7edc"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "FusiontablesControl"

    const-string/jumbo v3, "Fusiontables\u63a7\u5236"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 86
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "GameClient"

    const-string/jumbo v3, "\u6e38\u620f\u5ba2\u6237\u7aef"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "SoundRecorder"

    const-string/jumbo v3, "\u58f0\u97f3\u8bb0\u5f55\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "Voting"

    const-string/jumbo v3, "\u6295\u7968"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    const-string/jumbo v2, "WebViewer"

    const-string/jumbo v3, "\u7f51\u9875\u6d4f\u89c8\u5668"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    return-void
.end method


# virtual methods
.method public getCorrespondingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/common/TranslationContainer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, "Missing name"

    move-object v0, v2

    goto :goto_0
.end method
