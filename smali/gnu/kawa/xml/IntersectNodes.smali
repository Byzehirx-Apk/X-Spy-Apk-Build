.class public Lgnu/kawa/xml/IntersectNodes;
.super Lgnu/mapping/Procedure2;
.source "IntersectNodes.java"


# static fields
.field public static final exceptNodes:Lgnu/kawa/xml/IntersectNodes;

.field public static final intersectNodes:Lgnu/kawa/xml/IntersectNodes;


# instance fields
.field isExcept:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lgnu/kawa/xml/IntersectNodes;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/kawa/xml/IntersectNodes;-><init>(Z)V

    sput-object v0, Lgnu/kawa/xml/IntersectNodes;->intersectNodes:Lgnu/kawa/xml/IntersectNodes;

    .line 19
    new-instance v0, Lgnu/kawa/xml/IntersectNodes;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lgnu/kawa/xml/IntersectNodes;-><init>(Z)V

    sput-object v0, Lgnu/kawa/xml/IntersectNodes;->exceptNodes:Lgnu/kawa/xml/IntersectNodes;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/IntersectNodes;
    move v1, p1

    .local v1, "isExcept":Z
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Procedure2;-><init>()V

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/kawa/xml/IntersectNodes;->isExcept:Z

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .prologue
    .line 26
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/xml/IntersectNodes;
    move-object/from16 v1, p1

    .local v1, "vals1":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "vals2":Ljava/lang/Object;
    new-instance v13, Lgnu/kawa/xml/SortedNodes;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    move-object v3, v13

    .line 27
    .local v3, "nodes1":Lgnu/kawa/xml/SortedNodes;
    new-instance v13, Lgnu/kawa/xml/SortedNodes;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    move-object v4, v13

    .line 28
    .local v4, "nodes2":Lgnu/kawa/xml/SortedNodes;
    new-instance v13, Lgnu/kawa/xml/SortedNodes;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    move-object v5, v13

    .line 30
    .local v5, "result":Lgnu/kawa/xml/SortedNodes;
    move-object v13, v1

    move-object v14, v3

    invoke-static {v13, v14}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 31
    move-object v13, v2

    move-object v14, v4

    invoke-static {v13, v14}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 32
    const/4 v13, 0x0

    move v6, v13

    .line 34
    .local v6, "i2":I
    const/4 v13, 0x0

    move-object v7, v13

    .line 35
    .local v7, "seq2":Lgnu/lists/AbstractSequence;
    const/4 v13, 0x0

    move v8, v13

    .line 39
    .local v8, "ipos2":I
    const/4 v13, 0x0

    move v9, v13

    .line 41
    .local v9, "cmp":I
    const/4 v13, 0x0

    move v10, v13

    .line 43
    .local v10, "i1":I
    :goto_0
    move-object v13, v3

    move v14, v10

    invoke-virtual {v13, v14}, Lgnu/kawa/xml/SortedNodes;->getSeq(I)Lgnu/lists/AbstractSequence;

    move-result-object v13

    move-object v11, v13

    .line 44
    .local v11, "seq1":Lgnu/lists/AbstractSequence;
    move-object v13, v11

    if-nez v13, :cond_0

    .line 45
    .line 77
    move-object v13, v5

    move-object v0, v13

    .end local v0    # "this":Lgnu/kawa/xml/IntersectNodes;
    return-object v0

    .line 46
    .restart local v0    # "this":Lgnu/kawa/xml/IntersectNodes;
    :cond_0
    move-object v13, v3

    move v14, v10

    invoke-virtual {v13, v14}, Lgnu/kawa/xml/SortedNodes;->getPos(I)I

    move-result v13

    move v12, v13

    .line 53
    .local v12, "ipos1":I
    move v13, v9

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 54
    move-object v13, v11

    move v14, v12

    move-object v15, v7

    move/from16 v16, v8

    invoke-static/range {v13 .. v16}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v13

    move v9, v13

    .line 58
    :cond_1
    :goto_1
    move v13, v9

    if-lez v13, :cond_2

    .line 60
    move-object v13, v4

    move v14, v6

    invoke-virtual {v13, v14}, Lgnu/kawa/xml/SortedNodes;->getSeq(I)Lgnu/lists/AbstractSequence;

    move-result-object v13

    move-object v7, v13

    .line 61
    move-object v13, v7

    if-nez v13, :cond_5

    .line 63
    const/4 v13, -0x2

    move v9, v13

    .line 73
    :cond_2
    move v13, v9

    if-nez v13, :cond_6

    const/4 v13, 0x1

    :goto_2
    move-object v14, v0

    iget-boolean v14, v14, Lgnu/kawa/xml/IntersectNodes;->isExcept:Z

    if-eq v13, v14, :cond_3

    .line 74
    move-object v13, v5

    move-object v14, v11

    move v15, v12

    invoke-virtual {v13, v14, v15}, Lgnu/kawa/xml/SortedNodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 41
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 55
    :cond_4
    move v13, v9

    if-nez v13, :cond_1

    .line 56
    const/4 v13, 0x1

    move v9, v13

    goto :goto_1

    .line 68
    :cond_5
    move-object v13, v4

    move v14, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v13, v14}, Lgnu/kawa/xml/SortedNodes;->getPos(I)I

    move-result v13

    move v8, v13

    .line 69
    move-object v13, v11

    move v14, v12

    move-object v15, v7

    move/from16 v16, v8

    invoke-static/range {v13 .. v16}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v13

    move v9, v13

    goto :goto_1

    .line 73
    :cond_6
    const/4 v13, 0x0

    goto :goto_2
.end method
