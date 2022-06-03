.class public Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# instance fields
.field private frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 113
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 114
    const/4 v4, 0x1

    move v1, v4

    .line 126
    .end local v1    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    :goto_0
    return v1

    .line 116
    .restart local v1    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 117
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 119
    :cond_2
    move-object v4, v2

    check-cast v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;

    move-object v3, v4

    .line 120
    .local v3, "that":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v4, v1

    iget-wide v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->id:J

    move-object v6, v3

    iget-wide v6, v6, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 121
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 123
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->name:Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object v4, v1

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->name:Ljava/lang/String;

    move-object v5, v3

    iget-object v5, v5, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 124
    :cond_4
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 123
    :cond_5
    move-object v4, v3

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->name:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 126
    :cond_6
    move-object v4, v1

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->frames:Ljava/util/List;

    if-eqz v4, :cond_7

    move-object v4, v1

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->frames:Ljava/util/List;

    move-object v5, v3

    iget-object v5, v5, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->frames:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_7
    move-object v4, v3

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->frames:Ljava/util/List;

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getFrames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->frames:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    return-object v0
.end method

.method public getId()J
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v1, v0

    iget-wide v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->id:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v2, v0

    iget-wide v2, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->id:J

    move-object v4, v0

    iget-wide v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    move v1, v2

    .line 132
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 133
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->frames:Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->frames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 134
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    return v0

    .line 132
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v2, p1

    .local v2, "object":Lorg/json/JSONObject;
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->setId(J)V

    .line 99
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "name"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->setName(Ljava/lang/String;)V

    .line 100
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "frames"

    invoke-static {}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/StackFrameFactory;->getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/StackFrameFactory;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readArray(Lorg/json/JSONObject;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->setFrames(Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public setFrames(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v1, p1

    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->frames:Ljava/util/List;

    .line 94
    return-void
.end method

.method public setId(J)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-wide v1, p1

    .local v1, "id":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->id:J

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "id"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    move-object v2, v1

    const-string/jumbo v3, "name"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    move-object v2, v1

    const-string/jumbo v3, "frames"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->getFrames()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->writeArray(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/List;)V

    .line 108
    return-void
.end method
