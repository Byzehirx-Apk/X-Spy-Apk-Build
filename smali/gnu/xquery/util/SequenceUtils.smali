.class public Lgnu/xquery/util/SequenceUtils;
.super Ljava/lang/Object;
.source "SequenceUtils.java"


# static fields
.field public static final textOrElement:Lgnu/kawa/xml/NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 163
    new-instance v0, Lgnu/kawa/xml/NodeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "element-or-text"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/xquery/util/SequenceUtils;->textOrElement:Lgnu/kawa/xml/NodeType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/SequenceUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "functionName":Ljava/lang/String;
    move v2, p2

    .local v2, "iarg":I
    move-object v3, v0

    invoke-static {v3}, Lgnu/xquery/util/SequenceUtils;->isZeroOrOne(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0

    .line 23
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move v6, v2

    move-object v7, v0

    const-string/jumbo v8, "xs:item()?"

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v3
.end method

.method public static deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z
    .locals 25

    .prologue
    .line 188
    move-object/from16 v2, p0

    .local v2, "seq1":Lgnu/xml/NodeTree;
    move/from16 v3, p1

    .local v3, "ipos1":I
    move-object/from16 v4, p2

    .local v4, "seq2":Lgnu/xml/NodeTree;
    move/from16 v5, p3

    .local v5, "ipos2":I
    move-object/from16 v6, p4

    .local v6, "collator":Lgnu/xquery/util/NamedCollator;
    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v20

    move/from16 v7, v20

    .line 189
    .local v7, "kind1":I
    move-object/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v20

    move/from16 v8, v20

    .line 190
    .local v8, "kind2":I
    move/from16 v20, v7

    packed-switch v20, :pswitch_data_0

    .line 244
    :pswitch_0
    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 245
    const/16 v20, 0x0

    move/from16 v2, v20

    .line 246
    .end local v2    # "seq1":Lgnu/xml/NodeTree;
    :goto_0
    return v2

    .line 193
    .restart local v2    # "seq1":Lgnu/xml/NodeTree;
    :pswitch_1
    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 194
    const/16 v20, 0x0

    move/from16 v2, v20

    goto :goto_0

    .line 196
    :cond_0
    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    .line 197
    .local v9, "loc1":Ljava/lang/String;
    move-object/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    .line 198
    .local v10, "loc2":Ljava/lang/String;
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 199
    const/16 v20, 0x0

    move/from16 v2, v20

    goto :goto_0

    .line 200
    :cond_1
    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    .line 201
    .local v11, "ns1":Ljava/lang/String;
    move-object/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    .line 202
    .local v12, "ns2":Ljava/lang/String;
    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 203
    const/16 v20, 0x0

    move/from16 v2, v20

    goto :goto_0

    .line 204
    :cond_2
    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->firstAttributePos(I)I

    move-result v20

    move/from16 v13, v20

    .line 205
    .local v13, "attr1":I
    const/16 v20, 0x0

    move/from16 v14, v20

    .line 208
    .local v14, "nattr1":I
    :goto_1
    move/from16 v20, v13

    if-eqz v20, :cond_3

    move-object/from16 v20, v2

    move/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v20

    const/16 v21, 0x23

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 210
    .line 223
    :cond_3
    move-object/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->getAttributeCount(I)I

    move-result v20

    move/from16 v15, v20

    .line 224
    .local v15, "nattr2":I
    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 225
    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    .line 211
    .end local v15    # "nattr2":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 212
    move-object/from16 v20, v2

    move/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, v20

    .line 213
    .local v15, "local":Ljava/lang/String;
    move-object/from16 v20, v2

    move/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    .line 214
    .local v16, "ns":Ljava/lang/String;
    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v16

    move-object/from16 v23, v15

    invoke-virtual/range {v20 .. v23}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    move/from16 v17, v20

    .line 215
    .local v17, "attr2":I
    move/from16 v20, v17

    if-nez v20, :cond_5

    .line 216
    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    .line 217
    :cond_5
    move-object/from16 v20, v2

    move/from16 v21, v13

    invoke-static/range {v20 .. v21}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v20

    .line 218
    .local v18, "aval1":Ljava/lang/String;
    move-object/from16 v20, v4

    move/from16 v21, v17

    invoke-static/range {v20 .. v21}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v19, v20

    .line 219
    .local v19, "aval2":Ljava/lang/String;
    move-object/from16 v20, v18

    move-object/from16 v21, v19

    move-object/from16 v22, v6

    invoke-static/range {v20 .. v22}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 220
    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    .line 221
    :cond_6
    move-object/from16 v20, v2

    move/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result v20

    move/from16 v13, v20

    .line 222
    goto/16 :goto_1

    .line 228
    .end local v9    # "loc1":Ljava/lang/String;
    .end local v10    # "loc2":Ljava/lang/String;
    .end local v11    # "ns1":Ljava/lang/String;
    .end local v12    # "ns2":Ljava/lang/String;
    .end local v13    # "attr1":I
    .end local v14    # "nattr1":I
    .end local v15    # "local":Ljava/lang/String;
    .end local v16    # "ns":Ljava/lang/String;
    .end local v17    # "attr2":I
    .end local v18    # "aval1":Ljava/lang/String;
    .end local v19    # "aval2":Ljava/lang/String;
    :cond_7
    :pswitch_2
    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    invoke-static/range {v20 .. v24}, Lgnu/xquery/util/SequenceUtils;->deepEqualChildren(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v20

    move/from16 v2, v20

    goto/16 :goto_0

    .line 230
    :pswitch_3
    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v4

    move/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v4

    move/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 232
    :cond_8
    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    .line 233
    :cond_9
    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v4

    move/from16 v22, v5

    invoke-static/range {v21 .. v22}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v6

    invoke-static/range {v20 .. v22}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v20

    move/from16 v2, v20

    goto/16 :goto_0

    .line 237
    :pswitch_4
    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v4

    move/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 238
    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    .line 239
    :cond_a
    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v4

    move/from16 v22, v5

    invoke-static/range {v21 .. v22}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v2, v20

    goto/16 :goto_0

    .line 246
    :cond_b
    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v4

    move/from16 v22, v5

    invoke-static/range {v21 .. v22}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v2, v20

    goto/16 :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static deepEqual(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 20

    .prologue
    .line 262
    move-object/from16 v1, p0

    .local v1, "arg1":Ljava/lang/Object;
    move-object/from16 v2, p1

    .local v2, "arg2":Ljava/lang/Object;
    move-object/from16 v3, p2

    .local v3, "collator":Lgnu/xquery/util/NamedCollator;
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 263
    const/4 v15, 0x1

    move v1, v15

    .line 315
    .end local v1    # "arg1":Ljava/lang/Object;
    :goto_0
    return v1

    .line 264
    .restart local v1    # "arg1":Ljava/lang/Object;
    :cond_0
    move-object v15, v1

    if-eqz v15, :cond_1

    move-object v15, v1

    sget-object v16, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 265
    :cond_1
    move-object v15, v2

    if-eqz v15, :cond_2

    move-object v15, v2

    sget-object v16, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    :cond_2
    const/4 v15, 0x1

    :goto_1
    move v1, v15

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 266
    :cond_4
    move-object v15, v2

    if-eqz v15, :cond_5

    move-object v15, v2

    sget-object v16, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 267
    :cond_5
    const/4 v15, 0x0

    move v1, v15

    goto :goto_0

    .line 268
    :cond_6
    const/4 v15, 0x1

    move v4, v15

    .local v4, "ipos1":I
    const/4 v15, 0x1

    move v5, v15

    .line 269
    .local v5, "ipos2":I
    move-object v15, v1

    instance-of v15, v15, Lgnu/mapping/Values;

    move v6, v15

    .line 270
    .local v6, "is1seq":Z
    move-object v15, v2

    instance-of v15, v15, Lgnu/mapping/Values;

    move v7, v15

    .line 271
    .local v7, "is2seq":Z
    move v15, v6

    if-eqz v15, :cond_c

    move-object v15, v1

    check-cast v15, Lgnu/mapping/Values;

    :goto_2
    move-object v8, v15

    .line 272
    .local v8, "vals1":Lgnu/mapping/Values;
    move v15, v7

    if-eqz v15, :cond_d

    move-object v15, v2

    check-cast v15, Lgnu/mapping/Values;

    :goto_3
    move-object v9, v15

    .line 273
    .local v9, "vals2":Lgnu/mapping/Values;
    const/4 v15, 0x1

    move v10, v15

    .line 276
    .local v10, "first":Z
    :goto_4
    move v15, v6

    if-eqz v15, :cond_8

    .line 278
    move v15, v10

    if-eqz v15, :cond_7

    .line 279
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/mapping/Values;->startPos()I

    move-result v15

    move v4, v15

    .line 280
    :cond_7
    move-object v15, v8

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v15

    move v4, v15

    .line 282
    :cond_8
    move v15, v7

    if-eqz v15, :cond_a

    .line 284
    move v15, v10

    if-eqz v15, :cond_9

    .line 285
    move-object v15, v9

    invoke-virtual {v15}, Lgnu/mapping/Values;->startPos()I

    move-result v15

    move v5, v15

    .line 286
    :cond_9
    move-object v15, v9

    move/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v15

    move v5, v15

    .line 288
    :cond_a
    move v15, v4

    if-eqz v15, :cond_b

    move v15, v5

    if-nez v15, :cond_f

    .line 289
    :cond_b
    move v15, v4

    move/from16 v16, v5

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    const/4 v15, 0x1

    :goto_5
    move v1, v15

    goto :goto_0

    .line 271
    .end local v8    # "vals1":Lgnu/mapping/Values;
    .end local v9    # "vals2":Lgnu/mapping/Values;
    .end local v10    # "first":Z
    :cond_c
    const/4 v15, 0x0

    goto :goto_2

    .line 272
    .restart local v8    # "vals1":Lgnu/mapping/Values;
    :cond_d
    const/4 v15, 0x0

    goto :goto_3

    .line 289
    .restart local v9    # "vals2":Lgnu/mapping/Values;
    .restart local v10    # "first":Z
    :cond_e
    const/4 v15, 0x0

    goto :goto_5

    .line 290
    :cond_f
    move v15, v6

    if-eqz v15, :cond_10

    move-object v15, v8

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v15

    :goto_6
    move-object v11, v15

    .line 291
    .local v11, "item1":Ljava/lang/Object;
    move v15, v7

    if-eqz v15, :cond_11

    move-object v15, v9

    move/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v15

    :goto_7
    move-object v12, v15

    .line 293
    .local v12, "item2":Ljava/lang/Object;
    move-object v15, v11

    instance-of v15, v15, Lgnu/kawa/xml/KNode;

    if-nez v15, :cond_15

    move-object v15, v12

    instance-of v15, v15, Lgnu/kawa/xml/KNode;

    if-nez v15, :cond_15

    .line 297
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :try_start_0
    invoke-static/range {v15 .. v17}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-nez v15, :cond_12

    .line 298
    const/4 v15, 0x0

    move v1, v15

    goto/16 :goto_0

    .line 290
    .end local v11    # "item1":Ljava/lang/Object;
    .end local v12    # "item2":Ljava/lang/Object;
    :cond_10
    move-object v15, v1

    goto :goto_6

    .line 291
    .restart local v11    # "item1":Ljava/lang/Object;
    :cond_11
    move-object v15, v2

    goto :goto_7

    .line 303
    .line 317
    .restart local v12    # "item2":Ljava/lang/Object;
    :cond_12
    :goto_8
    move v15, v10

    if-eqz v15, :cond_14

    .line 319
    const/4 v15, 0x0

    move v10, v15

    .line 320
    move v15, v6

    if-nez v15, :cond_13

    .line 321
    const/4 v15, 0x0

    move v4, v15

    .line 322
    :cond_13
    move v15, v7

    if-nez v15, :cond_14

    .line 323
    const/4 v15, 0x0

    move v5, v15

    .line 325
    :cond_14
    goto :goto_4

    .line 300
    :catch_0
    move-exception v15

    move-object v13, v15

    .line 302
    .local v13, "ex":Ljava/lang/Throwable;
    const/4 v15, 0x0

    move v1, v15

    goto/16 :goto_0

    .line 305
    .end local v13    # "ex":Ljava/lang/Throwable;
    :cond_15
    move-object v15, v11

    instance-of v15, v15, Lgnu/kawa/xml/KNode;

    if-eqz v15, :cond_17

    move-object v15, v12

    instance-of v15, v15, Lgnu/kawa/xml/KNode;

    if-eqz v15, :cond_17

    .line 307
    move-object v15, v11

    check-cast v15, Lgnu/kawa/xml/KNode;

    move-object v13, v15

    .line 308
    .local v13, "node1":Lgnu/kawa/xml/KNode;
    move-object v15, v12

    check-cast v15, Lgnu/kawa/xml/KNode;

    move-object v14, v15

    .line 309
    .local v14, "node2":Lgnu/kawa/xml/KNode;
    move-object v15, v13

    iget-object v15, v15, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v15, Lgnu/xml/NodeTree;

    move-object/from16 v16, v13

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/kawa/xml/KNode;->ipos:I

    move/from16 v16, v0

    move-object/from16 v17, v14

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object/from16 v17, v0

    check-cast v17, Lgnu/xml/NodeTree;

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/xml/KNode;->ipos:I

    move/from16 v18, v0

    move-object/from16 v19, v3

    invoke-static/range {v15 .. v19}, Lgnu/xquery/util/SequenceUtils;->deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v15

    if-nez v15, :cond_16

    .line 312
    const/4 v15, 0x0

    move v1, v15

    goto/16 :goto_0

    .line 313
    :cond_16
    goto :goto_8

    .line 315
    .end local v13    # "node1":Lgnu/kawa/xml/KNode;
    .end local v14    # "node2":Lgnu/kawa/xml/KNode;
    :cond_17
    const/4 v15, 0x0

    move v1, v15

    goto/16 :goto_0
.end method

.method public static deepEqualChildren(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z
    .locals 13

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "seq1":Lgnu/xml/NodeTree;
    move v1, p1

    .local v1, "ipos1":I
    move-object v2, p2

    .local v2, "seq2":Lgnu/xml/NodeTree;
    move/from16 v3, p3

    .local v3, "ipos2":I
    move-object/from16 v4, p4

    .local v4, "collator":Lgnu/xquery/util/NamedCollator;
    sget-object v8, Lgnu/xquery/util/SequenceUtils;->textOrElement:Lgnu/kawa/xml/NodeType;

    move-object v5, v8

    .line 171
    .local v5, "filter":Lgnu/kawa/xml/NodeType;
    move-object v8, v0

    move v9, v1

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lgnu/xml/NodeTree;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result v8

    move v6, v8

    .line 172
    .local v6, "child1":I
    move-object v8, v2

    move v9, v3

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lgnu/xml/NodeTree;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result v8

    move v7, v8

    .line 175
    .local v7, "child2":I
    :goto_0
    move v8, v6

    if-eqz v8, :cond_0

    move v8, v7

    if-nez v8, :cond_2

    .line 176
    :cond_0
    move v8, v6

    move v9, v7

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v0, v8

    .line 178
    .end local v0    # "seq1":Lgnu/xml/NodeTree;
    :goto_2
    return v0

    .line 176
    .restart local v0    # "seq1":Lgnu/xml/NodeTree;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 177
    :cond_2
    move-object v8, v0

    move v9, v6

    move-object v10, v2

    move v11, v7

    move-object v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/xquery/util/SequenceUtils;->deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 178
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2

    .line 179
    :cond_3
    move-object v8, v0

    move v9, v6

    move-object v10, v5

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v8

    move v6, v8

    .line 180
    move-object v8, v2

    move v9, v7

    move-object v10, v5

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v8

    move v7, v8

    goto :goto_0
.end method

.method public static deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 7

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "collator":Lgnu/xquery/util/NamedCollator;
    move-object v3, v0

    invoke-static {v3}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-static {v3}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    const/4 v3, 0x1

    move v0, v3

    .line 256
    .end local v0    # "arg1":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_0
    const/16 v3, 0x8

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public static exactlyOne(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 43
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static exists(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "arg":Ljava/lang/Object;
    return v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static indexOf$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;Lgnu/mapping/CallContext;)V
    .locals 13

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "seqParam":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "srchParam":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "collator":Lgnu/xquery/util/NamedCollator;
    move-object/from16 v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v3

    iget-object v8, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v4, v8

    .line 148
    .local v4, "out":Lgnu/lists/Consumer;
    move-object v8, v0

    instance-of v8, v8, Lgnu/mapping/Values;

    if-eqz v8, :cond_2

    .line 150
    move-object v8, v0

    check-cast v8, Lgnu/mapping/Values;

    move-object v5, v8

    .line 151
    .local v5, "vals":Lgnu/mapping/Values;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/mapping/Values;->startPos()I

    move-result v8

    move v6, v8

    .line 152
    .local v6, "ipos":I
    const/4 v8, 0x1

    move v7, v8

    .line 153
    .local v7, "i":I
    :goto_0
    move-object v8, v5

    move v9, v6

    invoke-virtual {v8, v9}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v8

    move v12, v8

    move v8, v12

    move v9, v12

    move v6, v9

    if-eqz v8, :cond_1

    .line 154
    const/16 v8, 0x48

    move-object v9, v5

    move v10, v6

    invoke-virtual {v9, v10}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 157
    move-object v8, v4

    move v9, v7

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 153
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 158
    .line 161
    .end local v5    # "vals":Lgnu/mapping/Values;
    .end local v6    # "ipos":I
    .end local v7    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 159
    :cond_2
    const/16 v8, 0x48

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 160
    move-object v8, v4

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->writeInt(I)V

    goto :goto_1
.end method

.method public static insertBefore$X(Ljava/lang/Object;JLjava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 19

    .prologue
    .line 59
    move-object/from16 v0, p0

    .local v0, "target":Ljava/lang/Object;
    move-wide/from16 v1, p1

    .local v1, "position":J
    move-object/from16 v3, p3

    .local v3, "inserts":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v12, v4

    iget-object v12, v12, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v5, v12

    .line 60
    .local v5, "out":Lgnu/lists/Consumer;
    const/4 v12, 0x0

    move v6, v12

    .line 61
    .local v6, "written":Z
    move-wide v12, v1

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_0

    .line 62
    const-wide/16 v12, 0x1

    move-wide v1, v12

    .line 63
    :cond_0
    move-object v12, v0

    instance-of v12, v12, Lgnu/mapping/Values;

    if-eqz v12, :cond_6

    .line 65
    move-object v12, v0

    check-cast v12, Lgnu/mapping/Values;

    move-object v7, v12

    .line 66
    .local v7, "values":Lgnu/mapping/Values;
    const/4 v12, 0x0

    move v8, v12

    .line 67
    .local v8, "ipos":I
    const-wide/16 v12, 0x0

    move-wide v9, v12

    .line 70
    .local v9, "i":J
    :goto_0
    move-object v12, v7

    move v13, v8

    invoke-virtual {v12, v13}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v12

    move v11, v12

    .line 71
    .local v11, "next":I
    move v12, v11

    if-nez v12, :cond_1

    move v12, v6

    if-eqz v12, :cond_2

    :cond_1
    move-wide v12, v9

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-wide/from16 v16, v12

    move-wide/from16 v12, v16

    move-wide/from16 v14, v16

    move-wide v9, v14

    move-wide v14, v1

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    .line 73
    :cond_2
    move-object v12, v3

    move-object v13, v5

    invoke-static {v12, v13}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 74
    const/4 v12, 0x1

    move v6, v12

    .line 76
    :cond_3
    move v12, v11

    if-nez v12, :cond_5

    .line 77
    .line 81
    .line 90
    .end local v7    # "values":Lgnu/mapping/Values;
    .end local v8    # "ipos":I
    .end local v9    # "i":J
    .end local v11    # "next":I
    :cond_4
    :goto_1
    return-void

    .line 78
    .restart local v7    # "values":Lgnu/mapping/Values;
    .restart local v8    # "ipos":I
    .restart local v9    # "i":J
    .restart local v11    # "next":I
    :cond_5
    move-object v12, v7

    move v13, v8

    move v14, v11

    move-object v15, v5

    invoke-virtual {v12, v13, v14, v15}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 79
    move v12, v11

    move v8, v12

    .line 80
    goto :goto_0

    .line 84
    .end local v7    # "values":Lgnu/mapping/Values;
    .end local v8    # "ipos":I
    .end local v9    # "i":J
    .end local v11    # "next":I
    :cond_6
    move-wide v12, v1

    const-wide/16 v14, 0x1

    cmp-long v12, v12, v14

    if-gtz v12, :cond_7

    .line 85
    move-object v12, v3

    move-object v13, v5

    invoke-static {v12, v13}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 86
    :cond_7
    move-object v12, v5

    move-object v13, v0

    invoke-interface {v12, v13}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 87
    move-wide v12, v1

    const-wide/16 v14, 0x1

    cmp-long v12, v12, v14

    if-lez v12, :cond_4

    .line 88
    move-object v12, v3

    move-object v13, v5

    invoke-static {v12, v13}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_1
.end method

.method public static isEmptySequence(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "arg":Ljava/lang/Object;
    return v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isZeroOrOne(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "arg":Ljava/lang/Object;
    return v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static oneOrMore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 35
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static remove$X(Ljava/lang/Object;JLgnu/mapping/CallContext;)V
    .locals 17

    .prologue
    .line 94
    move-object/from16 v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-wide/from16 v1, p1

    .local v1, "position":J
    move-object/from16 v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v10, v3

    iget-object v10, v10, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v4, v10

    .line 95
    .local v4, "out":Lgnu/lists/Consumer;
    move-object v10, v0

    instance-of v10, v10, Lgnu/mapping/Values;

    if-eqz v10, :cond_3

    .line 97
    move-object v10, v0

    check-cast v10, Lgnu/mapping/Values;

    move-object v5, v10

    .line 98
    .local v5, "values":Lgnu/mapping/Values;
    const/4 v10, 0x0

    move v6, v10

    .line 99
    .local v6, "ipos":I
    const-wide/16 v10, 0x0

    move-wide v7, v10

    .line 102
    .local v7, "i":J
    :goto_0
    move-object v10, v5

    move v11, v6

    invoke-virtual {v10, v11}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v10

    move v9, v10

    .line 103
    .local v9, "next":I
    move v10, v9

    if-nez v10, :cond_1

    .line 104
    .line 109
    .line 112
    .end local v5    # "values":Lgnu/mapping/Values;
    .end local v6    # "ipos":I
    .end local v7    # "i":J
    .end local v9    # "next":I
    :cond_0
    :goto_1
    return-void

    .line 105
    .restart local v5    # "values":Lgnu/mapping/Values;
    .restart local v6    # "ipos":I
    .restart local v7    # "i":J
    .restart local v9    # "next":I
    :cond_1
    move-wide v10, v7

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-wide v14, v10

    move-wide v10, v14

    move-wide v12, v14

    move-wide v7, v12

    move-wide v12, v1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 106
    move-object v10, v5

    move v11, v6

    move v12, v9

    move-object v13, v4

    invoke-virtual {v10, v11, v12, v13}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 107
    :cond_2
    move v10, v9

    move v6, v10

    .line 108
    goto :goto_0

    .line 110
    .end local v5    # "values":Lgnu/mapping/Values;
    .end local v6    # "ipos":I
    .end local v7    # "i":J
    .end local v9    # "next":I
    :cond_3
    move-wide v10, v1

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 111
    move-object v10, v4

    move-object v11, v0

    invoke-interface {v10, v11}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static reverse$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 13

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v1

    iget-object v8, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v8

    .line 118
    .local v2, "out":Lgnu/lists/Consumer;
    move-object v8, v0

    instance-of v8, v8, Lgnu/mapping/Values;

    if-nez v8, :cond_0

    .line 120
    move-object v8, v2

    move-object v9, v0

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 121
    .line 142
    :goto_0
    return-void

    .line 123
    :cond_0
    move-object v8, v0

    check-cast v8, Lgnu/mapping/Values;

    move-object v3, v8

    .line 124
    .local v3, "vals":Lgnu/mapping/Values;
    const/4 v8, 0x0

    move v4, v8

    .line 125
    .local v4, "ipos":I
    const/16 v8, 0x64

    new-array v8, v8, [I

    move-object v5, v8

    .line 126
    .local v5, "poses":[I
    const/4 v8, 0x0

    move v6, v8

    .line 129
    .local v6, "n":I
    :cond_1
    move v8, v6

    move-object v9, v5

    array-length v9, v9

    if-lt v8, v9, :cond_2

    .line 131
    const/4 v8, 0x2

    move v9, v6

    mul-int/2addr v8, v9

    new-array v8, v8, [I

    move-object v7, v8

    .line 132
    .local v7, "t":[I
    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    move v12, v6

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object v8, v7

    move-object v5, v8

    .line 135
    .end local v7    # "t":[I
    :cond_2
    move-object v8, v5

    move v9, v6

    add-int/lit8 v6, v6, 0x1

    move v10, v4

    aput v10, v8, v9

    .line 136
    move-object v8, v3

    move v9, v4

    invoke-virtual {v8, v9}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v8

    move v4, v8

    .line 137
    move v8, v4

    if-nez v8, :cond_1

    .line 138
    .line 140
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v7, v8

    .local v7, "i":I
    :goto_1
    add-int/lit8 v7, v7, -0x1

    move v8, v7

    if-ltz v8, :cond_3

    .line 141
    move-object v8, v3

    move-object v9, v5

    move v10, v7

    aget v9, v9, v10

    move-object v10, v5

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    move-object v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    goto :goto_1

    .line 142
    :cond_3
    goto :goto_0
.end method

.method public static zeroOrOne(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    const-string/jumbo v2, "zero-or-one"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method
