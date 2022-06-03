.class public Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final FLAG_IS_CLOSING:I = 0x4

.field private static final FLAG_IS_OPENED:I = 0x1

.field private static final FLAG_IS_OPENING:I = 0x2


# instance fields
.field public gravity:I

.field isPeeking:Z

.field onScreen:F

.field openState:I


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 2327
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2313
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2328
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    .prologue
    .line 2331
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "gravity":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 2332
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2333
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
    .line 2319
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2313
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2321
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroidx/drawerlayout/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 2322
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2323
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2324
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2341
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2313
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2342
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2345
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2313
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2346
    return-void
.end method

.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;)V
    .locals 4
    .param p1    # Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2336
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2313
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2337
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2338
    return-void
.end method
