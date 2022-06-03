.class Landroidx/customview/widget/FocusStrategy;
.super Ljava/lang/Object;
.source "FocusStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/FocusStrategy$CollectionAdapter;,
        Landroidx/customview/widget/FocusStrategy$BoundsAdapter;,
        Landroidx/customview/widget/FocusStrategy$SequentialComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/FocusStrategy;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 455
    return-void
.end method

.method private static beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 10
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    move v0, p0

    .local v0, "direction":I
    move-object v1, p1

    .local v1, "source":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "rect1":Landroid/graphics/Rect;
    move-object v3, p3

    .local v3, "rect2":Landroid/graphics/Rect;
    move v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-static {v6, v7, v8}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    move v4, v6

    .line 244
    .local v4, "rect1InSrcBeam":Z
    move v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    move v5, v6

    .line 247
    .local v5, "rect2InSrcBeam":Z
    move v6, v5

    if-nez v6, :cond_0

    move v6, v4

    if-nez v6, :cond_1

    .line 248
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 272
    .end local v0    # "direction":I
    :goto_0
    return v0

    .line 257
    .restart local v0    # "direction":I
    :cond_1
    move v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroidx/customview/widget/FocusStrategy;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 258
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 263
    :cond_2
    move v6, v0

    const/16 v7, 0x11

    if-eq v6, v7, :cond_3

    move v6, v0

    const/16 v7, 0x42

    if-ne v6, v7, :cond_4

    .line 264
    :cond_3
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 271
    :cond_4
    move v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-static {v6, v7, v8}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v6

    move v7, v0

    move-object v8, v1

    move-object v9, v3

    .line 272
    invoke-static {v7, v8, v9}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v7

    if-ge v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 326
    move v0, p0

    .local v0, "direction":I
    move-object v1, p1

    .local v1, "rect1":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "rect2":Landroid/graphics/Rect;
    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 334
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 329
    :sswitch_0
    move-object v3, v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_0

    move-object v3, v2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 332
    .end local v0    # "direction":I
    :goto_1
    return v0

    .line 329
    .restart local v0    # "direction":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 332
    :sswitch_1
    move-object v3, v2

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_1

    move-object v3, v2

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public static findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
    .locals 17
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/customview/widget/FocusStrategy$CollectionAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter",
            "<T",
            "L;",
            "TT;>;",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;TT;",
            "Landroid/graphics/Rect;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 145
    move-object/from16 v0, p0

    .local v0, "focusables":Ljava/lang/Object;, "TL;"
    move-object/from16 v1, p1

    .local v1, "collectionAdapter":Landroidx/customview/widget/FocusStrategy$CollectionAdapter;, "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<TL;TT;>;"
    move-object/from16 v2, p2

    .local v2, "adapter":Landroidx/customview/widget/FocusStrategy$BoundsAdapter;, "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<TT;>;"
    move-object/from16 v3, p3

    .local v3, "focused":Ljava/lang/Object;, "TT;"
    move-object/from16 v4, p4

    .local v4, "focusedRect":Landroid/graphics/Rect;
    move/from16 v5, p5

    .local v5, "direction":I
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v4

    invoke-direct {v13, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v6, v12

    .line 147
    .local v6, "bestCandidateRect":Landroid/graphics/Rect;
    move v12, v5

    sparse-switch v12, :sswitch_data_0

    .line 161
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 149
    :sswitch_0
    move-object v12, v6

    move-object v13, v4

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 150
    .line 165
    :goto_0
    const/4 v12, 0x0

    move-object v7, v12

    .line 167
    .local v7, "closest":Ljava/lang/Object;, "TT;"
    move-object v12, v1

    move-object v13, v0

    invoke-interface {v12, v13}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v12

    move v8, v12

    .line 168
    .local v8, "count":I
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v12

    .line 169
    .local v9, "focusableRect":Landroid/graphics/Rect;
    const/4 v12, 0x0

    move v10, v12

    .end local v7    # "closest":Ljava/lang/Object;, "TT;"
    .local v10, "i":I
    :goto_1
    move v12, v10

    move v13, v8

    if-ge v12, v13, :cond_2

    .line 170
    move-object v12, v1

    move-object v13, v0

    move v14, v10

    invoke-interface {v12, v13, v14}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    .line 171
    .local v11, "focusable":Ljava/lang/Object;, "TT;"
    move-object v12, v11

    move-object v13, v3

    if-ne v12, v13, :cond_1

    .line 172
    .line 169
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 152
    .end local v8    # "count":I
    .end local v9    # "focusableRect":Landroid/graphics/Rect;
    .end local v10    # "i":I
    .end local v11    # "focusable":Ljava/lang/Object;, "TT;"
    :sswitch_1
    move-object v12, v6

    move-object v13, v4

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    neg-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 153
    goto :goto_0

    .line 155
    :sswitch_2
    move-object v12, v6

    const/4 v13, 0x0

    move-object v14, v4

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 156
    goto :goto_0

    .line 158
    :sswitch_3
    move-object v12, v6

    const/4 v13, 0x0

    move-object v14, v4

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    neg-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 159
    goto :goto_0

    .line 176
    .restart local v8    # "count":I
    .restart local v9    # "focusableRect":Landroid/graphics/Rect;
    .restart local v10    # "i":I
    .restart local v11    # "focusable":Ljava/lang/Object;, "TT;"
    :cond_1
    move-object v12, v2

    move-object v13, v11

    move-object v14, v9

    invoke-interface {v12, v13, v14}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 177
    move v12, v5

    move-object v13, v4

    move-object v14, v9

    move-object v15, v6

    invoke-static {v12, v13, v14, v15}, Landroidx/customview/widget/FocusStrategy;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 178
    move-object v12, v6

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 179
    move-object v12, v11

    move-object v7, v12

    .restart local v7    # "closest":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 183
    .end local v7    # "closest":Ljava/lang/Object;, "TT;"
    .end local v11    # "focusable":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object v12, v7

    move-object v0, v12

    .end local v0    # "focusables":Ljava/lang/Object;, "TL;"
    return-object v0

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public static findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;
    .locals 15
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/customview/widget/FocusStrategy$CollectionAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter",
            "<T",
            "L;",
            "TT;>;",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;TT;IZZ)TT;"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "focusables":Ljava/lang/Object;, "TL;"
    move-object/from16 v1, p1

    .local v1, "collectionAdapter":Landroidx/customview/widget/FocusStrategy$CollectionAdapter;, "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<TL;TT;>;"
    move-object/from16 v2, p2

    .local v2, "adapter":Landroidx/customview/widget/FocusStrategy$BoundsAdapter;, "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<TT;>;"
    move-object/from16 v3, p3

    .local v3, "focused":Ljava/lang/Object;, "TT;"
    move/from16 v4, p4

    .local v4, "direction":I
    move/from16 v5, p5

    .local v5, "isLayoutRtl":Z
    move/from16 v6, p6

    .local v6, "wrap":Z
    move-object v10, v1

    move-object v11, v0

    invoke-interface {v10, v11}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v10

    move v7, v10

    .line 41
    .local v7, "count":I
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v7

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v10

    .line 42
    .local v8, "sortedFocusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_0
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 43
    move-object v10, v8

    move-object v11, v1

    move-object v12, v0

    move v13, v9

    invoke-interface {v11, v12, v13}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 42
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 46
    :cond_0
    new-instance v10, Landroidx/customview/widget/FocusStrategy$SequentialComparator;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v5

    move-object v13, v2

    invoke-direct {v11, v12, v13}, Landroidx/customview/widget/FocusStrategy$SequentialComparator;-><init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V

    move-object v9, v10

    .line 47
    .local v9, "comparator":Landroidx/customview/widget/FocusStrategy$SequentialComparator;, "Landroidx/customview/widget/FocusStrategy$SequentialComparator<TT;>;"
    move-object v10, v8

    move-object v11, v9

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    move v10, v4

    packed-switch v10, :pswitch_data_0

    .line 55
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 51
    :pswitch_0
    move-object v10, v3

    move-object v11, v8

    move v12, v6

    invoke-static {v10, v11, v12}, Landroidx/customview/widget/FocusStrategy;->getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    .line 53
    .end local v0    # "focusables":Ljava/lang/Object;, "TL;"
    :goto_1
    return-object v0

    .restart local v0    # "focusables":Ljava/lang/Object;, "TL;"
    :pswitch_1
    move-object v10, v3

    move-object v11, v8

    move v12, v6

    invoke-static {v10, v11, v12}, Landroidx/customview/widget/FocusStrategy;->getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "focused":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v2, p2

    .local v2, "wrap":Z
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 65
    .local v3, "count":I
    move-object v5, v0

    if-nez v5, :cond_0

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    .line 66
    .local v4, "position":I
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 67
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .line 71
    .end local v0    # "focused":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v0

    .line 65
    .end local v4    # "position":I
    .restart local v0    # "focused":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v5

    goto :goto_0

    .line 68
    .restart local v4    # "position":I
    :cond_1
    move v5, v2

    if-eqz v5, :cond_2

    move v5, v3

    if-lez v5, :cond_2

    .line 69
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 71
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method private static getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "focused":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v2, p2

    .local v2, "wrap":Z
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 80
    .local v3, "count":I
    move-object v5, v0

    if-nez v5, :cond_0

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .line 81
    .local v4, "position":I
    move v5, v4

    if-ltz v5, :cond_1

    .line 82
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .line 86
    .end local v0    # "focused":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v0

    .line 80
    .end local v4    # "position":I
    .restart local v0    # "focused":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    goto :goto_0

    .line 83
    .restart local v4    # "position":I
    :cond_1
    move v5, v2

    if-eqz v5, :cond_2

    move v5, v3

    if-lez v5, :cond_2

    .line 84
    move-object v5, v1

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 86
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method private static getWeightedDistanceFor(II)I
    .locals 5

    .prologue
    .line 283
    move v0, p0

    .local v0, "majorAxisDistance":I
    move v1, p1

    .local v1, "minorAxisDistance":I
    const/16 v2, 0xd

    move v3, v0

    mul-int/2addr v2, v3

    move v3, v0

    mul-int/2addr v2, v3

    move v3, v1

    move v4, v1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "majorAxisDistance":I
    return v0
.end method

.method private static isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 10
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    move v0, p0

    .local v0, "direction":I
    move-object v1, p1

    .local v1, "source":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "candidate":Landroid/graphics/Rect;
    move-object v3, p3

    .local v3, "currentBest":Landroid/graphics/Rect;
    move-object v6, v1

    move-object v7, v2

    move v8, v0

    invoke-static {v6, v7, v8}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 204
    const/4 v6, 0x0

    move v0, v6

    .line 231
    .end local v0    # "direction":I
    :goto_0
    return v0

    .line 209
    .restart local v0    # "direction":I
    :cond_0
    move-object v6, v1

    move-object v7, v3

    move v8, v0

    invoke-static {v6, v7, v8}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 210
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 214
    :cond_1
    move v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-static {v6, v7, v8, v9}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 215
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 219
    :cond_2
    move v6, v0

    move-object v7, v1

    move-object v8, v3

    move-object v9, v2

    invoke-static {v6, v7, v8, v9}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 220
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 225
    :cond_3
    move v6, v0

    move-object v7, v1

    move-object v8, v2

    .line 226
    invoke-static {v6, v7, v8}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v6

    move v7, v0

    move-object v8, v1

    move-object v9, v2

    .line 227
    invoke-static {v7, v8, v9}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v7

    .line 225
    invoke-static {v6, v7}, Landroidx/customview/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v6

    move v4, v6

    .line 228
    .local v4, "candidateDist":I
    move v6, v0

    move-object v7, v1

    move-object v8, v3

    .line 229
    invoke-static {v6, v7, v8}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v6

    move v7, v0

    move-object v8, v1

    move-object v9, v3

    .line 230
    invoke-static {v7, v8, v9}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v7

    .line 228
    invoke-static {v6, v7}, Landroidx/customview/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v6

    move v5, v6

    .line 231
    .local v5, "currentBestDist":I
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 7
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "srcRect":Landroid/graphics/Rect;
    move-object v1, p1

    .local v1, "destRect":Landroid/graphics/Rect;
    move v2, p2

    .local v2, "direction":I
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 311
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    :sswitch_0
    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-lt v3, v4, :cond_1

    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-le v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 308
    .end local v0    # "srcRect":Landroid/graphics/Rect;
    :goto_1
    return v0

    .line 299
    .restart local v0    # "srcRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 302
    :sswitch_1
    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_2

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gt v3, v4, :cond_3

    :cond_2
    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-ge v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 305
    :sswitch_2
    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_4

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_5

    :cond_4
    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_3
    move v0, v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 308
    :sswitch_3
    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_6

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gt v3, v4, :cond_7

    :cond_6
    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_7

    const/4 v3, 0x1

    :goto_4
    move v0, v3

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    .line 297
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private static isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 343
    move v0, p0

    .local v0, "direction":I
    move-object v1, p1

    .local v1, "src":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "dest":Landroid/graphics/Rect;
    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 353
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    :sswitch_0
    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 351
    .end local v0    # "direction":I
    :goto_1
    return v0

    .line 345
    .restart local v0    # "direction":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 347
    :sswitch_1
    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gt v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 349
    :sswitch_2
    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_3
    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 351
    :sswitch_3
    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gt v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_4
    move v0, v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 365
    move v0, p0

    .local v0, "direction":I
    move-object v1, p1

    .local v1, "source":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "dest":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    .end local v0    # "direction":I
    return v0
.end method

.method private static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 370
    move v0, p0

    .local v0, "direction":I
    move-object v1, p1

    .local v1, "source":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "dest":Landroid/graphics/Rect;
    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 380
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    :sswitch_0
    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    move v0, v3

    .line 378
    .end local v0    # "direction":I
    :goto_0
    return v0

    .line 374
    .restart local v0    # "direction":I
    :sswitch_1
    move-object v3, v2

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 376
    :sswitch_2
    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 378
    :sswitch_3
    move-object v3, v2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 392
    move v0, p0

    .local v0, "direction":I
    move-object v1, p1

    .local v1, "source":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "dest":Landroid/graphics/Rect;
    const/4 v3, 0x1

    move v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    .end local v0    # "direction":I
    return v0
.end method

.method private static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 398
    move v0, p0

    .local v0, "direction":I
    move-object v1, p1

    .local v1, "source":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "dest":Landroid/graphics/Rect;
    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 408
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 400
    :sswitch_0
    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move v0, v3

    .line 406
    .end local v0    # "direction":I
    :goto_0
    return v0

    .line 402
    .restart local v0    # "direction":I
    :sswitch_1
    move-object v3, v2

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 404
    :sswitch_2
    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 406
    :sswitch_3
    move-object v3, v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 398
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 8
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 423
    move v0, p0

    .local v0, "direction":I
    move-object v1, p1

    .local v1, "source":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "dest":Landroid/graphics/Rect;
    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 435
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 427
    :sswitch_0
    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v1

    .line 428
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 427
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move v0, v3

    .line 432
    .end local v0    # "direction":I
    :goto_0
    return v0

    .restart local v0    # "direction":I
    :sswitch_1
    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v1

    .line 433
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 432
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 423
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method
