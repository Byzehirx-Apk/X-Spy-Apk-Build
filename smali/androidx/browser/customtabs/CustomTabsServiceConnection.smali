.class public abstract Landroidx/browser/customtabs/CustomTabsServiceConnection;
.super Ljava/lang/Object;
.source "CustomTabsServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsServiceConnection;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsServiceConnection;
    move-object v1, p1

    .local v1, "name":Landroid/content/ComponentName;
    move-object v2, p2

    .local v2, "service":Landroid/os/IBinder;
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Landroidx/browser/customtabs/CustomTabsServiceConnection$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    .line 34
    invoke-static {v8}, Landroid/support/customtabs/ICustomTabsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsService;

    move-result-object v8

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Landroidx/browser/customtabs/CustomTabsServiceConnection$1;-><init>(Landroidx/browser/customtabs/CustomTabsServiceConnection;Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    .line 33
    invoke-virtual {v3, v4, v5}, Landroidx/browser/customtabs/CustomTabsServiceConnection;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V

    .line 36
    return-void
.end method
