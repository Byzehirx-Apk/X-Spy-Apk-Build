.class Landroidx/transition/ViewOverlayApi14;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Landroidx/transition/ViewOverlayImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    }
.end annotation


# instance fields
.field protected mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 355
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 12

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "hostView":Landroid/view/ViewGroup;
    move-object v3, p3

    .local v3, "requestingView":Landroid/view/View;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v4, v0

    new-instance v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v0

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/ViewOverlayApi14;)V

    iput-object v5, v4, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    .line 49
    return-void
.end method

.method static createFrom(Landroid/view/View;)Landroidx/transition/ViewOverlayApi14;
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v5, v0

    invoke-static {v5}, Landroidx/transition/ViewOverlayApi14;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    move-object v1, v5

    .line 66
    .local v1, "contentView":Landroid/view/ViewGroup;
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 67
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v2, v5

    .line 68
    .local v2, "numChildren":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 69
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 70
    .local v4, "child":Landroid/view/View;
    move-object v5, v4

    instance-of v5, v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    if-eqz v5, :cond_0

    .line 71
    move-object v5, v4

    check-cast v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    iget-object v5, v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mViewOverlay:Landroidx/transition/ViewOverlayApi14;

    move-object v0, v5

    .line 76
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "numChildren":I
    .end local v3    # "i":I
    .end local v4    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 68
    .restart local v0    # "view":Landroid/view/View;
    .restart local v2    # "numChildren":I
    .restart local v3    # "i":I
    .restart local v4    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    new-instance v5, Landroidx/transition/ViewGroupOverlayApi14;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    move-object v9, v0

    invoke-direct {v6, v7, v8, v9}, Landroidx/transition/ViewGroupOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object v0, v5

    goto :goto_1

    .line 76
    .end local v2    # "numChildren":I
    .end local v3    # "i":I
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v2, v0

    move-object v1, v2

    .line 53
    .local v1, "parent":Landroid/view/View;
    :cond_0
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 54
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_1

    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 55
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v2

    .line 61
    .end local v0    # "view":Landroid/view/View;
    :goto_1
    return-object v0

    .line 57
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 58
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v1, v2

    goto :goto_0

    .line 61
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->clear()V

    .line 95
    return-void
.end method

.method getOverlayView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/ViewOverlayApi14;
    return-object v0
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/transition/ViewOverlayApi14;
    return v0
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-void
.end method
