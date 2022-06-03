.class public Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
.super Ljava/lang/Object;
.source "MetadataExtension.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# instance fields
.field private mMetadata:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v1, v0

    new-instance v2, Lorg/json/JSONObject;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->mMetadata:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 55
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    :goto_0
    return v0

    .line 51
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
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

    .line 53
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    move-object v2, v3

    .line 55
    .local v2, "metadataExtension":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->mMetadata:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->mMetadata:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getMetadata()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->mMetadata:Lorg/json/JSONObject;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->mMetadata:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    return v0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->mMetadata:Lorg/json/JSONObject;

    .line 38
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->mMetadata:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 44
    .local v3, "key":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->mMetadata:Lorg/json/JSONObject;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 45
    goto :goto_0

    .line 46
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method
