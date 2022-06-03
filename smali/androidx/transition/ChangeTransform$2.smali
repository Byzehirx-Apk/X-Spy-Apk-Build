.class final Landroidx/transition/ChangeTransform$2;
.super Landroid/util/Property;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$2;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$2;
    move-object v1, p1

    .local v1, "object":Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeTransform$2;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {v2, v3}, Landroidx/transition/ChangeTransform$2;->get(Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeTransform$2;
    return-object v0
.end method

.method public set(Landroidx/transition/ChangeTransform$PathAnimatorMatrix;Landroid/graphics/PointF;)V
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$2;
    move-object v1, p1

    .local v1, "object":Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
    move-object v2, p2

    .local v2, "value":Landroid/graphics/PointF;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setTranslation(Landroid/graphics/PointF;)V

    .line 94
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    move-object v5, v2

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v5}, Landroidx/transition/ChangeTransform$2;->set(Landroidx/transition/ChangeTransform$PathAnimatorMatrix;Landroid/graphics/PointF;)V

    return-void
.end method
