.class public Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
.super Ljava/lang/Object;
.source "OsExtension.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field private static final NAME:Ljava/lang/String; = "name"

.field private static final VER:Ljava/lang/String; = "ver"


# instance fields
.field private name:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 97
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    :goto_0
    return v0

    .line 92
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
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

    .line 94
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-object v2, v3

    .line 96
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 97
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->ver:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->ver:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->ver:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_6
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->ver:Ljava/lang/String;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->ver:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    move v1, v2

    .line 103
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->ver:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->ver:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 104
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    return v0

    .line 102
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    .restart local v1    # "result":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "name"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->setName(Ljava/lang/String;)V

    .line 79
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "ver"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->setVer(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v1, p1

    .local v1, "ver":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->ver:Ljava/lang/String;

    .line 74
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
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "name"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    move-object v2, v1

    const-string/jumbo v3, "ver"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method
