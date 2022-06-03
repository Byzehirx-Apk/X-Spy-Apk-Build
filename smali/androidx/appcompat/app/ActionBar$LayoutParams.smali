.class public Landroidx/appcompat/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 1395
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBar$LayoutParams;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    const/4 v3, -0x2

    const/4 v4, -0x1

    move v5, v1

    invoke-direct {v2, v3, v4, v5}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(III)V

    .line 1396
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 1385
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBar$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1374
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1386
    move-object v3, v0

    const v4, 0x800013

    iput v4, v3, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1387
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    .prologue
    .line 1390
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBar$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "gravity":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1374
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1391
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1392
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1377
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBar$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1374
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1379
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroidx/appcompat/R$styleable;->ActionBarLayout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 1380
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->ActionBarLayout_android_layout_gravity:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1381
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1382
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1405
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBar$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1374
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1406
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 4

    .prologue
    .line 1399
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBar$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/appcompat/app/ActionBar$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1374
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1401
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    iput v3, v2, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1402
    return-void
.end method
