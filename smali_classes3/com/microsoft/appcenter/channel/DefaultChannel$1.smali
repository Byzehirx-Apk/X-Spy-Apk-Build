.class Lcom/microsoft/appcenter/channel/DefaultChannel$1;
.super Ljava/lang/Object;
.source "DefaultChannel.java"

# interfaces
.implements Lcom/microsoft/appcenter/http/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/channel/DefaultChannel;->sendLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;ILjava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

.field final synthetic val$batchId:Ljava/lang/String;

.field final synthetic val$groupState:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->val$groupState:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->val$batchId:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallFailed(Ljava/lang/Exception;)V
    .locals 8

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$1;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    invoke-static {v2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->access$100(Lcom/microsoft/appcenter/channel/DefaultChannel;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel$1;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 535
    return-void
.end method

.method public onCallSucceeded(Lcom/microsoft/appcenter/http/HttpResponse;)V
    .locals 7

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$1;
    move-object v1, p1

    .local v1, "httpResponse":Lcom/microsoft/appcenter/http/HttpResponse;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    invoke-static {v2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->access$100(Lcom/microsoft/appcenter/channel/DefaultChannel;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/microsoft/appcenter/channel/DefaultChannel$1$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/channel/DefaultChannel$1$1;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 524
    return-void
.end method
