.class Landroidx/transition/PathProperty;
.super Landroid/util/Property;
.source "PathProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property",
        "<TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentFraction:F

.field private final mPathLength:F

.field private final mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mPointF:Landroid/graphics/PointF;

.field private final mPosition:[F

.field private final mProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<TT;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/util/Property;Landroid/graphics/Path;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PathProperty;, "Landroidx/transition/PathProperty<TT;>;"
    move-object v1, p1

    .local v1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Landroid/graphics/PointF;>;"
    move-object v2, p2

    .local v2, "path":Landroid/graphics/Path;
    move-object v3, v0

    const-class v4, Ljava/lang/Float;

    move-object v5, v1

    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/transition/PathProperty;->mPosition:[F

    .line 41
    move-object v3, v0

    new-instance v4, Landroid/graphics/PointF;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v3, Landroidx/transition/PathProperty;->mPointF:Landroid/graphics/PointF;

    .line 46
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/PathProperty;->mProperty:Landroid/util/Property;

    .line 47
    move-object v3, v0

    new-instance v4, Landroid/graphics/PathMeasure;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v4, v3, Landroidx/transition/PathProperty;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 48
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/PathProperty;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    iput v4, v3, Landroidx/transition/PathProperty;->mPathLength:F

    .line 49
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PathProperty;, "Landroidx/transition/PathProperty<TT;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget v2, v2, Landroidx/transition/PathProperty;->mCurrentFraction:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/PathProperty;, "Landroidx/transition/PathProperty<TT;>;"
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PathProperty;, "Landroidx/transition/PathProperty<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/PathProperty;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/PathProperty;, "Landroidx/transition/PathProperty<TT;>;"
    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Float;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PathProperty;, "Landroidx/transition/PathProperty<TT;>;"
    move-object v1, p1

    .local v1, "target":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "fraction":Ljava/lang/Float;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Landroidx/transition/PathProperty;->mCurrentFraction:F

    .line 59
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/PathProperty;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object v4, v0

    iget v4, v4, Landroidx/transition/PathProperty;->mPathLength:F

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/PathProperty;->mPosition:[F

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v3

    .line 60
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/PathProperty;->mPointF:Landroid/graphics/PointF;

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/PathProperty;->mPosition:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 61
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/PathProperty;->mPointF:Landroid/graphics/PointF;

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/PathProperty;->mPosition:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 62
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/PathProperty;->mProperty:Landroid/util/Property;

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/PathProperty;->mPointF:Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v5}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PathProperty;, "Landroidx/transition/PathProperty<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v3, v4, v5}, Landroidx/transition/PathProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method
