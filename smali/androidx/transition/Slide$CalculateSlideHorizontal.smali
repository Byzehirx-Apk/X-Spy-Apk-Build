.class abstract Landroidx/transition/Slide$CalculateSlideHorizontal;
.super Ljava/lang/Object;
.source "Slide.java"

# interfaces
.implements Landroidx/transition/Slide$CalculateSlide;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CalculateSlideHorizontal"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide$CalculateSlideHorizontal;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/transition/Slide$1;)V
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide$CalculateSlideHorizontal;
    move-object v1, p1

    .local v1, "x0":Landroidx/transition/Slide$1;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/Slide$CalculateSlideHorizontal;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Slide$CalculateSlideHorizontal;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/transition/Slide$CalculateSlideHorizontal;
    return v0
.end method
