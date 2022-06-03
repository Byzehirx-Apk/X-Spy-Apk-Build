.class Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/NetworkStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/utils/NetworkStateHelper;


# direct methods
.method private constructor <init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;->this$0:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;)V
    .locals 5

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;
    move-object v1, p1

    .local v1, "x0":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v2, p2

    .local v2, "x1":Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;-><init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;->this$0:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    invoke-static {v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->access$300(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V

    .line 293
    return-void
.end method
