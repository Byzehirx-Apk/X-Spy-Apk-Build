.class final Landroidx/browser/customtabs/CustomTabsClient$1;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient;->connectAndInitialize(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/browser/customtabs/CustomTabsClient$1;->val$applicationContext:Landroid/content/Context;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient$1;
    move-object v1, p1

    .local v1, "name":Landroid/content/ComponentName;
    move-object v2, p2

    .local v2, "client":Landroidx/browser/customtabs/CustomTabsClient;
    move-object v3, v2

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    move-result v3

    .line 149
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsClient$1;->val$applicationContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 150
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 153
    return-void
.end method
