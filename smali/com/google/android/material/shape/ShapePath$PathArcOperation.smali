.class public Lcom/google/android/material/shape/ShapePath$PathArcOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathArcOperation"
.end annotation


# static fields
.field private static final rectF:Landroid/graphics/RectF;


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public startAngle:F

.field public sweepAngle:F

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Landroid/graphics/RectF;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath$PathArcOperation;
    move v1, p1

    .local v1, "left":F
    move v2, p2

    .local v2, "top":F
    move v3, p3

    .local v3, "right":F
    move v4, p4

    .local v4, "bottom":F
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 179
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 180
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 181
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 182
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 183
    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 9

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath$PathArcOperation;
    move-object v1, p1

    .local v1, "transform":Landroid/graphics/Matrix;
    move-object v2, p2

    .local v2, "path":Landroid/graphics/Path;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->matrix:Landroid/graphics/Matrix;

    move-object v3, v4

    .line 188
    .local v3, "inverse":Landroid/graphics/Matrix;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    .line 189
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 190
    sget-object v4, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 191
    move-object v4, v2

    sget-object v5, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 192
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 193
    return-void
.end method
