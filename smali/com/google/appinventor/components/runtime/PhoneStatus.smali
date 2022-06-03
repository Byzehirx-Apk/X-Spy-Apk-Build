.class public Lcom/google/appinventor/components/runtime/PhoneStatus;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that returns information about the phone."
    iconName = "images/phoneip.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "webrtc.jar",
        "google-http-client-beta.jar",
        "google-http-client-android2-beta.jar",
        "google-http-client-android3-beta.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesNativeLibraries;
    v7aLibraries = "libjingle_peerconnection_so.so"
    v8aLibraries = "libjingle_peerconnection_so.so"
    x86_64Libraries = "libjingle_peerconnection_so.so"
.end annotation


# static fields
.field private static activity:Landroid/app/Activity;

.field private static hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneStatus;


# instance fields
.field private Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Ljava/lang/String;

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneStatus;

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 77
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;

    .line 78
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Ljava/lang/String;

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 83
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    sput-object v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    .line 84
    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneStatus;

    if-nez v2, :cond_0

    .line 85
    move-object v2, v0

    sput-object v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneStatus;

    .line 87
    :cond_0
    return-void
.end method

.method public static GetWifiIpAddress()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the IP address of the phone in the form of a String"
    .end annotation

    .prologue
    .line 92
    sget-object v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 94
    iget v1, v1, Landroid/net/DhcpInfo;->ipAddress:I

    move v0, v1

    .line 96
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    move v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/PhoneStatus;->intToIp(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 100
    :goto_0
    move-object v1, v0

    move-object v0, v1

    return-object v0

    .line 99
    :cond_0
    const-string/jumbo v1, "Error: No Wifi Connection"

    move-object v0, v1

    goto :goto_0
.end method

.method public static doFault()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Causes an Exception, used to debug exception processing."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Ljava/lang/Exception;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "doFault called!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUseWebRTC()Z
    .locals 1

    .prologue
    .line 338
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/PhoneStatus;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 356
    move v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, v0

    const/16 v3, 0x8

    shr-int/lit8 v2, v2, 0x8

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, v0

    const/16 v3, 0x10

    shr-int/lit8 v2, v2, 0x10

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, v0

    const/16 v3, 0x18

    ushr-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static isConnected()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns TRUE if the phone is on Wifi, FALSE otherwise"
    .end annotation

    .prologue
    .line 105
    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    move-object v0, v2

    .line 106
    const/4 v2, 0x0

    move-object v1, v2

    .line 107
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 108
    move-object v2, v0

    const/4 v3, 0x1

    .line 109
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v1, v2

    .line 111
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public GetInstaller()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the app that installed us"
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 325
    const-string/jumbo v2, "io.makeroid.companion"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 326
    move-object v1, v3

    if-nez v2, :cond_0

    .line 327
    const-string/jumbo v2, "sideloaded"

    move-object v0, v2

    .line 332
    :goto_0
    return-object v0

    .line 329
    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 332
    :cond_1
    const-string/jumbo v2, "unknown"

    move-object v0, v2

    goto :goto_0
.end method

.method public GetVersionName()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the our VersionName property"
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 315
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 318
    :goto_0
    return-object v0

    .line 316
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 317
    const-string/jumbo v2, "PhoneStatus"

    const-string/jumbo v3, "Unable to get VersionName"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 318
    const-string/jumbo v2, "UNKNOWN"

    move-object v0, v2

    goto :goto_0
.end method

.method public OnSettings()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnSettings"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 262
    return-void
.end method

.method public SdkLevel()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current Android SDK Level"
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public WebRTC(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move v1, p1

    move v2, v1

    sput-boolean v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

    .line 274
    return-void
.end method

.method public WebRTC()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If True we are using WebRTC to talk to the server."
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    sget-boolean v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

    move v0, v1

    return v0
.end method

.method public installURL(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Downloads the URL and installs it as an Android Package"
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/PackageInstaller;->doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public isDirect()Z
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if we are running in the emulator or USB Connection"
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    const-string/jumbo v1, "PhoneStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "android.os.Build.VERSION.RELEASE = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 197
    const-string/jumbo v1, "PhoneStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "android.os.Build.PRODUCT = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 198
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "google_sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x1

    move v0, v1

    .line 204
    :goto_0
    return v0

    .line 201
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_1

    .line 202
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ReplForm;->isDirect()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setAssetsLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Declare that we have loaded our initial assets and other assets should come from the sdcard"
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_0

    .line 228
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ReplForm;->setAssetsLoaded()V

    .line 230
    :cond_0
    return-void
.end method

.method public setHmacSeedReturnCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Establish the secret seed for HOTP generation. Return the SHA1 of the provided seed, this will be used to contact the rendezvous server. Note: This code also starts the connection negotiation process if we are using WebRTC. This is a bit of a kludge..."
    .end annotation

    .prologue
    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v1

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 122
    const-string/jumbo v8, ""

    move-object v0, v8

    .line 191
    :goto_0
    return-object v0

    .line 140
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/PhoneStatus;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 141
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/PhoneStatus;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 144
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v9, "You cannot use two codes with one start up of the Companion. You should restart the Companion and try again."

    const-string/jumbo v10, "Warning"

    const-string/jumbo v11, "OK"

    new-instance v12, Lcom/google/appinventor/components/runtime/PhoneStatus$1;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/google/appinventor/components/runtime/PhoneStatus$1;-><init>(Lcom/google/appinventor/components/runtime/PhoneStatus;)V

    invoke-static {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 157
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/PhoneStatus;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Ljava/lang/String;

    move-object v0, v8

    goto :goto_0

    .line 160
    :cond_2
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/PhoneStatus;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;

    .line 170
    sget-boolean v8, Lcom/google/appinventor/components/runtime/PhoneStatus;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

    if-nez v8, :cond_3

    .line 171
    move-object v8, v1

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->setHmacKey(Ljava/lang/String;)V

    .line 176
    :cond_3
    :try_start_0
    const-string/jumbo v8, "SHA1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v2, v8

    .line 180
    .line 181
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 182
    move-object v8, v2

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    move-object v2, v8

    .line 183
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v2

    array-length v10, v10

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v3, v8

    .line 184
    new-instance v8, Ljava/util/Formatter;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v3

    invoke-direct {v9, v10}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    move-object v4, v8

    .line 185
    move-object v8, v2

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_4

    move-object v8, v2

    move v9, v6

    aget-byte v8, v8, v9

    move v7, v8

    .line 186
    move-object v8, v4

    const-string/jumbo v9, "%02x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move v13, v7

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    .line 185
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 177
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 178
    const-string/jumbo v8, "PhoneStatus"

    const-string/jumbo v9, "Exception getting SHA1 Instance"

    move-object v10, v2

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    .line 179
    const-string/jumbo v8, ""

    move-object v0, v8

    goto/16 :goto_0

    .line 188
    :cond_4
    const-string/jumbo v8, "PhoneStatus"

    const-string/jumbo v9, "Seed = "

    move-object v10, v1

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 189
    const-string/jumbo v8, "PhoneStatus"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string/jumbo v11, "Code = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 190
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/PhoneStatus;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Ljava/lang/String;

    .line 191
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/PhoneStatus;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Ljava/lang/String;

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Really Exit the Application"
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 252
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 253
    return-void
.end method

.method public startHTTPD(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the internal AppInvHTTPD to listen for incoming forms. FOR REPL USE ONLY!"
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v2, Lcom/google/appinventor/components/runtime/ReplForm;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->startHTTPD(Z)V

    .line 223
    :cond_0
    return-void
.end method

.method public startWebRTC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the WebRTC engine"
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-boolean v3, Lcom/google/appinventor/components/runtime/PhoneStatus;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

    if-nez v3, :cond_0

    .line 211
    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 214
    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v4, Lcom/google/appinventor/components/runtime/ReplForm;

    sget-object v5, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PhoneStatus;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v3, Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ReplForm;->setWebRTCMgr(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    .line 216
    goto :goto_0
.end method
