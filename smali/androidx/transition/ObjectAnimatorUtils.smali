.class Landroidx/transition/ObjectAnimatorUtils;
.super Ljava/lang/Object;
.source "ObjectAnimatorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ObjectAnimatorUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "target":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Landroid/graphics/PointF;>;"
    move-object v2, p2

    .local v2, "path":Landroid/graphics/Path;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 29
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object v0, v3

    .line 31
    .end local v0    # "target":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .restart local v0    # "target":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v3, v0

    new-instance v4, Landroidx/transition/PathProperty;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/transition/PathProperty;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
