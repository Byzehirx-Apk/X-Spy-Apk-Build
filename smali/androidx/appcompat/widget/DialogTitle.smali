.class public Landroidx/appcompat/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DialogTitle;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DialogTitle;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DialogTitle;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DialogTitle;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/TextView;->onMeasure(II)V

    .line 58
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v8

    move-object v3, v8

    .line 59
    .local v3, "layout":Landroid/text/Layout;
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 60
    move-object v8, v3

    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    move v4, v8

    .line 61
    .local v4, "lineCount":I
    move v8, v4

    if-lez v8, :cond_1

    .line 62
    move-object v8, v3

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v8

    move v5, v8

    .line 63
    .local v5, "ellipsisCount":I
    move v8, v5

    if-lez v8, :cond_1

    .line 64
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/DialogTitle;->setSingleLine(Z)V

    .line 65
    move-object v8, v0

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/DialogTitle;->setMaxLines(I)V

    .line 67
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/DialogTitle;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    const v11, 0x1010041

    const v12, 0x1030044

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v6, v8

    .line 71
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object v8, v6

    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    move v7, v8

    .line 73
    .local v7, "textSize":I
    move v8, v7

    if-eqz v8, :cond_0

    .line 75
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v7

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/DialogTitle;->setTextSize(IF)V

    .line 77
    :cond_0
    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/TextView;->onMeasure(II)V

    .line 83
    .end local v4    # "lineCount":I
    .end local v5    # "ellipsisCount":I
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "textSize":I
    :cond_1
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DialogTitle;
    move-object v1, p1

    .local v1, "actionModeCallback":Landroid/view/ActionMode$Callback;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    .line 92
    invoke-static {v3, v4}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    .line 91
    invoke-super {v2, v3}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 93
    return-void
.end method
