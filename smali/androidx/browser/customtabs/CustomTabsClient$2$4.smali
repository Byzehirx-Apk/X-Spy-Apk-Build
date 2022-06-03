.class Landroidx/browser/customtabs/CustomTabsClient$2$4;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2$4;
    move-object v1, p1

    .local v1, "this$1":Landroidx/browser/customtabs/CustomTabsClient$2;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/browser/customtabs/CustomTabsClient$2$4;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/browser/customtabs/CustomTabsClient$2$4;->val$message:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/browser/customtabs/CustomTabsClient$2$4;->val$extras:Landroid/os/Bundle;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2$4;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsClient$2$4;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsClient$2$4;->val$message:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsClient$2$4;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroidx/browser/customtabs/CustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 237
    return-void
.end method
