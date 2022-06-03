.class Lcom/bumptech/glide/load/engine/EngineKey;
.super Ljava/lang/Object;
.source "EngineKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# static fields
.field private static final EMPTY_LOG_STRING:Ljava/lang/String; = ""


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final decoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final encoder:Lcom/bumptech/glide/load/ResourceEncoder;

.field private hashCode:I

.field private final height:I

.field private final id:Ljava/lang/String;

.field private originalKey:Lcom/bumptech/glide/load/Key;

.field private final signature:Lcom/bumptech/glide/load/Key;

.field private final sourceEncoder:Lcom/bumptech/glide/load/Encoder;

.field private stringKey:Ljava/lang/String;

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

.field private final transformation:Lcom/bumptech/glide/load/Transformation;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V
    .locals 13

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineKey;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, p2

    .local v2, "signature":Lcom/bumptech/glide/load/Key;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object/from16 v5, p5

    .local v5, "cacheDecoder":Lcom/bumptech/glide/load/ResourceDecoder;
    move-object/from16 v6, p6

    .local v6, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;
    move-object/from16 v7, p7

    .local v7, "transformation":Lcom/bumptech/glide/load/Transformation;
    move-object/from16 v8, p8

    .local v8, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;
    move-object/from16 v9, p9

    .local v9, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    move-object/from16 v10, p10

    .local v10, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;
    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    .line 35
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 36
    move-object v11, v0

    move v12, v3

    iput v12, v11, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    .line 37
    move-object v11, v0

    move v12, v4

    iput v12, v11, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    .line 38
    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 39
    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 40
    move-object v11, v0

    move-object v12, v7

    iput-object v12, v11, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 41
    move-object v11, v0

    move-object v12, v8

    iput-object v12, v11, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 42
    move-object v11, v0

    move-object v12, v9

    iput-object v12, v11, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 43
    move-object v11, v0

    move-object v12, v10

    iput-object v12, v11, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineKey;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 56
    const/4 v3, 0x1

    move v0, v3

    .line 97
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineKey;
    :goto_0
    return v0

    .line 58
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/EngineKey;
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

    .line 59
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 62
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/engine/EngineKey;

    move-object v2, v3

    .line 64
    .local v2, "engineKey":Lcom/bumptech/glide/load/engine/EngineKey;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 65
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 66
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 67
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 68
    :cond_4
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    if-eq v3, v4, :cond_5

    .line 69
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 70
    :cond_5
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    if-eq v3, v4, :cond_6

    .line 71
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 72
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :goto_1
    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v4, :cond_8

    const/4 v4, 0x1

    :goto_2
    xor-int/2addr v3, v4

    if-eqz v3, :cond_9

    .line 73
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 72
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 74
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v3, :cond_a

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v4}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 75
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 76
    :cond_a
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_3
    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v4, :cond_c

    const/4 v4, 0x1

    :goto_4
    xor-int/2addr v3, v4

    if-eqz v3, :cond_d

    .line 77
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 76
    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    .line 78
    :cond_d
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v3, :cond_e

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 79
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 80
    :cond_e
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v3, :cond_f

    const/4 v3, 0x1

    :goto_5
    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :goto_6
    xor-int/2addr v3, v4

    if-eqz v3, :cond_11

    .line 81
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 80
    :cond_f
    const/4 v3, 0x0

    goto :goto_5

    :cond_10
    const/4 v4, 0x0

    goto :goto_6

    .line 82
    :cond_11
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v3, :cond_12

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 83
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 84
    :cond_12
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v3, :cond_13

    const/4 v3, 0x1

    :goto_7
    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v4, :cond_14

    const/4 v4, 0x1

    :goto_8
    xor-int/2addr v3, v4

    if-eqz v3, :cond_15

    .line 85
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 84
    :cond_13
    const/4 v3, 0x0

    goto :goto_7

    :cond_14
    const/4 v4, 0x0

    goto :goto_8

    .line 86
    :cond_15
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v3, :cond_16

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 87
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 88
    :cond_16
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v3, :cond_17

    const/4 v3, 0x1

    :goto_9
    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v4, :cond_18

    const/4 v4, 0x1

    :goto_a
    xor-int/2addr v3, v4

    if-eqz v3, :cond_19

    .line 89
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 88
    :cond_17
    const/4 v3, 0x0

    goto :goto_9

    :cond_18
    const/4 v4, 0x0

    goto :goto_a

    .line 90
    :cond_19
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v3, :cond_1a

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 91
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 92
    :cond_1a
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    :goto_b
    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v4, :cond_1c

    const/4 v4, 0x1

    :goto_c
    xor-int/2addr v3, v4

    if-eqz v3, :cond_1d

    .line 93
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 92
    :cond_1b
    const/4 v3, 0x0

    goto :goto_b

    :cond_1c
    const/4 v4, 0x0

    goto :goto_c

    .line 94
    :cond_1d
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v3, :cond_1e

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 95
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 97
    :cond_1e
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_0
.end method

.method public getOriginalKey()Lcom/bumptech/glide/load/Key;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineKey;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    if-nez v1, :cond_0

    .line 48
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/engine/OriginalKey;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/OriginalKey;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    .line 50
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineKey;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineKey;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    if-nez v1, :cond_0

    .line 103
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 104
    move-object v1, v0

    const/16 v2, 0x1f

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Key;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 105
    move-object v1, v0

    const/16 v2, 0x1f

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 106
    move-object v1, v0

    const/16 v2, 0x1f

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 107
    move-object v1, v0

    const/16 v2, 0x1f

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 108
    move-object v1, v0

    const/16 v2, 0x1f

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 109
    move-object v1, v0

    const/16 v2, 0x1f

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 110
    move-object v1, v0

    const/16 v2, 0x1f

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 111
    move-object v1, v0

    const/16 v2, 0x1f

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 112
    move-object v1, v0

    const/16 v2, 0x1f

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 114
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineKey;
    return v0

    .line 107
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/EngineKey;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 108
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 109
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 110
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 111
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 112
    :cond_6
    const/4 v3, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineKey;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 120
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EngineKey{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "+["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    .line 156
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineKey;
    return-object v0

    .line 120
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/EngineKey;
    :cond_1
    const-string/jumbo v3, ""

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v3, ""

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v3, ""

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v3, ""

    goto :goto_3

    :cond_5
    const-string/jumbo v3, ""

    goto :goto_4

    :cond_6
    const-string/jumbo v3, ""

    goto :goto_5
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineKey;
    move-object v1, p1

    .local v1, "messageDigest":Ljava/security/MessageDigest;
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object v2, v3

    .line 165
    .local v2, "dimensions":[B
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 166
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 167
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v4}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 171
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_3
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 173
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_4
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 174
    return-void

    .line 168
    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0

    .line 169
    :cond_1
    const-string/jumbo v4, ""

    goto :goto_1

    .line 170
    :cond_2
    const-string/jumbo v4, ""

    goto :goto_2

    .line 171
    :cond_3
    const-string/jumbo v4, ""

    goto :goto_3

    .line 173
    :cond_4
    const-string/jumbo v4, ""

    goto :goto_4
.end method
