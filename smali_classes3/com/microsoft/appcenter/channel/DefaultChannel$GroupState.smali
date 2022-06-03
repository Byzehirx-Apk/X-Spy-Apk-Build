.class Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
.super Ljava/lang/Object;
.source "DefaultChannel.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/channel/DefaultChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupState"
.end annotation


# instance fields
.field final mBatchTimeInterval:J

.field final mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

.field final mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

.field final mMaxLogsPerBatch:I

.field final mMaxParallelBatches:I

.field final mName:Ljava/lang/String;

.field mPaused:Z

.field final mPausedTargetKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLogCount:I

.field final mRunnable:Ljava/lang/Runnable;

.field mScheduled:Z

.field final mSendingBatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V
    .locals 14

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object/from16 v2, p2

    .local v2, "name":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "maxLogsPerBatch":I
    move-wide/from16 v4, p4

    .local v4, "batchTimeInterval":J
    move/from16 v6, p6

    .local v6, "maxParallelBatches":I
    move-object/from16 v7, p7

    .local v7, "ingestion":Lcom/microsoft/appcenter/ingestion/Ingestion;
    move-object/from16 v8, p8

    .local v8, "listener":Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 830
    move-object v9, v0

    new-instance v10, Ljava/util/HashMap;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    .line 860
    move-object v9, v0

    new-instance v10, Ljava/util/HashSet;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    iput-object v10, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    .line 866
    move-object v9, v0

    new-instance v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    iput-object v10, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mRunnable:Ljava/lang/Runnable;

    .line 886
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    .line 887
    move-object v9, v0

    move v10, v3

    iput v10, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxLogsPerBatch:I

    .line 888
    move-object v9, v0

    move-wide v10, v4

    iput-wide v10, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    .line 889
    move-object v9, v0

    move v10, v6

    iput v10, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxParallelBatches:I

    .line 890
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 891
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    .line 892
    return-void
.end method
