.class public Lgnu/mapping/Table2D;
.super Ljava/lang/Object;
.source "Table2D.java"


# static fields
.field private static instance:Lgnu/mapping/Table2D;


# instance fields
.field log2Size:I

.field mask:I

.field num_bindings:I

.field table:[Lgnu/mapping/Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lgnu/mapping/Table2D;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/mapping/Table2D;-><init>()V

    sput-object v0, Lgnu/mapping/Table2D;->instance:Lgnu/mapping/Table2D;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Table2D;
    move-object v1, v0

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lgnu/mapping/Table2D;-><init>(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Table2D;
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lgnu/mapping/Table2D;->log2Size:I

    .line 29
    :goto_0
    move v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/Table2D;->log2Size:I

    shl-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 30
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/mapping/Table2D;->log2Size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgnu/mapping/Table2D;->log2Size:I

    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x1

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/Table2D;->log2Size:I

    shl-int/2addr v2, v3

    move v1, v2

    .line 32
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Lgnu/mapping/Entry;

    iput-object v3, v2, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    .line 33
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgnu/mapping/Table2D;->mask:I

    .line 34
    return-void
.end method

.method public static final getInstance()Lgnu/mapping/Table2D;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lgnu/mapping/Table2D;->instance:Lgnu/mapping/Table2D;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Table2D;
    move-object v1, p1

    .local v1, "key1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "key2":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "defaultValue":Ljava/lang/Object;
    move-object v7, v1

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    move v4, v7

    .line 39
    .local v4, "h1":I
    move-object v7, v2

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    move v5, v7

    .line 40
    .local v5, "h2":I
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object v7

    move-object v6, v7

    .line 41
    .local v6, "entry":Lgnu/mapping/Entry;
    move-object v7, v6

    if-eqz v7, :cond_0

    move-object v7, v6

    iget-object v7, v7, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    move-object v8, v6

    if-ne v7, v8, :cond_1

    :cond_0
    move-object v7, v3

    :goto_0
    move-object v0, v7

    .end local v0    # "this":Lgnu/mapping/Table2D;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Table2D;
    :cond_1
    move-object v7, v6

    iget-object v7, v7, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public isBound(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 12

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Table2D;
    move-object v1, p1

    .local v1, "key1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "key2":Ljava/lang/Object;
    move-object v6, v1

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    move v3, v6

    .line 47
    .local v3, "h1":I
    move-object v6, v2

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    move v4, v6

    .line 48
    .local v4, "h2":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object v6

    move-object v5, v6

    .line 49
    .local v5, "entry":Lgnu/mapping/Entry;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    iget-object v6, v6, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    move-object v7, v5

    if-eq v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .end local v0    # "this":Lgnu/mapping/Table2D;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Table2D;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;
    .locals 21

    .prologue
    .line 222
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/mapping/Table2D;
    move-object/from16 v3, p1

    .local v3, "key1":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "key2":Ljava/lang/Object;
    move/from16 v5, p3

    .local v5, "hash1":I
    move/from16 v6, p4

    .local v6, "hash2":I
    move/from16 v7, p5

    .local v7, "create":Z
    move/from16 v17, v5

    move/from16 v18, v6

    xor-int v17, v17, v18

    move/from16 v8, v17

    .line 223
    .local v8, "hash":I
    move/from16 v17, v8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/mapping/Table2D;->mask:I

    move/from16 v18, v0

    and-int v17, v17, v18

    move/from16 v9, v17

    .line 224
    .local v9, "index":I
    const/16 v17, 0x0

    move-object/from16 v10, v17

    .line 225
    .local v10, "prev":Lgnu/mapping/Entry;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    move-object/from16 v17, v0

    move/from16 v18, v9

    aget-object v17, v17, v18

    move-object/from16 v11, v17

    .line 226
    .local v11, "first":Lgnu/mapping/Entry;
    move-object/from16 v17, v11

    move-object/from16 v12, v17

    .local v12, "e":Lgnu/mapping/Entry;
    :goto_0
    move-object/from16 v17, v12

    if-eqz v17, :cond_7

    .line 228
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v13, v17

    .line 229
    .local v13, "k1":Ljava/lang/Object;
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v14, v17

    .line 230
    .local v14, "k2":Ljava/lang/Object;
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 232
    .local v15, "dead":Z
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 234
    move-object/from16 v17, v13

    check-cast v17, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    .line 235
    move-object/from16 v17, v13

    if-nez v17, :cond_2

    const/16 v17, 0x1

    :goto_1
    move/from16 v15, v17

    .line 237
    :cond_0
    move-object/from16 v17, v14

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 239
    move-object/from16 v17, v14

    check-cast v17, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    .line 240
    move-object/from16 v17, v14

    if-nez v17, :cond_3

    const/16 v17, 0x1

    :goto_2
    move/from16 v15, v17

    .line 241
    const/16 v17, 0x1

    move/from16 v15, v17

    .line 244
    :cond_1
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    move-object/from16 v17, v0

    move-object/from16 v16, v17

    .line 245
    .local v16, "next":Lgnu/mapping/Entry;
    move/from16 v17, v15

    if-eqz v17, :cond_5

    .line 247
    move-object/from16 v17, v10

    if-nez v17, :cond_4

    .line 248
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    move-object/from16 v17, v0

    move/from16 v18, v9

    move-object/from16 v19, v16

    aput-object v19, v17, v18

    .line 251
    :goto_3
    move-object/from16 v17, v2

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/mapping/Table2D;->num_bindings:I

    move/from16 v18, v0

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lgnu/mapping/Table2D;->num_bindings:I

    .line 252
    move-object/from16 v17, v12

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 258
    :goto_4
    move-object/from16 v17, v16

    move-object/from16 v12, v17

    .line 259
    goto/16 :goto_0

    .line 235
    .end local v16    # "next":Lgnu/mapping/Entry;
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 240
    :cond_3
    const/16 v17, 0x0

    goto :goto_2

    .line 250
    .restart local v16    # "next":Lgnu/mapping/Entry;
    :cond_4
    move-object/from16 v17, v10

    move-object/from16 v18, v16

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    goto :goto_3

    .line 254
    :cond_5
    move-object/from16 v17, v13

    move-object/from16 v18, v3

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v17, v14

    move-object/from16 v18, v4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 255
    move-object/from16 v17, v12

    move-object/from16 v2, v17

    .line 307
    .end local v2    # "this":Lgnu/mapping/Table2D;
    .end local v13    # "k1":Ljava/lang/Object;
    .end local v14    # "k2":Ljava/lang/Object;
    .end local v15    # "dead":Z
    .end local v16    # "next":Lgnu/mapping/Entry;
    :goto_5
    return-object v2

    .line 257
    .restart local v2    # "this":Lgnu/mapping/Table2D;
    .restart local v13    # "k1":Ljava/lang/Object;
    .restart local v14    # "k2":Ljava/lang/Object;
    .restart local v15    # "dead":Z
    .restart local v16    # "next":Lgnu/mapping/Entry;
    :cond_6
    move-object/from16 v17, v12

    move-object/from16 v10, v17

    goto :goto_4

    .line 260
    .end local v13    # "k1":Ljava/lang/Object;
    .end local v14    # "k2":Ljava/lang/Object;
    .end local v15    # "dead":Z
    .end local v16    # "next":Lgnu/mapping/Entry;
    :cond_7
    move/from16 v17, v7

    if-eqz v17, :cond_8

    .line 262
    new-instance v17, Lgnu/mapping/Entry;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    invoke-direct/range {v18 .. v18}, Lgnu/mapping/Entry;-><init>()V

    move-object/from16 v12, v17

    .line 295
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Lgnu/mapping/Table2D;->wrapReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    .line 296
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Lgnu/mapping/Table2D;->wrapReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    .line 297
    move-object/from16 v17, v12

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 298
    move-object/from16 v17, v12

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 299
    move-object/from16 v17, v2

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/mapping/Table2D;->num_bindings:I

    move/from16 v18, v0

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lgnu/mapping/Table2D;->num_bindings:I

    .line 301
    move-object/from16 v17, v12

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 302
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    move-object/from16 v17, v0

    move/from16 v18, v9

    move-object/from16 v19, v12

    aput-object v19, v17, v18

    .line 303
    move-object/from16 v17, v12

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 304
    move-object/from16 v17, v12

    move-object/from16 v2, v17

    goto :goto_5

    .line 307
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto/16 :goto_5
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Table2D;
    move-object v1, p1

    .local v1, "key1":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "key2":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v8, v1

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    move v4, v8

    .line 55
    .local v4, "h1":I
    move-object v8, v2

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    move v5, v8

    .line 56
    .local v5, "h2":I
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v4

    move v12, v5

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object v8

    move-object v6, v8

    .line 57
    .local v6, "entry":Lgnu/mapping/Entry;
    move-object v8, v6

    invoke-virtual {v8}, Lgnu/mapping/Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 58
    .local v7, "oldValue":Ljava/lang/Object;
    move-object v8, v6

    move-object v9, v3

    iput-object v9, v8, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 59
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lgnu/mapping/Table2D;
    return-object v0
.end method

.method rehash()V
    .locals 22

    .prologue
    .line 172
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/mapping/Table2D;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    move-object/from16 v18, v0

    move-object/from16 v3, v18

    .line 173
    .local v3, "oldTable":[Lgnu/mapping/Entry;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v4, v18

    .line 174
    .local v4, "oldCapacity":I
    const/16 v18, 0x2

    move/from16 v19, v4

    mul-int v18, v18, v19

    move/from16 v5, v18

    .line 175
    .local v5, "newCapacity":I
    move/from16 v18, v5

    move/from16 v0, v18

    new-array v0, v0, [Lgnu/mapping/Entry;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 176
    .local v6, "newTable":[Lgnu/mapping/Entry;
    move/from16 v18, v5

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v7, v18

    .line 177
    .local v7, "newMask":I
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lgnu/mapping/Table2D;->num_bindings:I

    .line 178
    move/from16 v18, v4

    move/from16 v8, v18

    .local v8, "i":I
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move/from16 v18, v8

    if-ltz v18, :cond_6

    .line 180
    move-object/from16 v18, v3

    move/from16 v19, v8

    aget-object v18, v18, v19

    move-object/from16 v9, v18

    .line 181
    .local v9, "first":Lgnu/mapping/Entry;
    const/16 v18, 0x0

    move-object/from16 v10, v18

    .line 182
    .local v10, "prev":Lgnu/mapping/Entry;
    move-object/from16 v18, v9

    move-object/from16 v11, v18

    .local v11, "e":Lgnu/mapping/Entry;
    :goto_1
    move-object/from16 v18, v11

    if-eqz v18, :cond_5

    .line 184
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 185
    .local v12, "k1":Ljava/lang/Object;
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    .line 186
    .local v13, "k2":Ljava/lang/Object;
    const/16 v18, 0x0

    move/from16 v14, v18

    .line 188
    .local v14, "dead":Z
    move-object/from16 v18, v12

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 190
    move-object/from16 v18, v12

    check-cast v18, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    .line 191
    move-object/from16 v18, v12

    if-nez v18, :cond_2

    const/16 v18, 0x1

    :goto_2
    move/from16 v14, v18

    .line 193
    :cond_0
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 195
    move-object/from16 v18, v13

    check-cast v18, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    .line 196
    move-object/from16 v18, v13

    if-nez v18, :cond_3

    const/16 v18, 0x1

    :goto_3
    move/from16 v14, v18

    .line 199
    :cond_1
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    move-object/from16 v18, v0

    move-object/from16 v15, v18

    .line 200
    .local v15, "next":Lgnu/mapping/Entry;
    move/from16 v18, v14

    if-eqz v18, :cond_4

    .line 201
    move-object/from16 v18, v11

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 211
    :goto_4
    move-object/from16 v18, v15

    move-object/from16 v11, v18

    .line 212
    goto :goto_1

    .line 191
    .end local v15    # "next":Lgnu/mapping/Entry;
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 196
    :cond_3
    const/16 v18, 0x0

    goto :goto_3

    .line 204
    .restart local v15    # "next":Lgnu/mapping/Entry;
    :cond_4
    move-object/from16 v18, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v18

    move-object/from16 v19, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v19

    xor-int v18, v18, v19

    move/from16 v16, v18

    .line 206
    .local v16, "hash":I
    move/from16 v18, v16

    move/from16 v19, v7

    and-int v18, v18, v19

    move/from16 v17, v18

    .line 207
    .local v17, "index":I
    move-object/from16 v18, v11

    move-object/from16 v19, v6

    move/from16 v20, v17

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 208
    move-object/from16 v18, v6

    move/from16 v19, v17

    move-object/from16 v20, v11

    aput-object v20, v18, v19

    .line 209
    move-object/from16 v18, v2

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/mapping/Table2D;->num_bindings:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lgnu/mapping/Table2D;->num_bindings:I

    goto :goto_4

    .line 213
    .end local v12    # "k1":Ljava/lang/Object;
    .end local v13    # "k2":Ljava/lang/Object;
    .end local v14    # "dead":Z
    .end local v15    # "next":Lgnu/mapping/Entry;
    .end local v16    # "hash":I
    .end local v17    # "index":I
    :cond_5
    goto/16 :goto_0

    .line 214
    .end local v9    # "first":Lgnu/mapping/Entry;
    .end local v10    # "prev":Lgnu/mapping/Entry;
    .end local v11    # "e":Lgnu/mapping/Entry;
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    .line 215
    move-object/from16 v18, v2

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/mapping/Table2D;->log2Size:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lgnu/mapping/Table2D;->log2Size:I

    .line 216
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lgnu/mapping/Table2D;->mask:I

    .line 217
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Table2D;
    move-object v1, p1

    .local v1, "key1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "key2":Ljava/lang/Object;
    move-object v6, v1

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    move v3, v6

    .line 65
    .local v3, "h1":I
    move-object v6, v2

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    move v4, v6

    .line 66
    .local v4, "h2":I
    move v6, v3

    move v7, v4

    xor-int/2addr v6, v7

    move v5, v6

    .line 67
    .local v5, "hash":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/Table2D;->remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lgnu/mapping/Table2D;
    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Table2D;
    move-object v1, p1

    .local v1, "key1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "key2":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Table2D;->remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/Table2D;
    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 22

    .prologue
    .line 77
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/mapping/Table2D;
    move-object/from16 v3, p1

    .local v3, "key1":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "key2":Ljava/lang/Object;
    move/from16 v5, p3

    .local v5, "hash1":I
    move/from16 v6, p4

    .local v6, "hash2":I
    move/from16 v18, v5

    move/from16 v19, v6

    xor-int v18, v18, v19

    move/from16 v7, v18

    .line 78
    .local v7, "hash":I
    move/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/mapping/Table2D;->mask:I

    move/from16 v19, v0

    and-int v18, v18, v19

    move/from16 v8, v18

    .line 79
    .local v8, "index":I
    const/16 v18, 0x0

    move-object/from16 v9, v18

    .line 80
    .local v9, "prev":Lgnu/mapping/Entry;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    move-object/from16 v18, v0

    move/from16 v19, v8

    aget-object v18, v18, v19

    move-object/from16 v10, v18

    .line 81
    .local v10, "first":Lgnu/mapping/Entry;
    move-object/from16 v18, v10

    move-object/from16 v11, v18

    .local v11, "e":Lgnu/mapping/Entry;
    :goto_0
    move-object/from16 v18, v11

    if-eqz v18, :cond_9

    .line 83
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 84
    .local v12, "k1":Ljava/lang/Object;
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    .line 85
    .local v13, "k2":Ljava/lang/Object;
    const/16 v18, 0x0

    move/from16 v14, v18

    .line 87
    .local v14, "dead":Z
    move-object/from16 v18, v12

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 89
    move-object/from16 v18, v12

    check-cast v18, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    .line 90
    move-object/from16 v18, v12

    if-nez v18, :cond_3

    const/16 v18, 0x1

    :goto_1
    move/from16 v14, v18

    .line 92
    :cond_0
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 94
    move-object/from16 v18, v13

    check-cast v18, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    .line 95
    move-object/from16 v18, v13

    if-nez v18, :cond_4

    const/16 v18, 0x1

    :goto_2
    move/from16 v14, v18

    .line 98
    :cond_1
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    move-object/from16 v18, v0

    move-object/from16 v15, v18

    .line 99
    .local v15, "next":Lgnu/mapping/Entry;
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v16, v18

    .line 100
    .local v16, "oldValue":Ljava/lang/Object;
    move-object/from16 v18, v12

    move-object/from16 v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    move-object/from16 v18, v13

    move-object/from16 v19, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    :goto_3
    move/from16 v17, v18

    .line 101
    .local v17, "matches":Z
    move/from16 v18, v14

    if-nez v18, :cond_2

    move/from16 v18, v17

    if-eqz v18, :cond_7

    .line 103
    :cond_2
    move-object/from16 v18, v9

    if-nez v18, :cond_6

    .line 104
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    move-object/from16 v18, v0

    move/from16 v19, v8

    move-object/from16 v20, v15

    aput-object v20, v18, v19

    .line 107
    :goto_4
    move-object/from16 v18, v2

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/mapping/Table2D;->num_bindings:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lgnu/mapping/Table2D;->num_bindings:I

    .line 108
    move-object/from16 v18, v11

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 114
    :goto_5
    move-object/from16 v18, v15

    move-object/from16 v11, v18

    .line 115
    goto/16 :goto_0

    .line 90
    .end local v15    # "next":Lgnu/mapping/Entry;
    .end local v16    # "oldValue":Ljava/lang/Object;
    .end local v17    # "matches":Z
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 95
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 100
    .restart local v15    # "next":Lgnu/mapping/Entry;
    .restart local v16    # "oldValue":Ljava/lang/Object;
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 106
    .restart local v17    # "matches":Z
    :cond_6
    move-object/from16 v18, v9

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    goto :goto_4

    .line 110
    :cond_7
    move/from16 v18, v17

    if-eqz v18, :cond_8

    .line 111
    move-object/from16 v18, v16

    move-object/from16 v2, v18

    .line 116
    .end local v2    # "this":Lgnu/mapping/Table2D;
    .end local v12    # "k1":Ljava/lang/Object;
    .end local v13    # "k2":Ljava/lang/Object;
    .end local v14    # "dead":Z
    .end local v15    # "next":Lgnu/mapping/Entry;
    .end local v16    # "oldValue":Ljava/lang/Object;
    .end local v17    # "matches":Z
    :goto_6
    return-object v2

    .line 113
    .restart local v2    # "this":Lgnu/mapping/Table2D;
    .restart local v12    # "k1":Ljava/lang/Object;
    .restart local v13    # "k2":Ljava/lang/Object;
    .restart local v14    # "dead":Z
    .restart local v15    # "next":Lgnu/mapping/Entry;
    .restart local v16    # "oldValue":Ljava/lang/Object;
    .restart local v17    # "matches":Z
    :cond_8
    move-object/from16 v18, v11

    move-object/from16 v9, v18

    goto :goto_5

    .line 116
    .end local v12    # "k1":Ljava/lang/Object;
    .end local v13    # "k2":Ljava/lang/Object;
    .end local v14    # "dead":Z
    .end local v15    # "next":Lgnu/mapping/Entry;
    .end local v16    # "oldValue":Ljava/lang/Object;
    .end local v17    # "matches":Z
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v2, v18

    goto :goto_6
.end method

.method protected wrapReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Table2D;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Table2D;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Table2D;
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
