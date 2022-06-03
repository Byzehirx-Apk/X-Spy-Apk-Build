.class public Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
.super Lcom/microsoft/appcenter/channel/AbstractChannelListener;
.source "OneCollectorChannelListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;
    }
.end annotation


# static fields
.field static final ONE_COLLECTOR_GROUP_NAME_SUFFIX:Ljava/lang/String; = "/one"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ONE_COLLECTOR_TRIGGER_COUNT:I = 0x32
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ONE_COLLECTOR_TRIGGER_MAX_PARALLEL_REQUESTS:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mChannel:Lcom/microsoft/appcenter/channel/Channel;

.field private final mEpochsAndSeqsByIKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;",
            ">;"
        }
    .end annotation
.end field

.field private final mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

.field private final mInstallId:Ljava/util/UUID;

.field private final mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/channel/Channel;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/http/HttpClient;Ljava/util/UUID;)V
    .locals 11
    .param p1    # Lcom/microsoft/appcenter/channel/Channel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/appcenter/http/HttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move-object v1, p1

    .local v1, "channel":Lcom/microsoft/appcenter/channel/Channel;
    move-object v2, p2

    .local v2, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    move-object v3, p3

    .local v3, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v4, p4

    .local v4, "installId":Ljava/util/UUID;
    move-object v5, v0

    new-instance v6, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;-><init>(Lcom/microsoft/appcenter/http/HttpClient;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V

    move-object v7, v1

    move-object v8, v2

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;-><init>(Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;Lcom/microsoft/appcenter/channel/Channel;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Ljava/util/UUID;)V

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;Lcom/microsoft/appcenter/channel/Channel;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Ljava/util/UUID;)V
    .locals 9
    .param p1    # Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/channel/Channel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move-object v1, p1

    .local v1, "ingestion":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
    move-object v2, p2

    .local v2, "channel":Lcom/microsoft/appcenter/channel/Channel;
    move-object v3, p3

    .local v3, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    move-object v4, p4

    .local v4, "installId":Ljava/util/UUID;
    move-object v5, v0

    invoke-direct {v5}, Lcom/microsoft/appcenter/channel/AbstractChannelListener;-><init>()V

    .line 73
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mEpochsAndSeqsByIKey:Ljava/util/Map;

    .line 89
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    .line 90
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 91
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mInstallId:Ljava/util/UUID;

    .line 92
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 93
    return-void
.end method

.method private static getOneCollectorGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "groupName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "groupName":Ljava/lang/String;
    return-object v0
.end method

.method private static isOneCollectorCompatible(Lcom/microsoft/appcenter/ingestion/models/Log;)Z
    .locals 2
    .param p0    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v1, v0

    instance-of v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    return v0

    .restart local v0    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isOneCollectorGroup(Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "groupName":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v2, "/one"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "groupName":Ljava/lang/String;
    return v0
.end method


# virtual methods
.method public onClear(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move-object v1, p1

    .local v1, "groupName":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->isOneCollectorGroup(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->getOneCollectorGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->clear(Ljava/lang/String;)V

    .line 187
    goto :goto_0
.end method

.method public onGloballyEnabled(Z)V
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move v1, p1

    .local v1, "isEnabled":Z
    move v2, v1

    if-nez v2, :cond_0

    .line 228
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mEpochsAndSeqsByIKey:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 230
    :cond_0
    return-void
.end method

.method public onGroupAdded(Ljava/lang/String;Lcom/microsoft/appcenter/channel/Channel$GroupListener;J)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move-object/from16 v2, p1

    .local v2, "groupName":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "groupListener":Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    move-wide/from16 v4, p3

    .local v4, "batchTimeInterval":J
    move-object v7, v2

    invoke-static {v7}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->isOneCollectorGroup(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    move-object v7, v2

    invoke-static {v7}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->getOneCollectorGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 110
    .local v6, "oneCollectorGroupName":Ljava/lang/String;
    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v8, v6

    const/16 v9, 0x32

    move-wide v10, v4

    const/4 v12, 0x2

    move-object v13, v1

    iget-object v13, v13, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v14, v3

    invoke-interface/range {v7 .. v14}, Lcom/microsoft/appcenter/channel/Channel;->addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 111
    goto :goto_0
.end method

.method public onGroupRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move-object v1, p1

    .local v1, "groupName":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->isOneCollectorGroup(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->getOneCollectorGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 119
    .local v2, "oneCollectorGroupName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/channel/Channel;->removeGroup(Ljava/lang/String;)V

    .line 120
    goto :goto_0
.end method

.method public onPaused(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move-object v1, p1

    .local v1, "groupName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "targetToken":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->isOneCollectorGroup(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v1

    invoke-static {v4}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->getOneCollectorGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/microsoft/appcenter/channel/Channel;->pauseGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    goto :goto_0
.end method

.method public onPreparedLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V
    .locals 19
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    move-object/from16 v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move-object/from16 v2, p1

    .local v2, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object/from16 v3, p2

    .local v3, "groupName":Ljava/lang/String;
    move/from16 v4, p3

    .local v4, "flags":I
    move-object v10, v2

    invoke-static {v10}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->isOneCollectorCompatible(Lcom/microsoft/appcenter/ingestion/models/Log;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 127
    .line 162
    :goto_0
    return-void

    .line 133
    :cond_0
    move-object v10, v1

    :try_start_0
    iget-object v10, v10, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v11, v2

    invoke-interface {v10, v11}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->toCommonSchemaLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v5, v10

    .line 137
    .line 140
    .local v5, "commonSchemaLogs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;>;"
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    :goto_1
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    move-object v7, v10

    .line 143
    .local v7, "commonSchemaLog":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v10, v7

    move v11, v4

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setFlags(Ljava/lang/Long;)V

    .line 146
    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mEpochsAndSeqsByIKey:Ljava/util/Map;

    move-object v11, v7

    invoke-virtual {v11}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getIKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;

    move-object v8, v10

    .line 147
    .local v8, "epochAndSeq":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;
    move-object v10, v8

    if-nez v10, :cond_1

    .line 148
    new-instance v10, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 149
    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mEpochsAndSeqsByIKey:Ljava/util/Map;

    move-object v11, v7

    invoke-virtual {v11}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getIKey()Ljava/lang/String;

    move-result-object v11

    move-object v12, v8

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 151
    :cond_1
    move-object v10, v7

    invoke-virtual {v10}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getSdk()Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-result-object v10

    move-object v9, v10

    .line 152
    .local v9, "sdk":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v10, v9

    move-object v11, v8

    iget-object v11, v11, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;->epoch:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->setEpoch(Ljava/lang/String;)V

    .line 153
    move-object v10, v9

    move-object v11, v8

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget-wide v12, v12, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;->seq:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v16, v11

    move-wide/from16 v17, v12

    move-wide/from16 v11, v17

    move-object/from16 v13, v16

    move-wide/from16 v14, v17

    iput-wide v14, v13, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;->seq:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->setSeq(Ljava/lang/Long;)V

    .line 154
    move-object v10, v9

    move-object v11, v1

    iget-object v11, v11, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mInstallId:Ljava/util/UUID;

    invoke-virtual {v10, v11}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->setInstallId(Ljava/util/UUID;)V

    .line 155
    goto/16 :goto_1

    .line 134
    .end local v5    # "commonSchemaLogs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;>;"
    .end local v7    # "commonSchemaLog":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    .end local v8    # "epochAndSeq":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;
    .end local v9    # "sdk":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    :catch_0
    move-exception v10

    move-object v6, v10

    .line 135
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot send a log to one collector: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    goto/16 :goto_0

    .line 158
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "commonSchemaLogs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;>;"
    :cond_2
    move-object v10, v3

    invoke-static {v10}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->getOneCollectorGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 159
    .local v6, "oneCollectorGroupName":Ljava/lang/String;
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v7, v10

    :goto_2
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    move-object v8, v10

    .line 160
    .local v8, "commonSchemaLog":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v11, v8

    move-object v12, v6

    move v13, v4

    invoke-interface {v10, v11, v12, v13}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 161
    goto :goto_2

    .line 162
    .end local v8    # "commonSchemaLog":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    :cond_3
    goto/16 :goto_0
.end method

.method public onResumed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move-object v1, p1

    .local v1, "groupName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "targetToken":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->isOneCollectorGroup(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v1

    invoke-static {v4}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->getOneCollectorGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/microsoft/appcenter/channel/Channel;->resumeGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    goto :goto_0
.end method

.method public setLogUrl(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move-object v1, p1

    .local v1, "logUrl":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/ingestion/Ingestion;->setLogUrl(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public shouldFilter(Lcom/microsoft/appcenter/ingestion/models/Log;)Z
    .locals 3
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->isOneCollectorCompatible(Lcom/microsoft/appcenter/ingestion/models/Log;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    return v0
.end method
