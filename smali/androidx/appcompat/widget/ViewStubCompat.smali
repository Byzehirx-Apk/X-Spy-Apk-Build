.class public final Landroidx/appcompat/widget/ViewStubCompat;
.super Landroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyle":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    .line 59
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/appcompat/R$styleable;->ViewStubCompat:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 62
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ViewStubCompat_android_inflatedId:I

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    .line 63
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ViewStubCompat_android_layout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    .line 65
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ViewStubCompat_android_id:I

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setId(I)V

    .line 66
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setVisibility(I)V

    .line 69
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setWillNotDraw(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 159
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 155
    return-void
.end method

.method public getInflatedId()I
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ViewStubCompat;
    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ViewStubCompat;
    return-object v0
.end method

.method public getLayoutResource()I
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ViewStubCompat;
    return v0
.end method

.method public inflate()Landroid/view/View;
    .locals 12

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v1, v7

    .line 198
    .local v1, "viewParent":Landroid/view/ViewParent;
    move-object v7, v1

    if-eqz v7, :cond_5

    move-object v7, v1

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    .line 199
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    if-eqz v7, :cond_4

    .line 200
    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    move-object v2, v7

    .line 202
    .local v2, "parent":Landroid/view/ViewGroup;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v7, :cond_2

    .line 203
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    move-object v3, v7

    .line 207
    .local v3, "factory":Landroid/view/LayoutInflater;
    :goto_0
    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 210
    .local v4, "view":Landroid/view/View;
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 211
    move-object v7, v4

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 214
    :cond_0
    move-object v7, v2

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 215
    .local v5, "index":I
    move-object v7, v2

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 217
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    .line 218
    .local v6, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v7, v6

    if-eqz v7, :cond_3

    .line 219
    move-object v7, v2

    move-object v8, v4

    move v9, v5

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :goto_1
    move-object v7, v0

    new-instance v8, Ljava/lang/ref/WeakReference;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v7, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 226
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ViewStubCompat;->mInflateListener:Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    if-eqz v7, :cond_1

    .line 227
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ViewStubCompat;->mInflateListener:Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    move-object v8, v0

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;->onInflate(Landroidx/appcompat/widget/ViewStubCompat;Landroid/view/View;)V

    .line 230
    :cond_1
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Landroidx/appcompat/widget/ViewStubCompat;
    return-object v0

    .line 205
    .end local v3    # "factory":Landroid/view/LayoutInflater;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "index":I
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v0    # "this":Landroidx/appcompat/widget/ViewStubCompat;
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ViewStubCompat;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    move-object v3, v7

    .restart local v3    # "factory":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 221
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "index":I
    .restart local v6    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    move-object v7, v2

    move-object v8, v4

    move v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 232
    .end local v2    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "factory":Landroid/view/LayoutInflater;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "index":I
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "ViewStub must have a valid layoutResource"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 235
    :cond_5
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setMeasuredDimension(II)V

    .line 150
    return-void
.end method

.method public setInflatedId(I)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move v1, p1

    .local v1, "inflatedId":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    .line 98
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move-object v1, p1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .line 138
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move v1, p1

    .local v1, "layoutResource":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    .line 130
    return-void
.end method

.method public setOnInflateListener(Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;)V
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move-object v1, p1

    .local v1, "inflateListener":Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ViewStubCompat;->mInflateListener:Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    .line 249
    return-void
.end method

.method public setVisibility(I)V
    .locals 7

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ViewStubCompat;
    move v1, p1

    .local v1, "visibility":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 174
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 175
    .local v2, "view":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 176
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 186
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "setVisibility called on un-referenced view"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    move v3, v1

    if-eqz v3, :cond_3

    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 183
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method
