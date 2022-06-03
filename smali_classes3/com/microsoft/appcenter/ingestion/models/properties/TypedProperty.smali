.class public abstract Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
.super Ljava/lang/Object;
.source "TypedProperty.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 70
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    :goto_0
    return v0

    .line 66
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
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

    .line 68
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;

    move-object v2, v3

    .line 70
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v1

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Lorg/json/JSONException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Invalid type"

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->setName(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->name:Ljava/lang/String;

    .line 47
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
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 60
    move-object v2, v1

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 61
    return-void
.end method
