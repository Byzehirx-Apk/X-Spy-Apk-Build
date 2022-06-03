.class Landroidx/browser/customtabs/CustomTabsClient$2;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsClient;

.field final synthetic val$callback:Landroidx/browser/customtabs/CustomTabsCallback;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient;Landroidx/browser/customtabs/CustomTabsCallback;)V
    .locals 8

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/browser/customtabs/CustomTabsClient;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsClient$2;->this$0:Landroidx/browser/customtabs/CustomTabsClient;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    .line 192
    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2;
    move-object v1, p1

    .local v1, "callbackName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v3, :cond_0

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/browser/customtabs/CustomTabsClient$2$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroidx/browser/customtabs/CustomTabsClient$2$2;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 215
    goto :goto_0
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2;
    move-object v1, p1

    .local v1, "extras":Landroid/os/Bundle;
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v2, :cond_0

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroidx/browser/customtabs/CustomTabsClient$2$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/browser/customtabs/CustomTabsClient$2$3;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 227
    goto :goto_0
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2;
    move v1, p1

    .local v1, "navigationEvent":I
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v3, :cond_0

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/browser/customtabs/CustomTabsClient$2$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroidx/browser/customtabs/CustomTabsClient$2$1;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;ILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 203
    goto :goto_0
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v3, :cond_0

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/browser/customtabs/CustomTabsClient$2$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroidx/browser/customtabs/CustomTabsClient$2$4;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 239
    goto :goto_0
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 14
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2;
    move v1, p1

    .local v1, "relation":I
    move-object/from16 v2, p2

    .local v2, "requestedOrigin":Landroid/net/Uri;
    move/from16 v3, p3

    .local v3, "result":Z
    move-object/from16 v4, p4

    .local v4, "extras":Landroid/os/Bundle;
    move-object v5, v0

    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v5, :cond_0

    .line 253
    :goto_0
    return-void

    .line 246
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/browser/customtabs/CustomTabsClient$2$5;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move v11, v3

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Landroidx/browser/customtabs/CustomTabsClient$2$5;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 253
    goto :goto_0
.end method
