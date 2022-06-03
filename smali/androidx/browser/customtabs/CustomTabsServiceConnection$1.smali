.class Landroidx/browser/customtabs/CustomTabsServiceConnection$1;
.super Landroidx/browser/customtabs/CustomTabsClient;
.source "CustomTabsServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsServiceConnection;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsServiceConnection;Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsServiceConnection$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/browser/customtabs/CustomTabsServiceConnection;
    move-object v2, p2

    .local v2, "service":Landroid/support/customtabs/ICustomTabsService;
    move-object v3, p3

    .local v3, "componentName":Landroid/content/ComponentName;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/browser/customtabs/CustomTabsServiceConnection$1;->this$0:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/browser/customtabs/CustomTabsClient;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    return-void
.end method
