.class public Lgnu/xquery/util/OrderedTuples;
.super Lgnu/lists/FilterConsumer;
.source "OrderedTuples.java"


# instance fields
.field body:Lgnu/mapping/Procedure;

.field comps:[Ljava/lang/Object;

.field first:I

.field n:I

.field next:[I

.field tuples:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/OrderedTuples;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 66
    move-object v1, v0

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public static make$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/xquery/util/OrderedTuples;
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "body":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "comps":[Ljava/lang/Object;
    new-instance v3, Lgnu/xquery/util/OrderedTuples;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/xquery/util/OrderedTuples;-><init>()V

    move-object v2, v3

    .line 72
    .local v2, "tuples":Lgnu/xquery/util/OrderedTuples;
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    .line 73
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lgnu/xquery/util/OrderedTuples;->body:Lgnu/mapping/Procedure;

    .line 74
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "body":Lgnu/mapping/Procedure;
    return-object v0
.end method


# virtual methods
.method cmp(II)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 137
    move-object/from16 v3, p0

    .local v3, "this":Lgnu/xquery/util/OrderedTuples;
    move/from16 v4, p1

    .local v4, "a":I
    move/from16 v5, p2

    .local v5, "b":I
    const/16 v18, 0x0

    move/from16 v6, v18

    .local v6, "i":I
    :goto_0
    move/from16 v18, v6

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 139
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move/from16 v19, v6

    aget-object v18, v18, v19

    check-cast v18, Lgnu/mapping/Procedure;

    move-object/from16 v7, v18

    .line 140
    .local v7, "comparator":Lgnu/mapping/Procedure;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move/from16 v19, v6

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/String;

    move-object/from16 v8, v18

    .line 141
    .local v8, "flags":Ljava/lang/String;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move/from16 v19, v6

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget-object v18, v18, v19

    check-cast v18, Lgnu/xquery/util/NamedCollator;

    move-object/from16 v9, v18

    .line 142
    .local v9, "collator":Lgnu/xquery/util/NamedCollator;
    move-object/from16 v18, v9

    if-nez v18, :cond_0

    .line 143
    sget-object v18, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    move-object/from16 v9, v18

    .line 144
    :cond_0
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    move-object/from16 v19, v0

    move/from16 v20, v4

    aget-object v19, v19, v20

    check-cast v19, [Ljava/lang/Object;

    check-cast v19, [Ljava/lang/Object;

    invoke-virtual/range {v18 .. v19}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    .line 145
    .local v10, "val1":Ljava/lang/Object;
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    move-object/from16 v19, v0

    move/from16 v20, v5

    aget-object v19, v19, v20

    check-cast v19, [Ljava/lang/Object;

    check-cast v19, [Ljava/lang/Object;

    invoke-virtual/range {v18 .. v19}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    .line 146
    .local v11, "val2":Ljava/lang/Object;
    move-object/from16 v18, v10

    invoke-static/range {v18 .. v18}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    .line 147
    move-object/from16 v18, v11

    invoke-static/range {v18 .. v18}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    .line 148
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/kawa/xml/UntypedAtomic;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 149
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v10, v18

    .line 150
    .end local v10    # "val1":Ljava/lang/Object;
    :cond_1
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/kawa/xml/UntypedAtomic;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 151
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v11, v18

    .line 152
    .end local v11    # "val2":Ljava/lang/Object;
    :cond_2
    move-object/from16 v18, v10

    invoke-static/range {v18 .. v18}, Lgnu/xquery/util/SequenceUtils;->isEmptySequence(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v12, v18

    .line 153
    .local v12, "empty1":Z
    move-object/from16 v18, v11

    invoke-static/range {v18 .. v18}, Lgnu/xquery/util/SequenceUtils;->isEmptySequence(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v13, v18

    .line 154
    .local v13, "empty2":Z
    move/from16 v18, v12

    if-eqz v18, :cond_3

    move/from16 v18, v13

    if-eqz v18, :cond_3

    .line 155
    .line 137
    :goto_1
    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_0

    .line 157
    :cond_3
    move/from16 v18, v12

    if-nez v18, :cond_4

    move/from16 v18, v13

    if-eqz v18, :cond_7

    .line 159
    :cond_4
    move-object/from16 v18, v8

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v15, v18

    .line 160
    .local v15, "emptyOrder":C
    move/from16 v18, v12

    move/from16 v19, v15

    const/16 v20, 0x4c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, -0x1

    :goto_3
    move/from16 v14, v18

    .line 180
    .end local v15    # "emptyOrder":C
    .local v14, "c":I
    :goto_4
    move/from16 v18, v14

    if-nez v18, :cond_10

    .line 181
    goto :goto_1

    .line 160
    .end local v14    # "c":I
    .restart local v15    # "emptyOrder":C
    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    :cond_6
    const/16 v18, 0x1

    goto :goto_3

    .line 164
    .end local v15    # "emptyOrder":C
    :cond_7
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v18, v10

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    :goto_5
    move/from16 v15, v18

    .line 166
    .local v15, "isNaN1":Z
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v18, v11

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    :goto_6
    move/from16 v16, v18

    .line 168
    .local v16, "isNaN2":Z
    move/from16 v18, v15

    if-eqz v18, :cond_a

    move/from16 v18, v16

    if-eqz v18, :cond_a

    .line 169
    goto :goto_1

    .line 164
    .end local v15    # "isNaN1":Z
    .end local v16    # "isNaN2":Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_5

    .line 166
    .restart local v15    # "isNaN1":Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_6

    .line 170
    .restart local v16    # "isNaN2":Z
    :cond_a
    move/from16 v18, v15

    if-nez v18, :cond_b

    move/from16 v18, v16

    if-eqz v18, :cond_e

    .line 172
    :cond_b
    move-object/from16 v18, v8

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v17, v18

    .line 173
    .local v17, "emptyOrder":C
    move/from16 v18, v15

    move/from16 v19, v17

    const/16 v20, 0x4c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const/16 v19, 0x1

    :goto_7
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/16 v18, -0x1

    :goto_8
    move/from16 v14, v18

    .line 174
    .restart local v14    # "c":I
    goto :goto_4

    .line 173
    .end local v14    # "c":I
    :cond_c
    const/16 v19, 0x0

    goto :goto_7

    :cond_d
    const/16 v18, 0x1

    goto :goto_8

    .line 175
    .end local v17    # "emptyOrder":C
    :cond_e
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 176
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v18

    move/from16 v14, v18

    .restart local v14    # "c":I
    goto/16 :goto_4

    .line 178
    .end local v14    # "c":I
    :cond_f
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v14, v18

    .restart local v14    # "c":I
    goto/16 :goto_4

    .line 182
    .end local v15    # "isNaN1":Z
    .end local v16    # "isNaN2":Z
    :cond_10
    move-object/from16 v18, v8

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x41

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    move/from16 v18, v14

    :goto_9
    move/from16 v3, v18

    .line 184
    .end local v3    # "this":Lgnu/xquery/util/OrderedTuples;
    .end local v7    # "comparator":Lgnu/mapping/Procedure;
    .end local v8    # "flags":Ljava/lang/String;
    .end local v9    # "collator":Lgnu/xquery/util/NamedCollator;
    .end local v12    # "empty1":Z
    .end local v13    # "empty2":Z
    .end local v14    # "c":I
    :goto_a
    return v3

    .line 182
    .restart local v3    # "this":Lgnu/xquery/util/OrderedTuples;
    .restart local v7    # "comparator":Lgnu/mapping/Procedure;
    .restart local v8    # "flags":Ljava/lang/String;
    .restart local v9    # "collator":Lgnu/xquery/util/NamedCollator;
    .restart local v12    # "empty1":Z
    .restart local v13    # "empty2":Z
    .restart local v14    # "c":I
    :cond_11
    move/from16 v18, v14

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    goto :goto_9

    .line 184
    .end local v7    # "comparator":Lgnu/mapping/Procedure;
    .end local v8    # "flags":Ljava/lang/String;
    .end local v9    # "collator":Lgnu/xquery/util/NamedCollator;
    .end local v12    # "empty1":Z
    .end local v13    # "empty2":Z
    .end local v14    # "c":I
    :cond_12
    const/16 v18, 0x0

    move/from16 v3, v18

    goto :goto_a
.end method

.method emit(ILgnu/mapping/CallContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/OrderedTuples;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    move v5, v1

    aget-object v4, v4, v5

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 92
    .local v3, "args":[Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/util/OrderedTuples;->body:Lgnu/mapping/Procedure;

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 93
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 94
    return-void
.end method

.method emit(Lgnu/mapping/CallContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/OrderedTuples;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/util/OrderedTuples;->first:I

    move v2, v3

    .local v2, "p":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 86
    move-object v3, v0

    move v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/util/OrderedTuples;->emit(ILgnu/mapping/CallContext;)V

    .line 85
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/OrderedTuples;->next:[I

    move v4, v2

    aget v3, v3, v4

    move v2, v3

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method listsort(I)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/OrderedTuples;
    move v1, p1

    .local v1, "list":I
    move-object v11, v0

    iget v11, v11, Lgnu/xquery/util/OrderedTuples;->n:I

    if-nez v11, :cond_0

    .line 209
    const/4 v11, -0x1

    move v0, v11

    .line 280
    .end local v0    # "this":Lgnu/xquery/util/OrderedTuples;
    :goto_0
    return v0

    .line 211
    .restart local v0    # "this":Lgnu/xquery/util/OrderedTuples;
    :cond_0
    move-object v11, v0

    move-object v12, v0

    iget v12, v12, Lgnu/xquery/util/OrderedTuples;->n:I

    new-array v12, v12, [I

    iput-object v12, v11, Lgnu/xquery/util/OrderedTuples;->next:[I

    .line 213
    const/4 v11, 0x1

    move v10, v11

    .line 215
    .local v10, "i":I
    :goto_1
    move v11, v10

    move-object v12, v0

    iget v12, v12, Lgnu/xquery/util/OrderedTuples;->n:I

    if-ne v11, v12, :cond_3

    .line 217
    move-object v11, v0

    iget-object v11, v11, Lgnu/xquery/util/OrderedTuples;->next:[I

    move v12, v10

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    const/4 v13, -0x1

    aput v13, v11, v12

    .line 218
    .line 224
    const/4 v11, 0x1

    move v6, v11

    .line 227
    .local v6, "insize":I
    :goto_2
    move v11, v1

    move v2, v11

    .line 228
    .local v2, "p":I
    const/4 v11, -0x1

    move v1, v11

    .line 229
    const/4 v11, -0x1

    move v5, v11

    .line 231
    .local v5, "tail":I
    const/4 v11, 0x0

    move v7, v11

    .line 233
    .local v7, "nmerges":I
    :goto_3
    move v11, v2

    if-ltz v11, :cond_b

    .line 234
    add-int/lit8 v7, v7, 0x1

    .line 236
    move v11, v2

    move v3, v11

    .line 237
    .local v3, "q":I
    const/4 v11, 0x0

    move v8, v11

    .line 238
    .local v8, "psize":I
    const/4 v11, 0x0

    move v10, v11

    :goto_4
    move v11, v10

    move v12, v6

    if-ge v11, v12, :cond_1

    .line 239
    add-int/lit8 v8, v8, 0x1

    .line 240
    move-object v11, v0

    iget-object v11, v11, Lgnu/xquery/util/OrderedTuples;->next:[I

    move v12, v3

    aget v11, v11, v12

    move v3, v11

    .line 241
    move v11, v3

    if-gez v11, :cond_4

    .line 244
    :cond_1
    move v11, v6

    move v9, v11

    .line 247
    .local v9, "qsize":I
    :goto_5
    move v11, v8

    if-gtz v11, :cond_2

    move v11, v9

    if-lez v11, :cond_a

    move v11, v3

    if-ltz v11, :cond_a

    .line 250
    :cond_2
    move v11, v8

    if-nez v11, :cond_5

    .line 252
    move v11, v3

    move v4, v11

    .local v4, "e":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/xquery/util/OrderedTuples;->next:[I

    move v12, v3

    aget v11, v11, v12

    move v3, v11

    add-int/lit8 v9, v9, -0x1

    .line 266
    :goto_6
    move v11, v5

    if-ltz v11, :cond_9

    .line 267
    move-object v11, v0

    iget-object v11, v11, Lgnu/xquery/util/OrderedTuples;->next:[I

    move v12, v5

    move v13, v4

    aput v13, v11, v12

    .line 270
    :goto_7
    move v11, v4

    move v5, v11

    goto :goto_5

    .line 221
    .end local v2    # "p":I
    .end local v3    # "q":I
    .end local v4    # "e":I
    .end local v5    # "tail":I
    .end local v6    # "insize":I
    .end local v7    # "nmerges":I
    .end local v8    # "psize":I
    .end local v9    # "qsize":I
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Lgnu/xquery/util/OrderedTuples;->next:[I

    move v12, v10

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v13, v10

    aput v13, v11, v12

    .line 213
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 238
    .restart local v2    # "p":I
    .restart local v3    # "q":I
    .restart local v5    # "tail":I
    .restart local v6    # "insize":I
    .restart local v7    # "nmerges":I
    .restart local v8    # "psize":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 253
    .restart local v9    # "qsize":I
    :cond_5
    move v11, v9

    if-eqz v11, :cond_6

    move v11, v3

    if-gez v11, :cond_7

    .line 255
    :cond_6
    move v11, v2

    move v4, v11

    .restart local v4    # "e":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/xquery/util/OrderedTuples;->next:[I

    move v12, v2

    aget v11, v11, v12

    move v2, v11

    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 256
    .end local v4    # "e":I
    :cond_7
    move-object v11, v0

    move v12, v2

    move v13, v3

    invoke-virtual {v11, v12, v13}, Lgnu/xquery/util/OrderedTuples;->cmp(II)I

    move-result v11

    if-gtz v11, :cond_8

    .line 259
    move v11, v2

    move v4, v11

    .restart local v4    # "e":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/xquery/util/OrderedTuples;->next:[I

    move v12, v2

    aget v11, v11, v12

    move v2, v11

    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 262
    .end local v4    # "e":I
    :cond_8
    move v11, v3

    move v4, v11

    .restart local v4    # "e":I
    move-object v11, v0

    iget-object v11, v11, Lgnu/xquery/util/OrderedTuples;->next:[I

    move v12, v3

    aget v11, v11, v12

    move v3, v11

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 269
    :cond_9
    move v11, v4

    move v1, v11

    goto :goto_7

    .line 274
    .end local v4    # "e":I
    :cond_a
    move v11, v3

    move v2, v11

    goto/16 :goto_3

    .line 276
    .end local v3    # "q":I
    .end local v8    # "psize":I
    .end local v9    # "qsize":I
    :cond_b
    move-object v11, v0

    iget-object v11, v11, Lgnu/xquery/util/OrderedTuples;->next:[I

    move v12, v5

    const/4 v13, -0x1

    aput v13, v11, v12

    .line 279
    move v11, v7

    const/4 v12, 0x1

    if-gt v11, v12, :cond_c

    .line 280
    move v11, v1

    move v0, v11

    goto/16 :goto_0

    .line 283
    :cond_c
    move v11, v6

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    move v6, v11

    goto/16 :goto_2
.end method

.method public run$X(Lgnu/mapping/CallContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/OrderedTuples;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/xquery/util/OrderedTuples;->listsort(I)I

    move-result v3

    iput v3, v2, Lgnu/xquery/util/OrderedTuples;->first:I

    .line 80
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xquery/util/OrderedTuples;->emit(Lgnu/mapping/CallContext;)V

    .line 81
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/OrderedTuples;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/util/OrderedTuples;->n:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 56
    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lgnu/xquery/util/OrderedTuples;->n:I

    mul-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 57
    .local v2, "tmp":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/xquery/util/OrderedTuples;->n:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    .line 60
    .end local v2    # "tmp":[Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/xquery/util/OrderedTuples;->n:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/xquery/util/OrderedTuples;->n:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 61
    return-void
.end method
