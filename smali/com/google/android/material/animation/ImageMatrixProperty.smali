.class public Lcom/google/android/material/animation/ImageMatrixProperty;
.super Landroid/util/Property;
.source "ImageMatrixProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/widget/ImageView;",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private final matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ImageMatrixProperty;
    move-object v1, v0

    const-class v2, Landroid/graphics/Matrix;

    const-string/jumbo v3, "imageMatrixProperty"

    invoke-direct {v1, v2, v3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 27
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/animation/ImageMatrixProperty;->matrix:Landroid/graphics/Matrix;

    .line 31
    return-void
.end method


# virtual methods
.method public get(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ImageMatrixProperty;
    move-object v1, p1

    .local v1, "object":Landroid/widget/ImageView;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/animation/ImageMatrixProperty;->matrix:Landroid/graphics/Matrix;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 41
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/animation/ImageMatrixProperty;->matrix:Landroid/graphics/Matrix;

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/animation/ImageMatrixProperty;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ImageMatrixProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/ImageMatrixProperty;->get(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/animation/ImageMatrixProperty;
    return-object v0
.end method

.method public set(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ImageMatrixProperty;
    move-object v1, p1

    .local v1, "object":Landroid/widget/ImageView;
    move-object v2, p2

    .local v2, "value":Landroid/graphics/Matrix;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 36
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ImageMatrixProperty;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    move-object v5, v2

    check-cast v5, Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/animation/ImageMatrixProperty;->set(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    return-void
.end method
