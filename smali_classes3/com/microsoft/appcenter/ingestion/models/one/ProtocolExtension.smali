.class public Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
.super Ljava/lang/Object;
.source "ProtocolExtension.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field private static final DEV_MAKE:Ljava/lang/String; = "devMake"

.field private static final DEV_MODEL:Ljava/lang/String; = "devModel"

.field private static final TICKET_KEYS:Ljava/lang/String; = "ticketKeys"


# instance fields
.field private devMake:Ljava/lang/String;

.field private devModel:Ljava/lang/String;

.field private ticketKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 131
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    :goto_0
    return v0

    .line 124
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
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

    .line 126
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-object v2, v3

    .line 128
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->ticketKeys:Ljava/util/List;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->ticketKeys:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->ticketKeys:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 129
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 128
    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->ticketKeys:Ljava/util/List;

    if-nez v3, :cond_3

    .line 130
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devMake:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devMake:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devMake:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_7
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devMake:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 131
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devModel:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devModel:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_9
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devModel:Ljava/lang/String;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getDevMake()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devMake:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    return-object v0
.end method

.method public getDevModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devModel:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    return-object v0
.end method

.method public getTicketKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->ticketKeys:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->ticketKeys:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->ticketKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_0
    move v1, v2

    .line 137
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devMake:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devMake:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 138
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devModel:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devModel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 139
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    return v0

    .line 136
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 137
    .restart local v1    # "result":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 138
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "ticketKeys"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readStringArray(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->setTicketKeys(Ljava/util/List;)V

    .line 109
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "devMake"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->setDevMake(Ljava/lang/String;)V

    .line 110
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "devModel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->setDevModel(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setDevMake(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v1, p1

    .local v1, "devMake":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devMake:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setDevModel(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v1, p1

    .local v1, "devModel":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->devModel:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setTicketKeys(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v1, p1

    .local v1, "ticketKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->ticketKeys:Ljava/util/List;

    .line 68
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
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "ticketKeys"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->getTicketKeys()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->writeStringArray(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/List;)V

    .line 116
    move-object v2, v1

    const-string/jumbo v3, "devMake"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->getDevMake()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    move-object v2, v1

    const-string/jumbo v3, "devModel"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->getDevModel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void
.end method
