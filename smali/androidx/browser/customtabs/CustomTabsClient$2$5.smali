.class Landroidx/browser/customtabs/CustomTabsClient$2$5;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$relation:I

.field final synthetic val$requestedOrigin:Landroid/net/Uri;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2$5;
    move-object v1, p1

    .local v1, "this$1":Landroidx/browser/customtabs/CustomTabsClient$2;
    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/browser/customtabs/CustomTabsClient$2$5;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$relation:I

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$requestedOrigin:Landroid/net/Uri;

    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$result:Z

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$extras:Landroid/os/Bundle;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$2$5;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsClient$2$5;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    move-object v2, v0

    iget v2, v2, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$relation:I

    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$requestedOrigin:Landroid/net/Uri;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$result:Z

    move-object v5, v0

    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/browser/customtabs/CustomTabsCallback;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    .line 251
    return-void
.end method
