.class Landroidx/browser/customtabs/PostMessageService$1;
.super Landroid/support/customtabs/IPostMessageService$Stub;
.source "PostMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/PostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/customtabs/PostMessageService;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/PostMessageService;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageService$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/browser/customtabs/PostMessageService;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/browser/customtabs/PostMessageService$1;->this$0:Landroidx/browser/customtabs/PostMessageService;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/customtabs/IPostMessageService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageChannelReady(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageService$1;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Landroid/support/customtabs/ICustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onPostMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageService$1;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, p3

    .local v3, "extras":Landroid/os/Bundle;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Landroid/support/customtabs/ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    return-void
.end method
