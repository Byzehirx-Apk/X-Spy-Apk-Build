.class public Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathQuadOperation"
.end annotation


# instance fields
.field public controlX:F

.field public controlY:F

.field public endX:F

.field public endY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 9

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    move-object v1, p1

    .local v1, "transform":Landroid/graphics/Matrix;
    move-object v2, p2

    .local v2, "path":Landroid/graphics/Path;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->matrix:Landroid/graphics/Matrix;

    move-object v3, v4

    .line 160
    .local v3, "inverse":Landroid/graphics/Matrix;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    .line 161
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 162
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 163
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 164
    return-void
.end method
