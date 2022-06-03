.class public Lcom/microsoft/appcenter/ingestion/models/one/Data;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field static final BASE_DATA:Ljava/lang/String; = "baseData"

.field static final BASE_TYPE:Ljava/lang/String; = "baseType"


# instance fields
.field private final mProperties:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    new-instance v2, Lorg/json/JSONObject;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/ingestion/models/one/Data;->mProperties:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 84
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    :goto_0
    return v0

    .line 80
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Data;
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

    .line 82
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/one/Data;

    move-object v2, v3

    .line 84
    .local v2, "data":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Data;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/Data;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getProperties()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Data;->mProperties:Lorg/json/JSONObject;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Data;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    return v0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v5, v1

    invoke-virtual {v5}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    move-object v2, v5

    .line 50
    .local v2, "names":Lorg/json/JSONArray;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 51
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 52
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 53
    .local v4, "name":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/ingestion/models/one/Data;->mProperties:Lorg/json/JSONObject;

    move-object v6, v4

    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v5, v1

    const-string/jumbo v6, "baseType"

    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/ingestion/models/one/Data;->mProperties:Lorg/json/JSONObject;

    const-string/jumbo v8, "baseType"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    move-object v5, v1

    const-string/jumbo v6, "baseData"

    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/ingestion/models/one/Data;->mProperties:Lorg/json/JSONObject;

    const-string/jumbo v8, "baseData"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/ingestion/models/one/Data;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    move-object v2, v5

    .line 67
    .local v2, "names":Lorg/json/JSONArray;
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 68
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 69
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 70
    .local v4, "name":Ljava/lang/String;
    move-object v5, v4

    const-string/jumbo v6, "baseType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    const-string/jumbo v6, "baseData"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/ingestion/models/one/Data;->mProperties:Lorg/json/JSONObject;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v5

    .line 68
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method
