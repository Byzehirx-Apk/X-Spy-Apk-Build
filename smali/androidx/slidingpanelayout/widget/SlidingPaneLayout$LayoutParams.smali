.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field dimPaint:Landroid/graphics/Paint;

.field dimWhenOffset:Z

.field slideable:Z

.field public weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1423
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010181

    aput v3, v1, v2

    sput-object v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->ATTRS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 1447
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v1, v0

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1431
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1448
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 1451
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1431
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1452
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1468
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1431
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1470
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->ATTRS:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 1471
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1472
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1473
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1455
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1431
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1456
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1459
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1431
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1460
    return-void
.end method

.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;)V
    .locals 4
    .param p1    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1463
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1431
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1464
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    iput v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1465
    return-void
.end method
