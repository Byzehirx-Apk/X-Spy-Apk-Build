.class Lcom/microsoft/appcenter/channel/DefaultChannel$2;
.super Ljava/lang/Object;
.source "DefaultChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$currentState:I

.field final synthetic val$groupState:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V
    .locals 6

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$2;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$2;->val$groupState:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$2;->val$currentState:I

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$2;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$2;->val$groupState:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v3, v0

    iget v3, v3, Lcom/microsoft/appcenter/channel/DefaultChannel$2;->val$currentState:I

    invoke-static {v1, v2, v3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->access$300(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V

    .line 544
    return-void
.end method
