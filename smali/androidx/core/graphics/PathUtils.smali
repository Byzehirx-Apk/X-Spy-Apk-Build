.class public final Landroidx/core/graphics/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static flatten(Landroid/graphics/Path;)Ljava/util/Collection;
    .locals 3
    .param p0    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Landroidx/core/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "path":Landroid/graphics/Path;
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Landroidx/core/graphics/PathUtils;->flatten(Landroid/graphics/Path;F)Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "path":Landroid/graphics/Path;
    return-object v0
.end method

.method public static flatten(Landroid/graphics/Path;F)Ljava/util/Collection;
    .locals 24
    .param p0    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "F)",
            "Ljava/util/Collection",
            "<",
            "Landroidx/core/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "path":Landroid/graphics/Path;
    move/from16 v1, p1

    .local v1, "error":F
    move-object v14, v0

    move v15, v1

    invoke-virtual {v14, v15}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v14

    move-object v2, v14

    .line 61
    .local v2, "pathData":[F
    move-object v14, v2

    array-length v14, v14

    const/4 v15, 0x3

    div-int/lit8 v14, v14, 0x3

    move v3, v14

    .line 62
    .local v3, "pointCount":I
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v14

    .line 63
    .local v4, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/core/graphics/PathSegment;>;"
    const/4 v14, 0x1

    move v5, v14

    .local v5, "i":I
    :goto_0
    move v14, v5

    move v15, v3

    if-ge v14, v15, :cond_2

    .line 64
    move v14, v5

    const/4 v15, 0x3

    mul-int/lit8 v14, v14, 0x3

    move v6, v14

    .line 65
    .local v6, "index":I
    move v14, v5

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x3

    mul-int/lit8 v14, v14, 0x3

    move v7, v14

    .line 67
    .local v7, "prevIndex":I
    move-object v14, v2

    move v15, v6

    aget v14, v14, v15

    move v8, v14

    .line 68
    .local v8, "d":F
    move-object v14, v2

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    move v9, v14

    .line 69
    .local v9, "x":F
    move-object v14, v2

    move v15, v6

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x2

    aget v14, v14, v15

    move v10, v14

    .line 71
    .local v10, "y":F
    move-object v14, v2

    move v15, v7

    aget v14, v14, v15

    move v11, v14

    .line 72
    .local v11, "pd":F
    move-object v14, v2

    move v15, v7

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    move v12, v14

    .line 73
    .local v12, "px":F
    move-object v14, v2

    move v15, v7

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x2

    aget v14, v14, v15

    move v13, v14

    .line 75
    .local v13, "py":F
    move v14, v8

    move v15, v11

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_1

    move v14, v9

    move v15, v12

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    move v14, v10

    move v15, v13

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_1

    .line 76
    :cond_0
    move-object v14, v4

    new-instance v15, Landroidx/core/graphics/PathSegment;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    new-instance v17, Landroid/graphics/PointF;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-direct/range {v18 .. v20}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v18, v11

    new-instance v19, Landroid/graphics/PointF;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-direct/range {v20 .. v22}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v20, v8

    invoke-direct/range {v16 .. v20}, Landroidx/core/graphics/PathSegment;-><init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 63
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 79
    .end local v6    # "index":I
    .end local v7    # "prevIndex":I
    .end local v8    # "d":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "pd":F
    .end local v12    # "px":F
    .end local v13    # "py":F
    :cond_2
    move-object v14, v4

    move-object v0, v14

    .end local v0    # "path":Landroid/graphics/Path;
    return-object v0
.end method
