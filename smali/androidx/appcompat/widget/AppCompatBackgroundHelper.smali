.class Landroidx/appcompat/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private mBackgroundResId:I

.field private mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

.field private final mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

.field private mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

.field private mTmpInfo:Landroidx/appcompat/widget/TintInfo;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 43
    move-object v2, v0

    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 44
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .locals 9
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    if-nez v5, :cond_0

    .line 174
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/widget/TintInfo;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v6, v5, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    .line 176
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    move-object v2, v5

    .line 177
    .local v2, "info":Landroidx/appcompat/widget/TintInfo;
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintInfo;->clear()V

    .line 179
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v3, v5

    .line 180
    .local v3, "tintList":Landroid/content/res/ColorStateList;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 181
    move-object v5, v2

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 182
    move-object v5, v2

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 184
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    move-object v4, v5

    .line 185
    .local v4, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 186
    move-object v5, v2

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 187
    move-object v5, v2

    move-object v6, v4

    iput-object v6, v5, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 190
    :cond_2
    move-object v5, v2

    iget-boolean v5, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v5, :cond_3

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v5, :cond_4

    .line 191
    :cond_3
    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getDrawableState()[I

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 192
    const/4 v5, 0x1

    move v0, v5

    .line 195
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v2

    .line 152
    .local v1, "sdk":I
    move v2, v1

    const/16 v3, 0x15

    if-le v2, v3, :cond_1

    .line 155
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 163
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    :goto_1
    return v0

    .line 155
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 156
    :cond_1
    move v2, v1

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    .line 160
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1

    .line 163
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method applySupportBackgroundTint()V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 119
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 120
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    .line 121
    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    .line 135
    :goto_0
    return-void

    .line 127
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_2

    .line 128
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 129
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    .line 128
    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 135
    :cond_1
    :goto_1
    goto :goto_0

    .line 130
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_1

    .line 131
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    .line 131
    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    goto :goto_1
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v1, v1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v1, v1, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move v2, p2

    .local v2, "defStyleAttr":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    move v9, v2

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v6

    move-object v3, v6

    .line 50
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v6, v3

    :try_start_0
    sget v7, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    move-object v6, v0

    move-object v7, v3

    sget v8, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 53
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 54
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v4, v6

    .line 55
    .local v4, "tint":Landroid/content/res/ColorStateList;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 56
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 59
    .end local v4    # "tint":Landroid/content/res/ColorStateList;
    :cond_0
    move-object v6, v3

    sget v7, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    move-object v7, v3

    sget v8, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 61
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 60
    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 63
    :cond_1
    move-object v6, v3

    sget v7, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 64
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    move-object v7, v3

    sget v8, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v9, -0x1

    .line 66
    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v7

    const/4 v8, 0x0

    .line 65
    invoke-static {v7, v8}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 64
    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 71
    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 86
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 87
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 88
    return-void
.end method

.method onSetBackgroundResource(I)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 77
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 77
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 80
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 81
    return-void

    .line 78
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 139
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_0

    .line 140
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/TintInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    .line 142
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 143
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 147
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 148
    return-void

    .line 145
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    goto :goto_0
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_0

    .line 92
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/TintInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    .line 94
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 95
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 96
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 97
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_0

    .line 105
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/TintInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    .line 107
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 108
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 110
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 111
    return-void
.end method
