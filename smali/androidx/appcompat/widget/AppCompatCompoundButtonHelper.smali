.class Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
.super Ljava/lang/Object;
.source "AppCompatCompoundButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatCompoundButtonHelper$DirectSetButtonDrawableInterface;
    }
.end annotation


# instance fields
.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mSkipNextApply:Z

.field private final mView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    move-object v1, p1

    .local v1, "view":Landroid/widget/CompoundButton;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 38
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 40
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 52
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 53
    return-void
.end method


# virtual methods
.method applyButtonTint()V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v2}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 117
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    if-eqz v2, :cond_4

    .line 118
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 119
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 120
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    if-eqz v2, :cond_1

    .line 121
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 123
    :cond_1
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    if-eqz v2, :cond_2

    .line 124
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 128
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 131
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_4
    return-void
.end method

.method getCompoundPaddingLeft(I)I
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    move v1, p1

    .local v1, "superValue":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_0

    .line 139
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v3}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 140
    .local v2, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 141
    move v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 144
    .end local v2    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    return v0
.end method

.method getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    return-object v0
.end method

.method getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move v2, p2

    .local v2, "defStyleAttr":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Landroidx/appcompat/R$styleable;->CompoundButton:[I

    move v9, v2

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v3, v6

    .line 59
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v6, v3

    :try_start_0
    sget v7, Landroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    move-object v6, v3

    sget v7, Landroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move v4, v6

    .line 62
    .local v4, "resourceId":I
    move v6, v4

    if-eqz v6, :cond_0

    .line 63
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 64
    invoke-virtual {v7}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v7

    move v8, v4

    invoke-static {v7, v8}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 63
    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .end local v4    # "resourceId":I
    :cond_0
    move-object v6, v3

    sget v7, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    move-object v7, v3

    sget v8, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    .line 69
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 68
    invoke-static {v6, v7}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_1
    move-object v6, v3

    sget v7, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 72
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    move-object v7, v3

    sget v8, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    const/4 v9, -0x1

    .line 74
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/4 v8, 0x0

    .line 73
    invoke-static {v7, v8}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 72
    invoke-static {v6, v7}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method onSetButtonDrawable()V
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    if-eqz v1, :cond_0

    .line 106
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    .line 107
    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    .line 111
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 112
    goto :goto_0
.end method

.method setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 84
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 86
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 87
    return-void
.end method

.method setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 95
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 97
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 98
    return-void
.end method
