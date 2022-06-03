.class public Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field private static final APP:Ljava/lang/String; = "app"

.field private static final DEVICE:Ljava/lang/String; = "device"

.field private static final LOC:Ljava/lang/String; = "loc"

.field private static final METADATA:Ljava/lang/String; = "metadata"

.field private static final NET:Ljava/lang/String; = "net"

.field private static final OS:Ljava/lang/String; = "os"

.field private static final PROTOCOL:Ljava/lang/String; = "protocol"

.field private static final SDK:Ljava/lang/String; = "sdk"

.field private static final USER:Ljava/lang/String; = "user"


# instance fields
.field private app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

.field private device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

.field private loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

.field private metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

.field private net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

.field private os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

.field private protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

.field private sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

.field private user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 424
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    :goto_0
    return v0

    .line 410
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
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

    .line 412
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-object v2, v3

    .line 414
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 415
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 414
    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    if-nez v3, :cond_3

    .line 416
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 417
    :cond_6
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 416
    :cond_7
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    if-nez v3, :cond_6

    .line 418
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    if-eqz v3, :cond_a

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_a
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    if-nez v3, :cond_9

    .line 419
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    if-eqz v3, :cond_d

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_d
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    if-nez v3, :cond_c

    .line 420
    :cond_e
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    if-eqz v3, :cond_10

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    :cond_10
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    if-nez v3, :cond_f

    .line 421
    :cond_11
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    if-eqz v3, :cond_13

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    :cond_13
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    if-nez v3, :cond_12

    .line 422
    :cond_14
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    if-eqz v3, :cond_16

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_15
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    :cond_16
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    if-nez v3, :cond_15

    .line 423
    :cond_17
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    if-eqz v3, :cond_19

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_18
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    :cond_19
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    if-nez v3, :cond_18

    .line 424
    :cond_1a
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    if-eqz v3, :cond_1b

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_1b
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getApp()Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    return-object v0
.end method

.method public getDevice()Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    return-object v0
.end method

.method public getLoc()Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    return-object v0
.end method

.method public getMetadata()Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    return-object v0
.end method

.method public getNet()Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    return-object v0
.end method

.method public getOs()Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    return-object v0
.end method

.method public getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    return-object v0
.end method

.method public getSdk()Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    return-object v0
.end method

.method public getUser()Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->hashCode()I

    move-result v2

    :goto_0
    move v1, v2

    .line 430
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 431
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 432
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 433
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    move v1, v2

    .line 434
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    move v1, v2

    .line 435
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v2, v3

    move v1, v2

    .line 436
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v2, v3

    move v1, v2

    .line 437
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v2, v3

    move v1, v2

    .line 438
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    return v0

    .line 429
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 430
    .restart local v1    # "result":I
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 431
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 432
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 433
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 434
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 435
    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .line 436
    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    .line 437
    :cond_8
    const/4 v3, 0x0

    goto :goto_8
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v3, v1

    const-string/jumbo v4, "metadata"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;-><init>()V

    move-object v2, v3

    .line 279
    .local v2, "metadata":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "metadata"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->read(Lorg/json/JSONObject;)V

    .line 280
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setMetadata(Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;)V

    .line 284
    .end local v2    # "metadata":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "protocol"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;-><init>()V

    move-object v2, v3

    .line 286
    .local v2, "protocol":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "protocol"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->read(Lorg/json/JSONObject;)V

    .line 287
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setProtocol(Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;)V

    .line 291
    .end local v2    # "protocol":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;-><init>()V

    move-object v2, v3

    .line 293
    .local v2, "user":Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->read(Lorg/json/JSONObject;)V

    .line 294
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setUser(Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;)V

    .line 298
    .end local v2    # "user":Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "device"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;-><init>()V

    move-object v2, v3

    .line 300
    .local v2, "device":Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "device"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;->read(Lorg/json/JSONObject;)V

    .line 301
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setDevice(Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;)V

    .line 305
    .end local v2    # "device":Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;
    :cond_3
    move-object v3, v1

    const-string/jumbo v4, "os"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 306
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;-><init>()V

    move-object v2, v3

    .line 307
    .local v2, "os":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "os"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->read(Lorg/json/JSONObject;)V

    .line 308
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setOs(Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;)V

    .line 312
    .end local v2    # "os":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    :cond_4
    move-object v3, v1

    const-string/jumbo v4, "app"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 313
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;-><init>()V

    move-object v2, v3

    .line 314
    .local v2, "app":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "app"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->read(Lorg/json/JSONObject;)V

    .line 315
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setApp(Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;)V

    .line 319
    .end local v2    # "app":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    :cond_5
    move-object v3, v1

    const-string/jumbo v4, "net"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 320
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;-><init>()V

    move-object v2, v3

    .line 321
    .local v2, "net":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "net"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->read(Lorg/json/JSONObject;)V

    .line 322
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setNet(Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;)V

    .line 326
    .end local v2    # "net":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    :cond_6
    move-object v3, v1

    const-string/jumbo v4, "sdk"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 327
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;-><init>()V

    move-object v2, v3

    .line 328
    .local v2, "sdk":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "sdk"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->read(Lorg/json/JSONObject;)V

    .line 329
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setSdk(Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;)V

    .line 333
    .end local v2    # "sdk":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    :cond_7
    move-object v3, v1

    const-string/jumbo v4, "loc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 334
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;-><init>()V

    move-object v2, v3

    .line 335
    .local v2, "loc":Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "loc"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;->read(Lorg/json/JSONObject;)V

    .line 336
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setLoc(Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;)V

    .line 338
    .end local v2    # "loc":Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;
    :cond_8
    return-void
.end method

.method public setApp(Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "app":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    .line 215
    return-void
.end method

.method public setDevice(Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "device":Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    .line 179
    return-void
.end method

.method public setLoc(Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;)V
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "loc":Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    .line 271
    return-void
.end method

.method public setMetadata(Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "metadata":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    .line 125
    return-void
.end method

.method public setNet(Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;)V
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "net":Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    .line 233
    return-void
.end method

.method public setOs(Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "os":Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    .line 197
    return-void
.end method

.method public setProtocol(Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;)V
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "protocol":Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    .line 143
    return-void
.end method

.method public setSdk(Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "sdk":Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    .line 251
    return-void
.end method

.method public setUser(Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "user":Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    .line 161
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
    .line 344
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getMetadata()Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 345
    move-object v2, v1

    const-string/jumbo v3, "metadata"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 346
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getMetadata()Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->write(Lorg/json/JSONStringer;)V

    .line 347
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 351
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 352
    move-object v2, v1

    const-string/jumbo v3, "protocol"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 353
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->write(Lorg/json/JSONStringer;)V

    .line 354
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 358
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getUser()Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 359
    move-object v2, v1

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 360
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getUser()Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->write(Lorg/json/JSONStringer;)V

    .line 361
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 365
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getDevice()Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 366
    move-object v2, v1

    const-string/jumbo v3, "device"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 367
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getDevice()Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;->write(Lorg/json/JSONStringer;)V

    .line 368
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 372
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getOs()Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 373
    move-object v2, v1

    const-string/jumbo v3, "os"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 374
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getOs()Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->write(Lorg/json/JSONStringer;)V

    .line 375
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 379
    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getApp()Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 380
    move-object v2, v1

    const-string/jumbo v3, "app"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 381
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getApp()Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->write(Lorg/json/JSONStringer;)V

    .line 382
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 386
    :cond_5
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getNet()Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 387
    move-object v2, v1

    const-string/jumbo v3, "net"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 388
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getNet()Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->write(Lorg/json/JSONStringer;)V

    .line 389
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 393
    :cond_6
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getSdk()Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 394
    move-object v2, v1

    const-string/jumbo v3, "sdk"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 395
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getSdk()Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->write(Lorg/json/JSONStringer;)V

    .line 396
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 400
    :cond_7
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getLoc()Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 401
    move-object v2, v1

    const-string/jumbo v3, "loc"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 402
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getLoc()Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;->write(Lorg/json/JSONStringer;)V

    .line 403
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 405
    :cond_8
    return-void
.end method
