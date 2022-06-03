.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 3
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "cb":Landroidx/recyclerview/widget/DiffUtil$Callback;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "cb":Landroidx/recyclerview/widget/DiffUtil$Callback;
    return-object v0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 24
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    move-object/from16 v1, p0

    .local v1, "cb":Landroidx/recyclerview/widget/DiffUtil$Callback;
    move/from16 v2, p1

    .local v2, "detectMoves":Z
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v15

    move v3, v15

    .line 124
    .local v3, "oldSize":I
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v15

    move v4, v15

    .line 126
    .local v4, "newSize":I
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v15

    .line 130
    .local v5, "snakes":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Snake;>;"
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v15

    .line 132
    .local v6, "stack":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Range;>;"
    move-object v15, v6

    new-instance v16, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move/from16 v19, v3

    const/16 v20, 0x0

    move/from16 v21, v4

    invoke-direct/range {v17 .. v21}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 134
    move v15, v3

    move/from16 v16, v4

    add-int v15, v15, v16

    move/from16 v16, v3

    move/from16 v17, v4

    sub-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    move v7, v15

    .line 138
    .local v7, "max":I
    move v15, v7

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    new-array v15, v15, [I

    move-object v8, v15

    .line 139
    .local v8, "forward":[I
    move v15, v7

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    new-array v15, v15, [I

    move-object v9, v15

    .line 142
    .local v9, "backward":[I
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v15

    .line 143
    .local v10, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Range;>;"
    :goto_0
    move-object v15, v6

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 144
    move-object v15, v6

    move-object/from16 v16, v6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object v11, v15

    .line 145
    .local v11, "range":Landroidx/recyclerview/widget/DiffUtil$Range;
    move-object v15, v1

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    move/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move/from16 v19, v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v22, v7

    invoke-static/range {v15 .. v22}, Landroidx/recyclerview/widget/DiffUtil;->diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v15

    move-object v12, v15

    .line 147
    .local v12, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object v15, v12

    if-eqz v15, :cond_6

    .line 148
    move-object v15, v12

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    if-lez v15, :cond_0

    .line 149
    move-object v15, v5

    move-object/from16 v16, v12

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 152
    :cond_0
    move-object v15, v12

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 153
    move-object v15, v12

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 156
    move-object v15, v10

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    new-instance v15, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    :goto_1
    move-object v13, v15

    .line 158
    .local v13, "left":Landroidx/recyclerview/widget/DiffUtil$Range;
    move-object v15, v13

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 159
    move-object v15, v13

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 160
    move-object v15, v12

    iget-boolean v15, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v15, :cond_2

    .line 161
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 162
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 172
    :goto_2
    move-object v15, v6

    move-object/from16 v16, v13

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 176
    move-object v15, v11

    move-object v14, v15

    .line 177
    .local v14, "right":Landroidx/recyclerview/widget/DiffUtil$Range;
    move-object v15, v12

    iget-boolean v15, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v15, :cond_5

    .line 178
    move-object v15, v12

    iget-boolean v15, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v15, :cond_4

    .line 179
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 180
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 189
    :goto_3
    move-object v15, v6

    move-object/from16 v16, v14

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 190
    .line 194
    .end local v13    # "left":Landroidx/recyclerview/widget/DiffUtil$Range;
    .end local v14    # "right":Landroidx/recyclerview/widget/DiffUtil$Range;
    :goto_4
    goto/16 :goto_0

    .line 156
    :cond_1
    move-object v15, v10

    move-object/from16 v16, v10

    .line 157
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    .line 156
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/DiffUtil$Range;

    goto/16 :goto_1

    .line 164
    .restart local v13    # "left":Landroidx/recyclerview/widget/DiffUtil$Range;
    :cond_2
    move-object v15, v12

    iget-boolean v15, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v15, :cond_3

    .line 165
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 166
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto/16 :goto_2

    .line 168
    :cond_3
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 169
    move-object v15, v13

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto/16 :goto_2

    .line 182
    .restart local v14    # "right":Landroidx/recyclerview/widget/DiffUtil$Range;
    :cond_4
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 183
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto/16 :goto_3

    .line 186
    :cond_5
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 187
    move-object v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto/16 :goto_3

    .line 191
    .end local v13    # "left":Landroidx/recyclerview/widget/DiffUtil$Range;
    .end local v14    # "right":Landroidx/recyclerview/widget/DiffUtil$Range;
    :cond_6
    move-object v15, v10

    move-object/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    goto/16 :goto_4

    .line 196
    .end local v11    # "range":Landroidx/recyclerview/widget/DiffUtil$Range;
    .end local v12    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :cond_7
    move-object v15, v5

    sget-object v16, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    new-instance v15, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v2

    invoke-direct/range {v16 .. v21}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    move-object v1, v15

    .end local v1    # "cb":Landroidx/recyclerview/widget/DiffUtil$Callback;
    return-object v1
.end method

.method private static diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 28

    .prologue
    .line 204
    move-object/from16 v2, p0

    .local v2, "cb":Landroidx/recyclerview/widget/DiffUtil$Callback;
    move/from16 v3, p1

    .local v3, "startOld":I
    move/from16 v4, p2

    .local v4, "endOld":I
    move/from16 v5, p3

    .local v5, "startNew":I
    move/from16 v6, p4

    .local v6, "endNew":I
    move-object/from16 v7, p5

    .local v7, "forward":[I
    move-object/from16 v8, p6

    .local v8, "backward":[I
    move/from16 v9, p7

    .local v9, "kOffset":I
    move/from16 v22, v4

    move/from16 v23, v3

    sub-int v22, v22, v23

    move/from16 v10, v22

    .line 205
    .local v10, "oldSize":I
    move/from16 v22, v6

    move/from16 v23, v5

    sub-int v22, v22, v23

    move/from16 v11, v22

    .line 207
    .local v11, "newSize":I
    move/from16 v22, v4

    move/from16 v23, v3

    sub-int v22, v22, v23

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move/from16 v22, v6

    move/from16 v23, v5

    sub-int v22, v22, v23

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 208
    :cond_0
    const/16 v22, 0x0

    move-object/from16 v2, v22

    .line 282
    .end local v2    # "cb":Landroidx/recyclerview/widget/DiffUtil$Callback;
    :goto_0
    return-object v2

    .line 211
    .restart local v2    # "cb":Landroidx/recyclerview/widget/DiffUtil$Callback;
    :cond_1
    move/from16 v22, v10

    move/from16 v23, v11

    sub-int v22, v22, v23

    move/from16 v12, v22

    .line 212
    .local v12, "delta":I
    move/from16 v22, v10

    move/from16 v23, v11

    add-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x2

    div-int/lit8 v22, v22, 0x2

    move/from16 v13, v22

    .line 213
    .local v13, "dLimit":I
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v13

    sub-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v24, v9

    move/from16 v25, v13

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Ljava/util/Arrays;->fill([IIII)V

    .line 214
    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v13

    sub-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v24, v12

    add-int v23, v23, v24

    move/from16 v24, v9

    move/from16 v25, v13

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v25, v12

    add-int v24, v24, v25

    move/from16 v25, v10

    invoke-static/range {v22 .. v25}, Ljava/util/Arrays;->fill([IIII)V

    .line 215
    move/from16 v22, v12

    const/16 v23, 0x2

    rem-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_3

    const/16 v22, 0x1

    :goto_1
    move/from16 v14, v22

    .line 216
    .local v14, "checkInFwd":Z
    const/16 v22, 0x0

    move/from16 v15, v22

    .local v15, "d":I
    :goto_2
    move/from16 v22, v15

    move/from16 v23, v13

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_d

    .line 217
    move/from16 v22, v15

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v16, v22

    .local v16, "k":I
    :goto_3
    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_7

    .line 222
    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v16

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move-object/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v16

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 223
    :cond_2
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v16

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    move/from16 v17, v22

    .line 224
    .local v17, "x":I
    const/16 v22, 0x0

    move/from16 v18, v22

    .line 230
    .local v18, "removal":Z
    :goto_4
    move/from16 v22, v17

    move/from16 v23, v16

    sub-int v22, v22, v23

    move/from16 v19, v22

    .line 232
    .local v19, "y":I
    :goto_5
    move/from16 v22, v17

    move/from16 v23, v10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    move/from16 v22, v19

    move/from16 v23, v11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v24, v5

    move/from16 v25, v19

    add-int v24, v24, v25

    .line 233
    invoke-virtual/range {v22 .. v24}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 234
    add-int/lit8 v17, v17, 0x1

    .line 235
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 215
    .end local v14    # "checkInFwd":Z
    .end local v15    # "d":I
    .end local v16    # "k":I
    .end local v17    # "x":I
    .end local v18    # "removal":Z
    .end local v19    # "y":I
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 226
    .restart local v14    # "checkInFwd":Z
    .restart local v15    # "d":I
    .restart local v16    # "k":I
    :cond_4
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v16

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v17, v22

    .line 227
    .restart local v17    # "x":I
    const/16 v22, 0x1

    move/from16 v18, v22

    .restart local v18    # "removal":Z
    goto :goto_4

    .line 237
    .restart local v19    # "y":I
    :cond_5
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v16

    add-int v23, v23, v24

    move/from16 v24, v17

    aput v24, v22, v23

    .line 238
    move/from16 v22, v14

    if-eqz v22, :cond_6

    move/from16 v22, v16

    move/from16 v23, v12

    move/from16 v24, v15

    sub-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    move/from16 v22, v16

    move/from16 v23, v12

    move/from16 v24, v15

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_6

    .line 239
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v16

    add-int v23, v23, v24

    aget v22, v22, v23

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v16

    add-int v24, v24, v25

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 240
    new-instance v22, Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    move-object/from16 v20, v22

    .line 241
    .local v20, "outSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object/from16 v22, v20

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v16

    add-int v24, v24, v25

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 242
    move-object/from16 v22, v20

    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v23, v0

    move/from16 v24, v16

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 243
    move-object/from16 v22, v20

    move-object/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v16

    add-int v24, v24, v25

    aget v23, v23, v24

    move-object/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v16

    add-int v25, v25, v26

    aget v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 244
    move-object/from16 v22, v20

    move/from16 v23, v18

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    .line 245
    move-object/from16 v22, v20

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 246
    move-object/from16 v22, v20

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 217
    .end local v20    # "outSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :cond_6
    add-int/lit8 v16, v16, 0x2

    goto/16 :goto_3

    .line 250
    .end local v17    # "x":I
    .end local v18    # "removal":Z
    .end local v19    # "y":I
    :cond_7
    move/from16 v22, v15

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v16, v22

    :goto_6
    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_c

    .line 252
    move/from16 v22, v16

    move/from16 v23, v12

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 255
    .local v17, "backwardK":I
    move/from16 v22, v17

    move/from16 v23, v15

    move/from16 v24, v12

    add-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    move/from16 v22, v17

    move/from16 v23, v15

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v24, v12

    add-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 257
    :cond_8
    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move/from16 v18, v22

    .line 258
    .local v18, "x":I
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 265
    .local v19, "removal":Z
    :goto_7
    move/from16 v22, v18

    move/from16 v23, v17

    sub-int v22, v22, v23

    move/from16 v20, v22

    .line 267
    .local v20, "y":I
    :goto_8
    move/from16 v22, v18

    if-lez v22, :cond_a

    move/from16 v22, v20

    if-lez v22, :cond_a

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v18

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v24, v5

    move/from16 v25, v20

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    .line 268
    invoke-virtual/range {v22 .. v24}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 269
    add-int/lit8 v18, v18, -0x1

    .line 270
    add-int/lit8 v20, v20, -0x1

    goto :goto_8

    .line 260
    .end local v18    # "x":I
    .end local v19    # "removal":Z
    .end local v20    # "y":I
    :cond_9
    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v18, v22

    .line 261
    .restart local v18    # "x":I
    const/16 v22, 0x1

    move/from16 v19, v22

    .restart local v19    # "removal":Z
    goto :goto_7

    .line 272
    .restart local v20    # "y":I
    :cond_a
    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v24, v18

    aput v24, v22, v23

    .line 273
    move/from16 v22, v14

    if-nez v22, :cond_b

    move/from16 v22, v16

    move/from16 v23, v12

    add-int v22, v22, v23

    move/from16 v23, v15

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    move/from16 v22, v16

    move/from16 v23, v12

    add-int v22, v22, v23

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    .line 274
    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v17

    add-int v23, v23, v24

    aget v22, v22, v23

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    add-int v24, v24, v25

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    .line 275
    new-instance v22, Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    move-object/from16 v21, v22

    .line 276
    .local v21, "outSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object/from16 v22, v21

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v17

    add-int v24, v24, v25

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 277
    move-object/from16 v22, v21

    move-object/from16 v23, v21

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v23, v0

    move/from16 v24, v17

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 278
    move-object/from16 v22, v21

    move-object/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v17

    add-int v24, v24, v25

    aget v23, v23, v24

    move-object/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v17

    add-int v25, v25, v26

    aget v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 280
    move-object/from16 v22, v21

    move/from16 v23, v19

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    .line 281
    move-object/from16 v22, v21

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 282
    move-object/from16 v22, v21

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 250
    .end local v21    # "outSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :cond_b
    add-int/lit8 v16, v16, 0x2

    goto/16 :goto_6

    .line 216
    .end local v17    # "backwardK":I
    .end local v18    # "x":I
    .end local v19    # "removal":Z
    .end local v20    # "y":I
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 287
    .end local v16    # "k":I
    :cond_d
    new-instance v22, Ljava/lang/IllegalStateException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const-string/jumbo v24, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
.end method
