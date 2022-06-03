.class public Landroidx/appcompat/widget/AppCompatCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "AppCompatCheckedTextView.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010108

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCheckedTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCheckedTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const v6, 0x10103c8

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCheckedTextView;
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

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v6, v5, Landroidx/appcompat/widget/AppCompatCheckedTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 58
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatCheckedTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 59
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatCheckedTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 61
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v2

    sget-object v7, Landroidx/appcompat/widget/AppCompatCheckedTextView;->TINT_ATTRS:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    move-object v4, v5

    .line 63
    .local v4, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 65
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCheckedTextView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 83
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatCheckedTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_0

    .line 84
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatCheckedTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCheckedTextView;
    move-object v1, p1

    .local v1, "outAttrs":Landroid/view/inputmethod/EditorInfo;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/CheckedTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatHintHelper;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatCheckedTextView;
    return-object v0
.end method

.method public setCheckMarkDrawable(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCheckedTextView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCheckedTextView;
    move-object v1, p1

    .local v1, "actionModeCallback":Landroid/view/ActionMode$Callback;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    .line 101
    invoke-static {v3, v4}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    .line 100
    invoke-super {v2, v3}, Landroid/widget/CheckedTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 102
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatCheckedTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 75
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatCheckedTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v3, :cond_0

    .line 76
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatCheckedTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 78
    :cond_0
    return-void
.end method
