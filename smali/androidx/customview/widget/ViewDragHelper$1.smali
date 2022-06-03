.class final Landroidx/customview/widget/ViewDragHelper$1;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper$1;
    move v1, p1

    .local v1, "t":F
    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    move v1, v2

    .line 336
    move v2, v1

    move v3, v1

    mul-float/2addr v2, v3

    move v3, v1

    mul-float/2addr v2, v3

    move v3, v1

    mul-float/2addr v2, v3

    move v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/customview/widget/ViewDragHelper$1;
    return v0
.end method
