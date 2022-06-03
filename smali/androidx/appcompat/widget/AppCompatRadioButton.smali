.class public Landroidx/appcompat/widget/AppCompatRadioButton;
.super Landroid/widget/RadioButton;
.source "AppCompatRadioButton.java"

# interfaces
.implements Landroidx/core/widget/TintableCompoundButton;


# instance fields
.field private final mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->radioButtonStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v5, v4, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    .line 66
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 67
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v5, v4, Landroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 68
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v2

    move v1, v2

    .line 87
    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    move v3, v1

    .line 88
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getCompoundPaddingLeft(I)I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    .line 113
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    .line 138
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setButtonDrawable(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatRadioButton;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    move-object v1, p1

    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v2, :cond_0

    .line 75
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->onSetButtonDrawable()V

    .line 77
    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v2, :cond_0

    .line 100
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatRadioButton;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 127
    :cond_0
    return-void
.end method
