.class public abstract Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
.super Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
.source "CommonSchemaLog.java"


# static fields
.field private static final CV:Ljava/lang/String; = "cV"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final EXT:Ljava/lang/String; = "ext"

.field private static final FLAGS:Ljava/lang/String; = "flags"

.field private static final IKEY:Ljava/lang/String; = "iKey"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final POP_SAMPLE:Ljava/lang/String; = "popSample"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final VER:Ljava/lang/String; = "ver"


# instance fields
.field private cV:Ljava/lang/String;

.field private data:Lcom/microsoft/appcenter/ingestion/models/one/Data;

.field private ext:Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

.field private flags:Ljava/lang/Long;

.field private iKey:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private popSample:Ljava/lang/Double;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 336
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    :goto_0
    return v0

    .line 323
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
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

    .line 324
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 326
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    move-object v2, v3

    .line 328
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ver:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ver:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ver:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_5
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ver:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 329
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->name:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_8
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->name:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 330
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->popSample:Ljava/lang/Double;

    if-eqz v3, :cond_b

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->popSample:Ljava/lang/Double;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->popSample:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 331
    :cond_a
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 330
    :cond_b
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->popSample:Ljava/lang/Double;

    if-nez v3, :cond_a

    .line 332
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->iKey:Ljava/lang/String;

    if-eqz v3, :cond_e

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->iKey:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->iKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_e
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->iKey:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 333
    :cond_f
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->flags:Ljava/lang/Long;

    if-eqz v3, :cond_11

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->flags:Ljava/lang/Long;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->flags:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    :cond_11
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->flags:Ljava/lang/Long;

    if-nez v3, :cond_10

    .line 334
    :cond_12
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->cV:Ljava/lang/String;

    if-eqz v3, :cond_14

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->cV:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->cV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    :cond_14
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->cV:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 335
    :cond_15
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ext:Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    if-eqz v3, :cond_17

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ext:Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ext:Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_16
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    :cond_17
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ext:Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    if-nez v3, :cond_16

    .line 336
    :cond_18
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->data:Lcom/microsoft/appcenter/ingestion/models/one/Data;

    if-eqz v3, :cond_19

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->data:Lcom/microsoft/appcenter/ingestion/models/one/Data;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->data:Lcom/microsoft/appcenter/ingestion/models/one/Data;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Data;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_19
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->data:Lcom/microsoft/appcenter/ingestion/models/one/Data;

    if-nez v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_1

    :cond_1a
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getCV()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->cV:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    return-object v0
.end method

.method public getData()Lcom/microsoft/appcenter/ingestion/models/one/Data;
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->data:Lcom/microsoft/appcenter/ingestion/models/one/Data;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    return-object v0
.end method

.method public getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ext:Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    return-object v0
.end method

.method public getFlags()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->flags:Ljava/lang/Long;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    return-object v0
.end method

.method public getIKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->iKey:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    return-object v0
.end method

.method public getPopSample()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->popSample:Ljava/lang/Double;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ver:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->hashCode()I

    move-result v2

    move v1, v2

    .line 342
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ver:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ver:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 343
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 344
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->popSample:Ljava/lang/Double;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->popSample:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 345
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->iKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->iKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 346
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->flags:Ljava/lang/Long;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->flags:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    move v1, v2

    .line 347
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->cV:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->cV:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    move v1, v2

    .line 348
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ext:Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ext:Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v2, v3

    move v1, v2

    .line 349
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->data:Lcom/microsoft/appcenter/ingestion/models/one/Data;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->data:Lcom/microsoft/appcenter/ingestion/models/one/Data;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/Data;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v2, v3

    move v1, v2

    .line 350
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    return v0

    .line 342
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 343
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 344
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 345
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 346
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 347
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 348
    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .line 349
    :cond_7
    const/4 v3, 0x0

    goto :goto_7
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "ver"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setVer(Ljava/lang/String;)V

    .line 266
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setName(Ljava/lang/String;)V

    .line 267
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "time"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setTimestamp(Ljava/util/Date;)V

    .line 268
    move-object v3, v1

    const-string/jumbo v4, "popSample"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "popSample"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setPopSample(Ljava/lang/Double;)V

    .line 271
    :cond_0
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "iKey"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setIKey(Ljava/lang/String;)V

    .line 272
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "flags"

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setFlags(Ljava/lang/Long;)V

    .line 273
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "cV"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setCV(Ljava/lang/String;)V

    .line 276
    move-object v3, v1

    const-string/jumbo v4, "ext"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;-><init>()V

    move-object v2, v3

    .line 278
    .local v2, "extensions":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "ext"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->read(Lorg/json/JSONObject;)V

    .line 279
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setExt(Lcom/microsoft/appcenter/ingestion/models/one/Extensions;)V

    .line 283
    .end local v2    # "extensions":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/one/Data;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/Data;-><init>()V

    move-object v2, v3

    .line 285
    .local v2, "data":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    move-object v3, v2

    move-object v4, v1

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/Data;->read(Lorg/json/JSONObject;)V

    .line 286
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setData(Lcom/microsoft/appcenter/ingestion/models/one/Data;)V

    .line 288
    .end local v2    # "data":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    :cond_2
    return-void
.end method

.method public setCV(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "cV":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->cV:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setData(Lcom/microsoft/appcenter/ingestion/models/one/Data;)V
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "data":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->data:Lcom/microsoft/appcenter/ingestion/models/one/Data;

    .line 257
    return-void
.end method

.method public setExt(Lcom/microsoft/appcenter/ingestion/models/one/Extensions;)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "ext":Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ext:Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    .line 239
    return-void
.end method

.method public setFlags(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "flags":Ljava/lang/Long;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->flags:Ljava/lang/Long;

    .line 201
    return-void
.end method

.method public setIKey(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "iKey":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->iKey:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->name:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setPopSample(Ljava/lang/Double;)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "popSample":Ljava/lang/Double;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->popSample:Ljava/lang/Double;

    .line 164
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "ver":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->ver:Ljava/lang/String;

    .line 126
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
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "ver"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 297
    move-object v2, v1

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 298
    move-object v2, v1

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 299
    move-object v2, v1

    const-string/jumbo v3, "popSample"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getPopSample()Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    move-object v2, v1

    const-string/jumbo v3, "iKey"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getIKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    move-object v2, v1

    const-string/jumbo v3, "flags"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getFlags()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    move-object v2, v1

    const-string/jumbo v3, "cV"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getCV()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    move-object v2, v1

    const-string/jumbo v3, "ext"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 307
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->write(Lorg/json/JSONStringer;)V

    .line 308
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 312
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getData()Lcom/microsoft/appcenter/ingestion/models/one/Data;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 313
    move-object v2, v1

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 314
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getData()Lcom/microsoft/appcenter/ingestion/models/one/Data;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/Data;->write(Lorg/json/JSONStringer;)V

    .line 315
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 317
    :cond_1
    return-void
.end method
