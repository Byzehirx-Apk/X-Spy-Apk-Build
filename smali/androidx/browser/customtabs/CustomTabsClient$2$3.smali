.class Landroidx/browser/customtabs/CustomTabsClient$2$3;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->onMessageChannelReady(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2$3;
    move-object v1, p1

    .local v1, "this$1":Landroidx/browser/customtabs/CustomTabsClient$2;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsClient$2$3;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsClient$2$3;->val$extras:Landroid/os/Bundle;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2$3;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsClient$2$3;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsClient$2$3;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroidx/browser/customtabs/CustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    .line 225
    return-void
.end method
