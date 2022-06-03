.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
.super Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatedStateListState"
.end annotation


# static fields
.field private static final REVERSED_BIT:J = 0x100000000L

.field private static final REVERSIBLE_FLAG_BIT:J = 0x200000000L


# instance fields
.field mStateIds:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTransitions:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V
    .locals 9
    .param p1    # Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move-object v1, p1

    .local v1, "orig":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move-object v2, p2

    .local v2, "owner":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v3, p3

    .local v3, "res":Landroid/content/res/Resources;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 634
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 636
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    iput-object v5, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 637
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    iput-object v5, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    .line 642
    :goto_0
    return-void

    .line 639
    :cond_0
    move-object v4, v0

    new-instance v5, Landroidx/collection/LongSparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 640
    move-object v4, v0

    new-instance v5, Landroidx/collection/SparseArrayCompat;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    goto :goto_0
.end method

.method private static generateTransitionKey(II)J
    .locals 6

    .prologue
    .line 711
    move v0, p0

    .local v0, "fromId":I
    move v1, p1

    .local v1, "toId":I
    move v2, v0

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    move v4, v1

    int-to-long v4, v4

    or-long/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "fromId":I
    return-wide v0
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;I)I
    .locals 8
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v2, p2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move v3, p3

    .local v3, "id":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    move-result v5

    move v4, v5

    .line 667
    .local v4, "index":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    move v6, v4

    move v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 668
    move v5, v4

    move v0, v5

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    return v0
.end method

.method addTransition(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 22
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 651
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move/from16 v4, p1

    .local v4, "fromId":I
    move/from16 v5, p2

    .local v5, "toId":I
    move-object/from16 v6, p3

    .local v6, "anim":Landroid/graphics/drawable/Drawable;
    move/from16 v7, p4

    .local v7, "reversible":Z
    move-object v15, v3

    move-object/from16 v16, v6

    invoke-super/range {v15 .. v16}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v15

    move v8, v15

    .line 652
    .local v8, "pos":I
    move v15, v4

    move/from16 v16, v5

    invoke-static/range {v15 .. v16}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v15

    move-wide v9, v15

    .line 653
    .local v9, "keyFromTo":J
    const-wide/16 v15, 0x0

    move-wide v11, v15

    .line 654
    .local v11, "reversibleBit":J
    move v15, v7

    if-eqz v15, :cond_0

    .line 655
    const-wide v15, 0x200000000L

    move-wide v11, v15

    .line 657
    :cond_0
    move-object v15, v3

    iget-object v15, v15, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    move-wide/from16 v16, v9

    move/from16 v18, v8

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v11

    or-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroidx/collection/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 658
    move v15, v7

    if-eqz v15, :cond_1

    .line 659
    move v15, v5

    move/from16 v16, v4

    invoke-static/range {v15 .. v16}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v15

    move-wide v13, v15

    .line 660
    .local v13, "keyToFrom":J
    move-object v15, v3

    iget-object v15, v15, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    move-wide/from16 v16, v13

    move/from16 v18, v8

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x100000000L

    or-long v18, v18, v20

    move-wide/from16 v20, v11

    or-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroidx/collection/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 662
    .end local v13    # "keyToFrom":J
    :cond_1
    move v15, v8

    move v3, v15

    .end local v3    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    return v3
.end method

.method getKeyframeIdAt(I)I
    .locals 5

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    move v3, v1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method indexOfKeyframe([I)I
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v3

    move v2, v3

    .line 673
    .local v2, "index":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 674
    move v3, v2

    move v0, v3

    .line 676
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    :cond_0
    move-object v3, v0

    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {v3, v4}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method indexOfTransition(II)I
    .locals 11

    .prologue
    .line 684
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move v2, p1

    .local v2, "fromId":I
    move v3, p2

    .local v3, "toId":I
    move v6, v2

    move v7, v3

    invoke-static {v6, v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v6

    move-wide v4, v6

    .line 685
    .local v4, "keyFromTo":J
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    move-wide v7, v4

    const-wide/16 v9, -0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v6, v6

    move v1, v6

    .end local v1    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    return v1
.end method

.method isTransitionReversed(II)Z
    .locals 11

    .prologue
    .line 689
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move v2, p1

    .local v2, "fromId":I
    move v3, p2

    .local v3, "toId":I
    move v6, v2

    move v7, v3

    invoke-static {v6, v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v6

    move-wide v4, v6

    .line 690
    .local v4, "keyFromTo":J
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    move-wide v7, v4

    const-wide/16 v9, -0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x100000000L

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v1, v6

    .end local v1    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    return v1

    .restart local v1    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method mutate()V
    .locals 3

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    .line 647
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    .line 648
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    new-instance v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    return-object v0
.end method

.method transitionHasReversibleFlag(II)Z
    .locals 11

    .prologue
    .line 694
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    move v2, p1

    .local v2, "fromId":I
    move v3, p2

    .local v3, "toId":I
    move v6, v2

    move v7, v3

    invoke-static {v6, v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v6

    move-wide v4, v6

    .line 695
    .local v4, "keyFromTo":J
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    move-wide v7, v4

    const-wide/16 v9, -0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x200000000L

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v1, v6

    .end local v1    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    return v1

    .restart local v1    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
