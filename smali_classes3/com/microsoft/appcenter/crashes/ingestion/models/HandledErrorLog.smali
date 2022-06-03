.class public Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
.super Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;
.source "HandledErrorLog.java"


# static fields
.field private static final EXCEPTION:Ljava/lang/String; = "exception"

.field public static final TYPE:Ljava/lang/String; = "handledError"


# instance fields
.field private exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

.field private id:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 118
    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    :goto_0
    return v0

    .line 112
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
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

    .line 113
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 115
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;

    move-object v2, v3

    .line 117
    .local v2, "errorLog":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_5
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    if-nez v3, :cond_4

    .line 118
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_7
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getException()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    const-string/jumbo v1, "handledError"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->hashCode()I

    move-result v2

    move v1, v2

    .line 124
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 125
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 126
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    return v0

    .line 124
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 125
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->read(Lorg/json/JSONObject;)V

    .line 88
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->setId(Ljava/util/UUID;)V

    .line 89
    move-object v4, v1

    const-string/jumbo v5, "exception"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    move-object v4, v1

    const-string/jumbo v5, "exception"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v2, v4

    .line 91
    .local v2, "jException":Lorg/json/JSONObject;
    new-instance v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;-><init>()V

    move-object v3, v4

    .line 92
    .local v3, "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->read(Lorg/json/JSONObject;)V

    .line 93
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V

    .line 95
    .end local v2    # "jException":Lorg/json/JSONObject;
    .end local v3    # "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    :cond_0
    return-void
.end method

.method public setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v1, p1

    .local v1, "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    .line 83
    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v1, p1

    .local v1, "id":Ljava/util/UUID;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    .line 65
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->write(Lorg/json/JSONStringer;)V

    .line 100
    move-object v2, v1

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 101
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->getException()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    move-object v2, v1

    const-string/jumbo v3, "exception"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 103
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->write(Lorg/json/JSONStringer;)V

    .line 104
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 106
    :cond_0
    return-void
.end method
