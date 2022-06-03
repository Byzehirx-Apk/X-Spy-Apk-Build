.class final Landroidx/transition/ChangeImageTransform$2;
.super Landroid/util/Property;
.source "ChangeImageTransform.java"


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
        "Landroid/util/Property",
        "<",
        "Landroid/widget/ImageView;",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeImageTransform$2;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/Matrix;>;"
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeImageTransform$2;
    move-object v1, p1

    .local v1, "object":Landroid/widget/ImageView;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeImageTransform$2;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeImageTransform$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroidx/transition/ChangeImageTransform$2;->get(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeImageTransform$2;
    return-object v0
.end method

.method public set(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeImageTransform$2;
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/transition/ImageViewUtils;->animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    .line 66
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeImageTransform$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    move-object v5, v2

    check-cast v5, Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroidx/transition/ChangeImageTransform$2;->set(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    return-void
.end method
