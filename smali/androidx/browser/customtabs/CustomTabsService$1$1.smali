.class Landroidx/browser/customtabs/CustomTabsService$1$1;
.super Ljava/lang/Object;
.source "CustomTabsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsService$1;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsService$1;

.field final synthetic val$sessionToken:Landroidx/browser/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1$1;
    move-object v1, p1

    .local v1, "this$1":Landroidx/browser/customtabs/CustomTabsService$1;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsService$1$1;->this$1:Landroidx/browser/customtabs/CustomTabsService$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsService$1$1;->val$sessionToken:Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsService$1$1;->this$1:Landroidx/browser/customtabs/CustomTabsService$1;

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsService$1$1;->val$sessionToken:Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-virtual {v1, v2}, Landroidx/browser/customtabs/CustomTabsService;->cleanUpSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    move-result v1

    .line 119
    return-void
.end method
