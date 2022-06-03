.class public Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
.super Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
.source "EventLog.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "event"


# instance fields
.field private id:Ljava/util/UUID;

.field private typedProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 105
    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    :goto_0
    return v0

    .line 99
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
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

    .line 100
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 102
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    move-object v2, v3

    .line 104
    .local v2, "eventLog":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->id:Ljava/util/UUID;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->id:Ljava/util/UUID;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->id:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_5
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->id:Ljava/util/UUID;

    if-nez v3, :cond_4

    .line 105
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->typedProperties:Ljava/util/List;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->typedProperties:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->typedProperties:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_7
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->typedProperties:Ljava/util/List;

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getId()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->id:Ljava/util/UUID;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    const-string/jumbo v1, "event"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    return-object v0
.end method

.method public getTypedProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->typedProperties:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->hashCode()I

    move-result v2

    move v1, v2

    .line 111
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->id:Ljava/util/UUID;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->id:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 112
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->typedProperties:Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->typedProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 113
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    return v0

    .line 111
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 112
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->read(Lorg/json/JSONObject;)V

    .line 84
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->setId(Ljava/util/UUID;)V

    .line 85
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedPropertyUtils;->read(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->setTypedProperties(Ljava/util/List;)V

    .line 86
    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v1, p1

    .local v1, "id":Ljava/util/UUID;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->id:Ljava/util/UUID;

    .line 61
    return-void
.end method

.method public setTypedProperties(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v1, p1

    .local v1, "typedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->typedProperties:Ljava/util/List;

    .line 79
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
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->write(Lorg/json/JSONStringer;)V

    .line 91
    move-object v2, v1

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 92
    move-object v2, v1

    const-string/jumbo v3, "typedProperties"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->getTypedProperties()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->writeArray(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/List;)V

    .line 93
    return-void
.end method
