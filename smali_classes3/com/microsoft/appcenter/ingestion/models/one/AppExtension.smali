.class public Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
.super Ljava/lang/Object;
.source "AppExtension.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCALE:Ljava/lang/String; = "locale"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final USER_ID:Ljava/lang/String; = "userId"

.field private static final VER:Ljava/lang/String; = "ver"


# instance fields
.field private id:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 191
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    :goto_0
    return v0

    .line 183
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
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

    .line 185
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-object v2, v3

    .line 187
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->id:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 188
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->ver:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->ver:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->ver:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_7
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->ver:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 189
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->name:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_a
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->name:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 190
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->locale:Ljava/lang/String;

    if-eqz v3, :cond_d

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->locale:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_d
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->locale:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 191
    :cond_e
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->userId:Ljava/lang/String;

    if-eqz v3, :cond_f

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->userId:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_f
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->userId:Ljava/lang/String;

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_1

    :cond_10
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->locale:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->userId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->ver:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    move v1, v2

    .line 197
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->ver:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->ver:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 198
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 199
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->locale:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->locale:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 200
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->userId:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->userId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    move v1, v2

    .line 201
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    return v0

    .line 196
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 197
    .restart local v1    # "result":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 198
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 199
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 200
    :cond_4
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setId(Ljava/lang/String;)V

    .line 164
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "ver"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setVer(Ljava/lang/String;)V

    .line 165
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "name"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setName(Ljava/lang/String;)V

    .line 166
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "locale"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setLocale(Ljava/lang/String;)V

    .line 167
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "userId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setUserId(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->id:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, p1

    .local v1, "locale":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->locale:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->name:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, p1

    .local v1, "userId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->userId:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, p1

    .local v1, "ver":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->ver:Ljava/lang/String;

    .line 122
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
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "id"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    move-object v2, v1

    const-string/jumbo v3, "ver"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    move-object v2, v1

    const-string/jumbo v3, "name"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    move-object v2, v1

    const-string/jumbo v3, "locale"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    move-object v2, v1

    const-string/jumbo v3, "userId"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    return-void
.end method
