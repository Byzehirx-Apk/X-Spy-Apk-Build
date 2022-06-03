.class public Lcom/google/android/material/shape/ShapePath$PathLineOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathLineOperation"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .locals 7

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    move v1, p1

    .local v1, "x1":F
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    move v0, v2

    .end local v0    # "x0":Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    return v0
.end method

.method static synthetic access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .locals 7

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    move v1, p1

    .local v1, "x1":F
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    move v0, v2

    .end local v0    # "x0":Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    return v0
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    move-object v1, p1

    .local v1, "transform":Landroid/graphics/Matrix;
    move-object v2, p2

    .local v2, "path":Landroid/graphics/Path;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->matrix:Landroid/graphics/Matrix;

    move-object v3, v4

    .line 143
    .local v3, "inverse":Landroid/graphics/Matrix;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    .line 144
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 145
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 147
    return-void
.end method
