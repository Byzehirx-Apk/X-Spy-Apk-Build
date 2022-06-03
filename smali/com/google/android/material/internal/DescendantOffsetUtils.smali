.class public Lcom/google/android/material/internal/DescendantOffsetUtils;
.super Ljava/lang/Object;
.source "DescendantOffsetUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final matrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final rectF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/DescendantOffsetUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewGroup;
    move-object v1, p1

    .local v1, "descendant":Landroid/view/View;
    move-object v2, p2

    .local v2, "out":Landroid/graphics/Rect;
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 81
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 82
    return-void
.end method

.method private static offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "target":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "m":Landroid/graphics/Matrix;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 86
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v5, v3

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v5, v3

    move-object v6, v0

    if-eq v5, v6, :cond_0

    .line 87
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 88
    .local v4, "vp":Landroid/view/View;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 89
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v5

    .line 92
    .end local v4    # "vp":Landroid/view/View;
    :cond_0
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v5

    .line 94
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 97
    :cond_1
    return-void
.end method

.method public static offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 12

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewGroup;
    move-object v1, p1

    .local v1, "descendant":Landroid/view/View;
    move-object v2, p2

    .local v2, "rect":Landroid/graphics/Rect;
    sget-object v5, Lcom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    move-object v3, v5

    .line 49
    .local v3, "m":Landroid/graphics/Matrix;
    move-object v5, v3

    if-nez v5, :cond_1

    .line 50
    new-instance v5, Landroid/graphics/Matrix;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v5

    .line 51
    sget-object v5, Lcom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 56
    :goto_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 58
    sget-object v5, Lcom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    move-object v4, v5

    .line 59
    .local v4, "rectF":Landroid/graphics/RectF;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 60
    new-instance v5, Landroid/graphics/RectF;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object v4, v5

    .line 61
    sget-object v5, Lcom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 63
    :cond_0
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 64
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v5

    .line 65
    move-object v5, v2

    move-object v6, v4

    iget v6, v6, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object v7, v4

    iget v7, v7, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object v8, v4

    iget v8, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    move-object v9, v4

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    return-void

    .line 53
    .end local v4    # "rectF":Landroid/graphics/RectF;
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method
