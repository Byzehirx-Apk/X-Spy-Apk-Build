.class Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;
.super Ljava/lang/Object;
.source "DefaultChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 4

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 870
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    .line 871
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    iget-object v1, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->access$400(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 872
    return-void
.end method
