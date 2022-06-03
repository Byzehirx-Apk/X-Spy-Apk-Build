.class public abstract Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
.super Ljava/lang/Object;
.source "AbstractLog.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Log;


# static fields
.field static final DEVICE:Ljava/lang/String; = "device"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DISTRIBUTION_GROUP_ID:Ljava/lang/String; = "distributionGroupId"

.field private static final SID:Ljava/lang/String; = "sid"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final USER_ID:Ljava/lang/String; = "userId"


# instance fields
.field private device:Lcom/microsoft/appcenter/ingestion/models/Device;

.field private distributionGroupId:Ljava/lang/String;

.field private sid:Ljava/util/UUID;

.field private tag:Ljava/lang/Object;

.field private timestamp:Ljava/util/Date;

.field private final transmissionTargetTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedHashSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->transmissionTargetTokens:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized addTransmissionTarget(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, p1

    .local v1, "transmissionTargetToken":Ljava/lang/String;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->transmissionTargetTokens:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 155
    monitor-exit v4

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 210
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    :goto_0
    return v0

    .line 198
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 200
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;

    move-object v2, v3

    .line 202
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->transmissionTargetTokens:Ljava/util/Set;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->transmissionTargetTokens:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 203
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->timestamp:Ljava/util/Date;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->timestamp:Ljava/util/Date;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->timestamp:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 204
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 203
    :cond_5
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->timestamp:Ljava/util/Date;

    if-nez v3, :cond_4

    .line 205
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->sid:Ljava/util/UUID;

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->sid:Ljava/util/UUID;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->sid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_8
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->sid:Ljava/util/UUID;

    if-nez v3, :cond_7

    .line 206
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->distributionGroupId:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->distributionGroupId:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->distributionGroupId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 207
    :cond_a
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 206
    :cond_b
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->distributionGroupId:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 208
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->userId:Ljava/lang/String;

    if-eqz v3, :cond_e

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->userId:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    :cond_e
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->userId:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 209
    :cond_f
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    if-eqz v3, :cond_11

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/Device;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    :cond_11
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    if-nez v3, :cond_10

    .line 210
    :cond_12
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->tag:Ljava/lang/Object;

    if-eqz v3, :cond_13

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->tag:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->tag:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_13
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->tag:Ljava/lang/Object;

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_1

    :cond_14
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    return-object v0
.end method

.method public getDistributionGroupId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->distributionGroupId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    return-object v0
.end method

.method public getSid()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->sid:Ljava/util/UUID;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->tag:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->timestamp:Ljava/util/Date;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    return-object v0
.end method

.method public declared-synchronized getTransmissionTargetTokens()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->transmissionTargetTokens:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    monitor-exit v2

    return-object v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    throw v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->userId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->transmissionTargetTokens:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    move v1, v2

    .line 216
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->timestamp:Ljava/util/Date;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->timestamp:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 217
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->sid:Ljava/util/UUID;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->sid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 218
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->distributionGroupId:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->distributionGroupId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 219
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->userId:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->userId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 220
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    move v1, v2

    .line 221
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->tag:Ljava/lang/Object;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->tag:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    move v1, v2

    .line 222
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    return v0

    .line 216
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 217
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 218
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 219
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 220
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 221
    :cond_5
    const/4 v3, 0x0

    goto :goto_5
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v3, v1

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Invalid type"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    :cond_0
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "timestamp"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->setTimestamp(Ljava/util/Date;)V

    .line 182
    move-object v3, v1

    const-string/jumbo v4, "sid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "sid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->setSid(Ljava/util/UUID;)V

    .line 185
    :cond_1
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "distributionGroupId"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->setDistributionGroupId(Ljava/lang/String;)V

    .line 186
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "userId"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->setUserId(Ljava/lang/String;)V

    .line 187
    move-object v3, v1

    const-string/jumbo v4, "device"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/Device;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/Device;-><init>()V

    move-object v2, v3

    .line 189
    .local v2, "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "device"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/Device;->read(Lorg/json/JSONObject;)V

    .line 190
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V

    .line 192
    .end local v2    # "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    :cond_2
    return-void
.end method

.method public setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, p1

    .local v1, "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    .line 140
    return-void
.end method

.method public setDistributionGroupId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, p1

    .local v1, "distributionGroupId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->distributionGroupId:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSid(Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, p1

    .local v1, "sid":Ljava/util/UUID;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->sid:Ljava/util/UUID;

    .line 110
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->tag:Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, p1

    .local v1, "timestamp":Ljava/util/Date;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->timestamp:Ljava/util/Date;

    .line 100
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, p1

    .local v1, "userId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->userId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "type"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    move-object v2, v1

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 166
    move-object v2, v1

    const-string/jumbo v3, "sid"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->getSid()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    move-object v2, v1

    const-string/jumbo v3, "distributionGroupId"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->getDistributionGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    move-object v2, v1

    const-string/jumbo v3, "userId"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 170
    move-object v2, v1

    const-string/jumbo v3, "device"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 171
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->write(Lorg/json/JSONStringer;)V

    .line 172
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 174
    :cond_0
    return-void
.end method
