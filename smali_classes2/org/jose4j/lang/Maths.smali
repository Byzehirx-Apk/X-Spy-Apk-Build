.class public Lorg/jose4j/lang/Maths;
.super Ljava/lang/Object;
.source "Maths.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/Maths;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(JJ)J
    .locals 16

    .prologue
    .line 9
    move-wide/from16 v0, p0

    .local v0, "x":J
    move-wide/from16 v2, p2

    .local v2, "y":J
    move-wide v6, v0

    move-wide v8, v2

    add-long/2addr v6, v8

    move-wide v4, v6

    .line 11
    .local v4, "result":J
    const-wide/16 v6, 0x0

    move-wide v8, v0

    move-wide v10, v4

    xor-long/2addr v8, v10

    move-wide v10, v2

    move-wide v12, v4

    xor-long/2addr v10, v12

    and-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 13
    new-instance v6, Ljava/lang/ArithmeticException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "long overflow adding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 15
    :cond_0
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "x":J
    return-wide v0
.end method

.method public static subtract(JJ)J
    .locals 16

    .prologue
    .line 20
    move-wide/from16 v0, p0

    .local v0, "x":J
    move-wide/from16 v2, p2

    .local v2, "y":J
    move-wide v6, v0

    move-wide v8, v2

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 22
    .local v4, "result":J
    const-wide/16 v6, 0x0

    move-wide v8, v0

    move-wide v10, v2

    xor-long/2addr v8, v10

    move-wide v10, v0

    move-wide v12, v4

    xor-long/2addr v10, v12

    and-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 24
    new-instance v6, Ljava/lang/ArithmeticException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "long overflow subtracting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 26
    :cond_0
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "x":J
    return-wide v0
.end method
