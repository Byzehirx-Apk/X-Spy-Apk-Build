.class public Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
.super Ljava/lang/Object;
.source "DeflateRFC1951CompressionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/zip/CompressionAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compress([B)[B
    .locals 19

    .prologue
    .line 37
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    move-object/from16 v1, p1

    .local v1, "data":[B
    new-instance v14, Ljava/util/zip/Deflater;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x8

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Ljava/util/zip/Deflater;-><init>(IZ)V

    move-object v2, v14

    .line 38
    .local v2, "deflater":Ljava/util/zip/Deflater;
    :try_start_0
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v14

    .local v3, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v14, 0x0

    move-object v4, v14

    .line 39
    :try_start_1
    new-instance v14, Ljava/util/zip/DeflaterOutputStream;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-direct/range {v15 .. v17}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v14

    .line 38
    .local v5, "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    const/4 v14, 0x0

    move-object v6, v14

    .line 41
    move-object v14, v5

    move-object v15, v1

    :try_start_2
    invoke-virtual {v14, v15}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 42
    move-object v14, v5

    invoke-virtual {v14}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 43
    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v14

    move-object v7, v14

    .line 44
    move-object v14, v5

    if-eqz v14, :cond_0

    move-object v14, v6

    if-eqz v14, :cond_2

    move-object v14, v5

    :try_start_3
    invoke-virtual {v14}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_0
    move-object v14, v3

    if-eqz v14, :cond_1

    move-object v14, v4

    if-eqz v14, :cond_4

    move-object v14, v3

    :try_start_4
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    :cond_1
    :goto_1
    move-object v14, v2

    invoke-virtual {v14}, Ljava/util/zip/Deflater;->end()V

    move-object v14, v7

    move-object v0, v14

    .end local v0    # "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    return-object v0

    .line 44
    .restart local v0    # "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    :catch_0
    move-exception v14

    move-object v8, v14

    .local v8, "x2":Ljava/lang/Throwable;
    move-object v14, v6

    move-object v15, v8

    :try_start_5
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_2
    move-object v14, v5

    invoke-virtual {v14}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 38
    .end local v5    # "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    :catch_1
    move-exception v14

    move-object v5, v14

    move-object v14, v5

    move-object v4, v14

    move-object v14, v5

    :try_start_6
    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 44
    :catchall_0
    move-exception v14

    move-object v11, v14

    move-object v14, v3

    if-eqz v14, :cond_3

    move-object v14, v4

    if-eqz v14, :cond_7

    move-object v14, v3

    :try_start_7
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_3
    :goto_2
    move-object v14, v11

    :try_start_8
    throw v14
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 45
    .end local v3    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v14

    move-object v3, v14

    .line 47
    .local v3, "e":Ljava/io/IOException;
    :try_start_9
    new-instance v14, Lorg/jose4j/lang/UncheckedJoseException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "Problem compressing data."

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v17}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 51
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    move-object v13, v14

    move-object v14, v2

    invoke-virtual {v14}, Ljava/util/zip/Deflater;->end()V

    move-object v14, v13

    throw v14

    .line 44
    .local v3, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    :catch_3
    move-exception v14

    move-object v8, v14

    .restart local v8    # "x2":Ljava/lang/Throwable;
    move-object v14, v4

    move-object v15, v8

    :try_start_a
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_4
    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 38
    :catch_4
    move-exception v14

    move-object v7, v14

    move-object v14, v7

    move-object v6, v14

    move-object v14, v7

    :try_start_b
    throw v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 44
    :catchall_2
    move-exception v14

    move-object v9, v14

    move-object v14, v5

    if-eqz v14, :cond_5

    move-object v14, v6

    if-eqz v14, :cond_6

    move-object v14, v5

    :try_start_c
    invoke-virtual {v14}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_5
    :goto_3
    move-object v14, v9

    :try_start_d
    throw v14

    :catch_5
    move-exception v14

    move-object v10, v14

    .local v10, "x2":Ljava/lang/Throwable;
    move-object v14, v6

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_6
    move-object v14, v5

    invoke-virtual {v14}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .end local v5    # "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    :catch_6
    move-exception v14

    move-object v12, v14

    .local v12, "x2":Ljava/lang/Throwable;
    move-object v14, v4

    move-object v15, v12

    :try_start_e
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v12    # "x2":Ljava/lang/Throwable;
    :cond_7
    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_2
.end method

.method public decompress([B)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    move-object/from16 v1, p1

    .local v1, "compressedData":[B
    new-instance v13, Ljava/util/zip/Inflater;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Ljava/util/zip/Inflater;-><init>(Z)V

    move-object v2, v13

    .line 58
    .local v2, "inflater":Ljava/util/zip/Inflater;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v13

    .line 60
    .local v3, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v13, Ljava/util/zip/InflaterInputStream;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    new-instance v15, Ljava/io/ByteArrayInputStream;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v17}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v16}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v13

    .local v4, "iis":Ljava/util/zip/InflaterInputStream;
    const/4 v13, 0x0

    move-object v5, v13

    .line 63
    const/16 v13, 0x100

    :try_start_1
    new-array v13, v13, [B

    move-object v7, v13

    .line 64
    .local v7, "buff":[B
    :goto_0
    move-object v13, v4

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v13

    move/from16 v18, v13

    move/from16 v13, v18

    move/from16 v14, v18

    move v6, v14

    .local v6, "bytesRead":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 66
    move-object v13, v3

    move-object v14, v7

    const/4 v15, 0x0

    move/from16 v16, v6

    invoke-virtual/range {v13 .. v16}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 69
    :cond_0
    move-object v13, v3

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    move-object v8, v13

    .line 70
    move-object v13, v4

    if-eqz v13, :cond_1

    move-object v13, v5

    if-eqz v13, :cond_2

    move-object v13, v4

    :try_start_2
    invoke-virtual {v13}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :cond_1
    :goto_1
    move-object v13, v2

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->end()V

    move-object v13, v8

    move-object v0, v13

    .end local v0    # "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    return-object v0

    .line 70
    .restart local v0    # "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    :catch_0
    move-exception v13

    move-object v9, v13

    .local v9, "x2":Ljava/lang/Throwable;
    move-object v13, v5

    move-object v14, v9

    :try_start_3
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_2
    move-object v13, v4

    invoke-virtual {v13}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 71
    .end local v4    # "iis":Ljava/util/zip/InflaterInputStream;
    .end local v6    # "bytesRead":I
    .end local v7    # "buff":[B
    :catch_1
    move-exception v13

    move-object v4, v13

    .line 73
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v13, Lorg/jose4j/lang/JoseException;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const-string/jumbo v15, "Problem decompressing data."

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v2

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->end()V

    move-object v13, v12

    throw v13

    .line 60
    .local v4, "iis":Ljava/util/zip/InflaterInputStream;
    :catch_2
    move-exception v13

    move-object v6, v13

    move-object v13, v6

    move-object v5, v13

    move-object v13, v6

    :try_start_5
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 70
    :catchall_1
    move-exception v13

    move-object v10, v13

    move-object v13, v4

    if-eqz v13, :cond_3

    move-object v13, v5

    if-eqz v13, :cond_4

    move-object v13, v4

    :try_start_6
    invoke-virtual {v13}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :goto_2
    move-object v13, v10

    :try_start_7
    throw v13

    :catch_3
    move-exception v13

    move-object v11, v13

    .local v11, "x2":Ljava/lang/Throwable;
    move-object v13, v5

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_4
    move-object v13, v4

    invoke-virtual {v13}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public getAlgorithmIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    const-string/jumbo v1, "DEF"

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    return-object v0
.end method

.method public getJavaAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    return-object v0
.end method

.method public getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    sget-object v1, Lorg/jose4j/keys/KeyPersuasion;->NONE:Lorg/jose4j/keys/KeyPersuasion;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;
    return v0
.end method
