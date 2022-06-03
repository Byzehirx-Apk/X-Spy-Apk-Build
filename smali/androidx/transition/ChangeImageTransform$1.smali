.class final Landroidx/transition/ChangeImageTransform$1;
.super Ljava/lang/Object;
.source "ChangeImageTransform.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeImageTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeImageTransform$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeImageTransform$1;
    move v1, p1

    .local v1, "fraction":F
    move-object v2, p2

    .local v2, "startValue":Landroid/graphics/Matrix;
    move-object v3, p3

    .local v3, "endValue":Landroid/graphics/Matrix;
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/ChangeImageTransform$1;
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeImageTransform$1;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    check-cast v6, Landroid/graphics/Matrix;

    move-object v7, v3

    check-cast v7, Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/transition/ChangeImageTransform$1;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/ChangeImageTransform$1;
    return-object v0
.end method
