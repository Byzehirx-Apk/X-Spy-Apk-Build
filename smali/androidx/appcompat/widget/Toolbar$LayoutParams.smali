.class public Landroidx/appcompat/widget/Toolbar$LayoutParams;
.super Landroidx/appcompat/app/ActionBar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 2230
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    const/4 v3, -0x2

    const/4 v4, -0x1

    move v5, v1

    invoke-direct {v2, v3, v4, v5}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 2231
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 2220
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    .line 2213
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2221
    move-object v3, v0

    const v4, 0x800013

    iput v4, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2222
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    .prologue
    .line 2225
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "gravity":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    .line 2213
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2226
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2216
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2213
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2217
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 2251
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2213
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2252
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 2244
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2213
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2247
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2248
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 4

    .prologue
    .line 2240
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/appcompat/app/ActionBar$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 2213
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2241
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V
    .locals 4

    .prologue
    .line 2234
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 2213
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2236
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2237
    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 2255
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    .line 2256
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    .line 2257
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    .line 2258
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    .line 2259
    return-void
.end method
