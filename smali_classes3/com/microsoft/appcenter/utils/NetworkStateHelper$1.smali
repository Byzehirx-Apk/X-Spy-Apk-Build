.class Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/utils/NetworkStateHelper;->reopen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/utils/NetworkStateHelper;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;->this$0:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-object v2, v0

    invoke-direct {v2}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;
    move-object v1, p1

    .local v1, "network":Landroid/net/Network;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;->this$0:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->access$000(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Landroid/net/Network;)V

    .line 123
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;
    move-object v1, p1

    .local v1, "network":Landroid/net/Network;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;->this$0:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->access$100(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Landroid/net/Network;)V

    .line 128
    return-void
.end method
