.class Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsSessionToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MockCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;
    return-object v0
.end method

.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callbackName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 46
    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 49
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "navigationEvent"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 43
    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 52
    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "relation"    # I
    .param p2, "requestedOrigin"    # Landroid/net/Uri;
    .param p3, "result"    # Z
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 56
    return-void
.end method
