.class public Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
.super Ljava/lang/Object;
.source "SdkExtension.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field private static final EPOCH:Ljava/lang/String; = "epoch"

.field private static final INSTALL_ID:Ljava/lang/String; = "installId"

.field private static final LIB_VER:Ljava/lang/String; = "libVer"

.field private static final SEQ:Ljava/lang/String; = "seq"


# instance fields
.field private epoch:Ljava/lang/String;

.field private installId:Ljava/util/UUID;

.field private libVer:Ljava/lang/String;

.field private seq:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 166
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    :goto_0
    return v0

    .line 159
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
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

    .line 161
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-object v2, v3

    .line 163
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->libVer:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->libVer:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->libVer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->libVer:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 164
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->epoch:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->epoch:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->epoch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_7
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->epoch:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 165
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->seq:Ljava/lang/Long;

    if-eqz v3, :cond_a

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->seq:Ljava/lang/Long;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->seq:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_a
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->seq:Ljava/lang/Long;

    if-nez v3, :cond_9

    .line 166
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->installId:Ljava/util/UUID;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->installId:Ljava/util/UUID;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->installId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_c
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->installId:Ljava/util/UUID;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_1

    :cond_d
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getEpoch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->epoch:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    return-object v0
.end method

.method public getInstallId()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->installId:Ljava/util/UUID;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    return-object v0
.end method

.method public getLibVer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->libVer:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    return-object v0
.end method

.method public getSeq()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->seq:Ljava/lang/Long;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->libVer:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->libVer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    move v1, v2

    .line 172
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->epoch:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->epoch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 173
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->seq:Ljava/lang/Long;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->seq:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 174
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->installId:Ljava/util/UUID;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->installId:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 175
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    return v0

    .line 171
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 172
    .restart local v1    # "result":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 173
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 174
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "libVer"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->setLibVer(Ljava/lang/String;)V

    .line 140
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "epoch"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->setEpoch(Ljava/lang/String;)V

    .line 141
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "seq"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->setSeq(Ljava/lang/Long;)V

    .line 142
    move-object v2, v1

    const-string/jumbo v3, "installId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "installId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->setInstallId(Ljava/util/UUID;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setEpoch(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, p1

    .local v1, "epoch":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->epoch:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setInstallId(Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, p1

    .local v1, "installId":Ljava/util/UUID;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->installId:Ljava/util/UUID;

    .line 135
    return-void
.end method

.method public setLibVer(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, p1

    .local v1, "libVer":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->libVer:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSeq(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, p1

    .local v1, "seq":Ljava/lang/Long;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->seq:Ljava/lang/Long;

    .line 117
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
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "libVer"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->getLibVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    move-object v2, v1

    const-string/jumbo v3, "epoch"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->getEpoch()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    move-object v2, v1

    const-string/jumbo v3, "seq"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->getSeq()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    move-object v2, v1

    const-string/jumbo v3, "installId"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->getInstallId()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    return-void
.end method
