.class Landroidx/transition/PropertyValuesHolderUtils;
.super Ljava/lang/Object;
.source "PropertyValuesHolderUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PropertyValuesHolderUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "property":Landroid/util/Property;, "Landroid/util/Property<*Landroid/graphics/PointF;>;"
    move-object v1, p1

    .local v1, "path":Landroid/graphics/Path;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    move-object v0, v2

    .line 41
    .end local v0    # "property":Landroid/util/Property;, "Landroid/util/Property<*Landroid/graphics/PointF;>;"
    :goto_0
    return-object v0

    .restart local v0    # "property":Landroid/util/Property;, "Landroid/util/Property<*Landroid/graphics/PointF;>;"
    :cond_0
    new-instance v2, Landroidx/transition/PathProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/transition/PathProperty;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
