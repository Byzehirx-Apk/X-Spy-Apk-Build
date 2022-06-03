.class public abstract Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
.super Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;
.source "LogWithNameAndProperties.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 56
    const/4 v3, 0x1

    move v0, v3

    .line 65
    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    :goto_0
    return v0

    .line 58
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
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

    .line 59
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 61
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 62
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 64
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;

    move-object v2, v3

    .line 65
    .local v2, "logWithNameAndProperties":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->hashCode()I

    move-result v2

    move v1, v2

    .line 71
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 72
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    return v0

    .line 71
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->read(Lorg/json/JSONObject;)V

    .line 44
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->setName(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->name:Ljava/lang/String;

    .line 39
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
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->write(Lorg/json/JSONStringer;)V

    .line 50
    move-object v2, v1

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 51
    return-void
.end method
