.class Lcom/bumptech/glide/load/engine/EngineKeyFactory;
.super Ljava/lang/Object;
.source "EngineKeyFactory.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineKeyFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildKey(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/load/engine/EngineKey;
    .locals 24

    .prologue
    .line 16
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineKeyFactory;
    move-object/from16 v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "signature":Lcom/bumptech/glide/load/Key;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object/from16 v5, p5

    .local v5, "cacheDecoder":Lcom/bumptech/glide/load/ResourceDecoder;
    move-object/from16 v6, p6

    .local v6, "sourceDecoder":Lcom/bumptech/glide/load/ResourceDecoder;
    move-object/from16 v7, p7

    .local v7, "transformation":Lcom/bumptech/glide/load/Transformation;
    move-object/from16 v8, p8

    .local v8, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;
    move-object/from16 v9, p9

    .local v9, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    move-object/from16 v10, p10

    .local v10, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;
    new-instance v11, Lcom/bumptech/glide/load/engine/EngineKey;

    move-object/from16 v23, v11

    move-object/from16 v11, v23

    move-object/from16 v12, v23

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-direct/range {v12 .. v22}, Lcom/bumptech/glide/load/engine/EngineKey;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V

    move-object v0, v11

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineKeyFactory;
    return-object v0
.end method
