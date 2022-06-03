.class Lcom/microsoft/appcenter/channel/DefaultChannel$1$1;
.super Ljava/lang/Object;
.source "DefaultChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/channel/DefaultChannel$1;->onCallSucceeded(Lcom/microsoft/appcenter/http/HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$1;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/channel/DefaultChannel$1;)V
    .locals 4

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$1$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/microsoft/appcenter/channel/DefaultChannel$1;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$1$1;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$1$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$1$1;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    iget-object v1, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$1$1;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->val$groupState:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/channel/DefaultChannel$1$1;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    iget-object v3, v3, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->val$batchId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->access$000(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V

    .line 522
    return-void
.end method
