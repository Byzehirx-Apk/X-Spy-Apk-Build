.class public Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010176

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v2

    sget-object v7, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->TINT_ATTRS:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    move-object v4, v5

    .line 75
    .local v4, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 80
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v6, v5, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 81
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 83
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v6, v5, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 84
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 85
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 86
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 168
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    .line 169
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 171
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 172
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 174
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 134
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 162
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, p1

    .local v1, "outAttrs":Landroid/view/inputmethod/EditorInfo;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatHintHelper;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 105
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    .line 96
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 97
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
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
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 119
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
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
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 147
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 149
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 179
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v3, :cond_0

    .line 180
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 182
    :cond_0
    return-void
.end method
