.class Landroidx/browser/customtabs/CustomTabsSessionToken$1;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/browser/customtabs/CustomTabsSessionToken;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken$1;
    move-object v1, p1

    .local v1, "callbackName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/support/customtabs/ICustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 107
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "CustomTabsSessionToken"

    const-string/jumbo v5, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken$1;
    move-object v1, p1

    .local v1, "extras":Landroid/os/Bundle;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/customtabs/ICustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 116
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CustomTabsSessionToken"

    const-string/jumbo v4, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken$1;
    move v1, p1

    .local v1, "navigationEvent":I
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/support/customtabs/ICustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 98
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "CustomTabsSessionToken"

    const-string/jumbo v5, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken$1;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/support/customtabs/ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 125
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "CustomTabsSessionToken"

    const-string/jumbo v5, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken$1;
    move v1, p1

    .local v1, "relation":I
    move-object v2, p2

    .local v2, "origin":Landroid/net/Uri;
    move v3, p3

    .local v3, "result":Z
    move-object v4, p4

    .local v4, "extras":Landroid/os/Bundle;
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    move v7, v1

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/support/customtabs/ICustomTabsCallback;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 136
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "CustomTabsSessionToken"

    const-string/jumbo v7, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method
