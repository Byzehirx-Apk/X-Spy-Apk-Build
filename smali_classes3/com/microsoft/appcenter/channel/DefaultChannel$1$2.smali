.class Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;
.super Ljava/lang/Object;
.source "DefaultChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/channel/DefaultChannel$1;->onCallFailed(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$1;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/channel/DefaultChannel$1;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;
    move-object v1, p1

    .local v1, "this$1":Lcom/microsoft/appcenter/channel/DefaultChannel$1;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;->val$e:Ljava/lang/Exception;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    iget-object v1, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->val$groupState:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    iget-object v3, v3, Lcom/microsoft/appcenter/channel/DefaultChannel$1;->val$batchId:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$1$2;->val$e:Ljava/lang/Exception;

    invoke-static {v1, v2, v3, v4}, Lcom/microsoft/appcenter/channel/DefaultChannel;->access$200(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 533
    return-void
.end method
