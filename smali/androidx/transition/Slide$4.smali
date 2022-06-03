.class final Landroidx/transition/Slide$4;
.super Landroidx/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide$4;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/transition/Slide$CalculateSlideHorizontal;-><init>(Landroidx/transition/Slide$1;)V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 5

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide$4;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/transition/Slide$4;
    return v0
.end method
