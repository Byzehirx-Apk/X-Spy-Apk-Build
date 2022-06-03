.class public Lgnu/text/URIPath;
.super Lgnu/text/Path;
.source "URIPath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/text/Path;",
        "Ljava/lang/Comparable",
        "<",
        "Lgnu/text/URIPath;",
        ">;"
    }
.end annotation


# instance fields
.field final uri:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/text/Path;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    return-void
.end method

.method public static coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "path":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lgnu/text/URIPath;

    if-eqz v2, :cond_0

    .line 35
    move-object v2, v0

    check-cast v2, Lgnu/text/URIPath;

    move-object v0, v2

    .line 49
    .end local v0    # "path":Ljava/lang/Object;
    .local v1, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 36
    .end local v1    # "str":Ljava/lang/String;
    .restart local v0    # "path":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/net/URL;

    if-eqz v2, :cond_1

    .line 37
    move-object v2, v0

    check-cast v2, Ljava/net/URL;

    invoke-static {v2}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 39
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/net/URI;

    if-eqz v2, :cond_2

    .line 40
    move-object v2, v0

    check-cast v2, Ljava/net/URI;

    invoke-static {v2}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 43
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljava/io/File;

    if-nez v2, :cond_3

    move-object v2, v0

    instance-of v2, v2, Lgnu/text/Path;

    if-nez v2, :cond_3

    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/FString;

    if-eqz v2, :cond_4

    .line 44
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 49
    .restart local v1    # "str":Ljava/lang/String;
    :goto_1
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 45
    .end local v1    # "str":Ljava/lang/String;
    :cond_4
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 46
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_1

    .line 48
    .end local v1    # "str":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static encodeForUri(Ljava/lang/String;C)Ljava/lang/String;
    .locals 20

    .prologue
    .line 323
    move-object/from16 v2, p0

    .local v2, "str":Ljava/lang/String;
    move/from16 v3, p1

    .local v3, "mode":C
    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v15

    .line 324
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    move-object v15, v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v5, v15

    .line 325
    .local v5, "len":I
    const/4 v15, 0x0

    move v6, v15

    .local v6, "i":I
    :goto_0
    move v15, v6

    move/from16 v16, v5

    move/from16 v0, v16

    if-ge v15, v0, :cond_10

    .line 327
    move-object v15, v2

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v7, v15

    .line 329
    .local v7, "ch":I
    move v15, v7

    const v16, 0xd800

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    move v15, v7

    const v16, 0xdc00

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    move v15, v6

    move/from16 v16, v5

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 330
    move v15, v7

    const v16, 0xd800

    sub-int v15, v15, v16

    const/16 v16, 0x400

    mul-int/lit16 v15, v15, 0x400

    move-object/from16 v16, v2

    move/from16 v17, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const v17, 0xdc00

    sub-int v16, v16, v17

    add-int v15, v15, v16

    const/high16 v16, 0x10000

    add-int v15, v15, v16

    move v7, v15

    .line 332
    :cond_0
    move v15, v3

    const/16 v16, 0x48

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    move v15, v7

    const/16 v16, 0x20

    move/from16 v0, v16

    if-lt v15, v0, :cond_6

    move v15, v7

    const/16 v16, 0x7e

    move/from16 v0, v16

    if-gt v15, v0, :cond_6

    .line 342
    :cond_1
    move-object v15, v4

    move/from16 v16, v7

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 381
    :goto_1
    goto :goto_0

    .line 332
    :cond_2
    move v15, v7

    const/16 v16, 0x61

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    move v15, v7

    const/16 v16, 0x7a

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    :cond_3
    move v15, v7

    const/16 v16, 0x41

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    move v15, v7

    const/16 v16, 0x5a

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    :cond_4
    move v15, v7

    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    move v15, v7

    const/16 v16, 0x39

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    :cond_5
    move v15, v7

    const/16 v16, 0x2d

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x5f

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x7e

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v3

    const/16 v16, 0x49

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    move v15, v7

    const/16 v16, 0x3b

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x2f

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x3f

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x3a

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x2a

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x27

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x28

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x29

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x40

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x26

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x3d

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x2b

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x24

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x2c

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x5b

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x5d

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x23

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x21

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move v15, v7

    const/16 v16, 0x25

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 345
    :cond_6
    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    move v8, v15

    .line 346
    .local v8, "pos":I
    const/4 v15, 0x0

    move v9, v15

    .line 347
    .local v9, "nbytes":I
    move v15, v7

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    const/4 v15, 0x1

    :goto_2
    move v10, v15

    .line 354
    .local v10, "needed":I
    :cond_7
    move v15, v9

    if-nez v15, :cond_c

    const/4 v15, 0x7

    :goto_3
    move v11, v15

    .line 356
    .local v11, "availbits":I
    move v15, v7

    const/16 v16, 0x1

    move/from16 v17, v11

    shl-int v16, v16, v17

    move/from16 v0, v16

    if-ge v15, v0, :cond_d

    .line 359
    move v15, v7

    move v12, v15

    .line 360
    .local v12, "b":I
    move v15, v9

    if-lez v15, :cond_8

    .line 361
    move v15, v12

    const v16, 0xff80

    move/from16 v17, v9

    shr-int v16, v16, v17

    const/16 v17, 0xff

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    move v12, v15

    .line 362
    :cond_8
    const/4 v15, 0x0

    move v7, v15

    .line 369
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 370
    const/4 v15, 0x0

    move v13, v15

    .local v13, "j":I
    :goto_5
    move v15, v13

    const/16 v16, 0x1

    move/from16 v0, v16

    if-gt v15, v0, :cond_f

    .line 372
    move v15, v12

    const/16 v16, 0xf

    and-int/lit8 v15, v15, 0xf

    move v14, v15

    .line 373
    .local v14, "hex":I
    move-object v15, v4

    move/from16 v16, v8

    move/from16 v17, v14

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_e

    move/from16 v17, v14

    const/16 v18, 0x30

    add-int/lit8 v17, v17, 0x30

    :goto_6
    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 375
    move v15, v12

    const/16 v16, 0x4

    shr-int/lit8 v15, v15, 0x4

    move v12, v15

    .line 370
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 347
    .end local v10    # "needed":I
    .end local v11    # "availbits":I
    .end local v12    # "b":I
    .end local v13    # "j":I
    .end local v14    # "hex":I
    :cond_9
    move v15, v7

    const/16 v16, 0x800

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    const/4 v15, 0x2

    goto :goto_2

    :cond_a
    move v15, v7

    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    const/4 v15, 0x3

    goto :goto_2

    :cond_b
    const/4 v15, 0x4

    goto :goto_2

    .line 354
    .restart local v10    # "needed":I
    :cond_c
    const/4 v15, 0x6

    move/from16 v16, v9

    rsub-int/lit8 v15, v16, 0x6

    goto :goto_3

    .line 366
    .restart local v11    # "availbits":I
    :cond_d
    const/16 v15, 0x80

    move/from16 v16, v7

    const/16 v17, 0x3f

    and-int/lit8 v16, v16, 0x3f

    or-int v15, v15, v16

    move v12, v15

    .line 367
    .restart local v12    # "b":I
    move v15, v7

    const/16 v16, 0x6

    shr-int/lit8 v15, v15, 0x6

    move v7, v15

    goto :goto_4

    .line 373
    .restart local v13    # "j":I
    .restart local v14    # "hex":I
    :cond_e
    move/from16 v17, v14

    const/16 v18, 0xa

    add-int/lit8 v17, v17, -0xa

    const/16 v18, 0x41

    add-int/lit8 v17, v17, 0x41

    goto :goto_6

    .line 377
    .end local v14    # "hex":I
    :cond_f
    move-object v15, v4

    move/from16 v16, v8

    const/16 v17, 0x25

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 379
    move v15, v7

    if-nez v15, :cond_7

    goto/16 :goto_1

    .line 382
    .end local v7    # "ch":I
    .end local v8    # "pos":I
    .end local v9    # "nbytes":I
    .end local v10    # "needed":I
    .end local v11    # "availbits":I
    .end local v12    # "b":I
    .end local v13    # "j":I
    :cond_10
    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v2, v15

    .end local v2    # "str":Ljava/lang/String;
    return-object v2
.end method

.method public static makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;
    .locals 9

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/text/URIPath;->coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v2

    move-object v1, v2

    .line 55
    .local v1, "path":Lgnu/text/URIPath;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x4

    move-object v6, v0

    const-string/jumbo v7, "URI"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/text/URIPath;
    .locals 9

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lgnu/text/URIStringPath;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    new-instance v4, Ljava/net/URI;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/16 v7, 0x49

    invoke-static {v6, v7}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lgnu/text/URIStringPath;-><init>(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .end local v0    # "uri":Ljava/lang/String;
    return-object v0

    .line 72
    .restart local v0    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 74
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    invoke-static {v2}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static valueOf(Ljava/net/URI;)Lgnu/text/URIPath;
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "uri":Ljava/net/URI;
    new-instance v1, Lgnu/text/URIPath;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/text/URIPath;-><init>(Ljava/net/URI;)V

    move-object v0, v1

    .end local v0    # "uri":Ljava/net/URI;
    return-object v0
.end method


# virtual methods
.method public compareTo(Lgnu/text/URIPath;)I
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, p1

    .local v1, "path":Lgnu/text/URIPath;
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    move-object v3, v1

    iget-object v3, v3, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/text/URIPath;
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/text/URIPath;

    invoke-virtual {v2, v3}, Lgnu/text/URIPath;->compareTo(Lgnu/text/URIPath;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/text/URIPath;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/text/URIPath;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    move-object v3, v1

    check-cast v3, Lgnu/text/URIPath;

    iget-object v3, v3, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/text/URIPath;
    return v0

    .restart local v0    # "this":Lgnu/text/URIPath;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v1, v2

    .line 95
    .local v1, "conn":Ljava/net/URLConnection;
    move-object v2, v1

    instance-of v2, v2, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    .line 96
    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 103
    .end local v0    # "this":Lgnu/text/URIPath;
    :goto_1
    return v0

    .line 96
    .restart local v0    # "this":Lgnu/text/URIPath;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 99
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/net/URLConnection;->getLastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 101
    .end local v1    # "conn":Ljava/net/URLConnection;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 103
    .local v1, "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/URIPath;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v2

    move-object v1, v2

    .line 310
    .local v1, "norm":Ljava/net/URI;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    if-ne v2, v3, :cond_0

    .line 311
    move-object v2, v0

    move-object v0, v2

    .line 318
    .end local v0    # "this":Lgnu/text/URIPath;
    .end local v1    # "norm":Ljava/net/URI;
    :goto_0
    return-object v0

    .line 312
    .restart local v0    # "this":Lgnu/text/URIPath;
    .restart local v1    # "norm":Ljava/net/URI;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 318
    .end local v1    # "norm":Ljava/net/URI;
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/URIPath;->getAbsolute()Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lgnu/text/URLPath;->getContentLength(Ljava/net/URL;)I

    move-result v1

    int-to-long v1, v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-wide v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public getLastModified()J
    .locals 3

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lgnu/text/URLPath;->getLastModified(Ljava/net/URL;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return v0
.end method

.method public isAbsolute()Z
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lgnu/text/URLPath;->openInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lgnu/text/URLPath;->openOutputStream(Ljava/net/URL;)Ljava/io/OutputStream;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .locals 12

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, p1

    .local v1, "rstr":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v5}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    move-object v5, v1

    invoke-static {v5}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v5

    move-object v0, v5

    .line 185
    .end local v0    # "this":Lgnu/text/URIPath;
    :goto_0
    return-object v0

    .line 129
    .restart local v0    # "this":Lgnu/text/URIPath;
    :cond_0
    sget-char v5, Ljava/io/File;->separatorChar:C

    move v2, v5

    .line 130
    .local v2, "fileSep":C
    move v5, v2

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_4

    .line 133
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_1

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v2

    if-ne v5, v6, :cond_3

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v2

    if-ne v5, v6, :cond_3

    .line 137
    :cond_2
    new-instance v5, Ljava/io/File;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 139
    :cond_3
    move-object v5, v1

    move v6, v2

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 145
    :cond_4
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    new-instance v6, Ljava/net/URI;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 150
    .line 185
    .local v3, "resolved":Ljava/net/URI;
    move-object v5, v3

    invoke-static {v5}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 147
    .end local v3    # "resolved":Ljava/net/URI;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 149
    .local v4, "ex":Ljava/lang/Throwable;
    move-object v5, v4

    invoke-static {v5}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/URIPath;->toURIString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIPath;
    return-object v0
.end method
