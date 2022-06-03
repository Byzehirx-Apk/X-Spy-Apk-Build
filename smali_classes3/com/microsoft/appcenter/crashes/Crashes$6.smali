.class Lcom/microsoft/appcenter/crashes/Crashes$6;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Lcom/microsoft/appcenter/channel/Channel$GroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;)V
    .locals 4

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/Crashes$6;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processCallback(Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;)V
    .locals 10

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, p2

    .local v2, "callbackProcessor":Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes$6;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    new-instance v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/crashes/Crashes$6$1;-><init>(Lcom/microsoft/appcenter/crashes/Crashes$6;Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;)V

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/crashes/Crashes;->access$600(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method


# virtual methods
.method public onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .locals 8

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/microsoft/appcenter/crashes/Crashes$6$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes$6$2;-><init>(Lcom/microsoft/appcenter/crashes/Crashes$6;)V

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/crashes/Crashes$6;->processCallback(Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;)V

    .line 556
    return-void
.end method

.method public onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V
    .locals 10

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, p2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Lcom/microsoft/appcenter/crashes/Crashes$6$4;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/microsoft/appcenter/crashes/Crashes$6$4;-><init>(Lcom/microsoft/appcenter/crashes/Crashes$6;Ljava/lang/Exception;)V

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes$6;->processCallback(Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;)V

    .line 588
    return-void
.end method

.method public onSuccess(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .locals 8

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/microsoft/appcenter/crashes/Crashes$6$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes$6$3;-><init>(Lcom/microsoft/appcenter/crashes/Crashes$6;)V

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/crashes/Crashes$6;->processCallback(Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;)V

    .line 572
    return-void
.end method
