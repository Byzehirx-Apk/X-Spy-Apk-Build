.class public Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
.super Ljava/lang/Object;
.source "NetExtension.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field private static final PROVIDER:Ljava/lang/String; = "provider"


# instance fields
.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 65
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    :goto_0
    return v0

    .line 61
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
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

    .line 63
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    move-object v2, v3

    .line 65
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->provider:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->provider:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->provider:Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getProvider()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->provider:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->provider:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "provider"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->setProvider(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->provider:Ljava/lang/String;

    .line 46
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
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "provider"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void
.end method
