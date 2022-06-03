.class public Landroidx/appcompat/widget/ActionBarContextView;
.super Landroidx/appcompat/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->actionModeStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
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

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/appcompat/R$styleable;->ActionMode:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    move-object v4, v5

    .line 70
    .local v4, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ActionMode_background:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 71
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ActionMode_titleTextStyle:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 73
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ActionMode_subtitleTextStyle:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 76
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ActionMode_height:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    .line 79
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->ActionMode_closeItemLayout:I

    sget v8, Landroidx/appcompat/R$layout;->abc_action_mode_close_item_material:I

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 83
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private initTitle()V
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 135
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v1, v3

    .line 136
    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v3, v1

    sget v4, Landroidx/appcompat/R$layout;->abc_action_bar_title_item:I

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 137
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContextView;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 138
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v5, Landroidx/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 139
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v5, Landroidx/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 140
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 141
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 143
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 144
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 148
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 152
    .local v1, "hasTitle":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 153
    .local v2, "hasSubtitle":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move v4, v2

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move v4, v1

    if-nez v4, :cond_2

    move v4, v2

    if-eqz v4, :cond_7

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_3

    .line 156
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 158
    :cond_3
    return-void

    .line 151
    .end local v1    # "hasTitle":Z
    .end local v2    # "hasSubtitle":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 152
    .restart local v1    # "hasTitle":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 153
    .restart local v2    # "hasSubtitle":Z
    :cond_6
    const/16 v4, 0x8

    goto :goto_2

    .line 154
    :cond_7
    const/16 v4, 0x8

    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return v0
.end method

.method public closeMode()V
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v1, :cond_0

    .line 194
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 195
    .line 197
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AbsActionBarView;->getContentHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 216
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v1

    move v0, v1

    .line 218
    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public initForMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 11

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, p1

    .local v1, "mode":Landroidx/appcompat/view/ActionMode;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v5, :cond_2

    .line 162
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v2, v5

    .line 163
    .local v2, "inflater":Landroid/view/LayoutInflater;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/ActionBarContextView;->mCloseItemLayout:I

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 164
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 165
    .line 169
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    sget v6, Landroidx/appcompat/R$id;->action_mode_close_button:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 170
    .local v2, "closeButton":Landroid/view/View;
    move-object v5, v2

    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/widget/ActionBarContextView$1;-><init>(Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/ActionMode;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v5

    .line 178
    .local v3, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v5, :cond_1

    .line 179
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    move-result v5

    .line 181
    :cond_1
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 182
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 184
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v4, v5

    .line 186
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 187
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView;

    iput-object v6, v5, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 188
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 189
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void

    .line 165
    .end local v2    # "closeButton":Landroid/view/View;
    .end local v3    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_0

    .line 166
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 224
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    move v0, v1

    .line 226
    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return v0
.end method

.method public isTitleOptional()Z
    .locals 2

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->removeAllViews()V

    .line 201
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 202
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 203
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 89
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 90
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v1

    .line 91
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    .line 93
    :cond_0
    return-void
.end method

.method public bridge synthetic onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AbsActionBarView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 361
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 362
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 363
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 364
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    .prologue
    .line 323
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move/from16 v1, p1

    .local v1, "changed":Z
    move/from16 v2, p2

    .local v2, "l":I
    move/from16 v3, p3

    .local v3, "t":I
    move/from16 v4, p4

    .local v4, "r":I
    move/from16 v5, p5

    .local v5, "b":I
    move-object v13, v0

    invoke-static {v13}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v13

    move v6, v13

    .line 324
    .local v6, "isLayoutRtl":Z
    move v13, v6

    if-eqz v13, :cond_4

    move v13, v4

    move v14, v2

    sub-int/2addr v13, v14

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    :goto_0
    move v7, v13

    .line 325
    .local v7, "x":I
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    move-result v13

    move v8, v13

    .line 326
    .local v8, "y":I
    move v13, v5

    move v14, v3

    sub-int/2addr v13, v14

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    move v9, v13

    .line 328
    .local v9, "contentHeight":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v13, :cond_0

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_0

    .line 329
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v10, v13

    .line 330
    .local v10, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v13, v6

    if-eqz v13, :cond_5

    move-object v13, v10

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    move v11, v13

    .line 331
    .local v11, "startMargin":I
    move v13, v6

    if-eqz v13, :cond_6

    move-object v13, v10

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    move v12, v13

    .line 332
    .local v12, "endMargin":I
    move v13, v7

    move v14, v11

    move v15, v6

    invoke-static {v13, v14, v15}, Landroidx/appcompat/widget/ActionBarContextView;->next(IIZ)I

    move-result v13

    move v7, v13

    .line 333
    move v13, v7

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v14

    add-int/2addr v13, v14

    move v7, v13

    .line 334
    move v13, v7

    move v14, v12

    move v15, v6

    invoke-static {v13, v14, v15}, Landroidx/appcompat/widget/ActionBarContextView;->next(IIZ)I

    move-result v13

    move v7, v13

    .line 337
    .end local v10    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "startMargin":I
    .end local v12    # "endMargin":I
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v13, :cond_1

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v13, :cond_1

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_1

    .line 338
    move v13, v7

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v14

    add-int/2addr v13, v14

    move v7, v13

    .line 341
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v13, :cond_2

    .line 342
    move v13, v7

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v14

    add-int/2addr v13, v14

    move v7, v13

    .line 345
    :cond_2
    move v13, v6

    if-eqz v13, :cond_7

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v13

    :goto_3
    move v7, v13

    .line 347
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v13, :cond_3

    .line 348
    move v13, v7

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v6

    if-nez v19, :cond_8

    const/16 v19, 0x1

    :goto_4
    invoke-virtual/range {v14 .. v19}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v14

    add-int/2addr v13, v14

    move v7, v13

    .line 350
    :cond_3
    return-void

    .line 324
    .end local v7    # "x":I
    .end local v8    # "y":I
    .end local v9    # "contentHeight":I
    :cond_4
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v13

    goto/16 :goto_0

    .line 330
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    .restart local v9    # "contentHeight":I
    .restart local v10    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    move-object v13, v10

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 331
    .restart local v11    # "startMargin":I
    :cond_6
    move-object v13, v10

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 345
    .end local v10    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "startMargin":I
    :cond_7
    move v13, v4

    move v14, v2

    sub-int/2addr v13, v14

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    goto :goto_3

    .line 348
    :cond_8
    const/16 v19, 0x0

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 24

    .prologue
    .line 243
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    move/from16 v5, v18

    .line 244
    .local v5, "widthMode":I
    move/from16 v18, v5

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 245
    new-instance v18, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " can only be used "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 249
    :cond_0
    move/from16 v18, v4

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    move/from16 v6, v18

    .line 250
    .local v6, "heightMode":I
    move/from16 v18, v6

    if-nez v18, :cond_1

    .line 251
    new-instance v18, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " can only be used "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 255
    :cond_1
    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    move/from16 v7, v18

    .line 257
    .local v7, "contentWidth":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v18, v0

    if-lez v18, :cond_8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v18, v0

    .line 258
    :goto_0
    move/from16 v8, v18

    .line 260
    .local v8, "maxHeight":I
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    move-result v18

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v9, v18

    .line 261
    .local v9, "verticalPadding":I
    move/from16 v18, v7

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v10, v18

    .line 262
    .local v10, "availableWidth":I
    move/from16 v18, v8

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v11, v18

    .line 263
    .local v11, "height":I
    move/from16 v18, v11

    const/high16 v19, -0x80000000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v12, v18

    .line 265
    .local v12, "childSpecHeight":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 266
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v19, v0

    move/from16 v20, v10

    move/from16 v21, v12

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroidx/appcompat/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v18

    move/from16 v10, v18

    .line 267
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v13, v18

    .line 268
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move/from16 v18, v10

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    sub-int v18, v18, v19

    move/from16 v10, v18

    .line 271
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 272
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v19, v0

    move/from16 v20, v10

    move/from16 v21, v12

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroidx/appcompat/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v18

    move/from16 v10, v18

    .line 276
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 277
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 278
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v13, v18

    .line 279
    .local v13, "titleWidthSpec":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move/from16 v19, v13

    move/from16 v20, v12

    invoke-virtual/range {v18 .. v20}, Landroid/widget/LinearLayout;->measure(II)V

    .line 280
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v18

    move/from16 v14, v18

    .line 281
    .local v14, "titleWidth":I
    move/from16 v18, v14

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    const/16 v18, 0x1

    :goto_1
    move/from16 v15, v18

    .line 282
    .local v15, "titleFits":Z
    move/from16 v18, v15

    if-eqz v18, :cond_4

    .line 283
    move/from16 v18, v10

    move/from16 v19, v14

    sub-int v18, v18, v19

    move/from16 v10, v18

    .line 285
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move/from16 v19, v15

    if-eqz v19, :cond_a

    const/16 v19, 0x0

    :goto_2
    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    .line 291
    .end local v13    # "titleWidthSpec":I
    .end local v14    # "titleWidth":I
    .end local v15    # "titleFits":Z
    :cond_5
    :goto_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 292
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v13, v18

    .line 293
    .local v13, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    const/high16 v18, 0x40000000    # 2.0f

    :goto_4
    move/from16 v14, v18

    .line 295
    .local v14, "customWidthMode":I
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    if-ltz v18, :cond_d

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v19, v10

    .line 296
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    :goto_5
    move/from16 v15, v18

    .line 297
    .local v15, "customWidth":I
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    const/high16 v18, 0x40000000    # 2.0f

    :goto_6
    move/from16 v16, v18

    .line 299
    .local v16, "customHeightMode":I
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    if-ltz v18, :cond_f

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v19, v11

    .line 300
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    :goto_7
    move/from16 v17, v18

    .line 301
    .local v17, "customHeight":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v18, v0

    move/from16 v19, v15

    move/from16 v20, v14

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v20, v17

    move/from16 v21, v16

    .line 302
    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 301
    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->measure(II)V

    .line 305
    .end local v13    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v14    # "customWidthMode":I
    .end local v15    # "customWidth":I
    .end local v16    # "customHeightMode":I
    .end local v17    # "customHeight":I
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v18, v0

    if-gtz v18, :cond_11

    .line 306
    const/16 v18, 0x0

    move/from16 v13, v18

    .line 307
    .local v13, "measuredHeight":I
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/ActionBarContextView;->getChildCount()I

    move-result v18

    move/from16 v14, v18

    .line 308
    .local v14, "count":I
    const/16 v18, 0x0

    move/from16 v15, v18

    .local v15, "i":I
    :goto_8
    move/from16 v18, v15

    move/from16 v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 309
    move-object/from16 v18, v2

    move/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v16, v18

    .line 310
    .local v16, "v":Landroid/view/View;
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v19, v9

    add-int v18, v18, v19

    move/from16 v17, v18

    .line 311
    .local v17, "paddedViewHeight":I
    move/from16 v18, v17

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 312
    move/from16 v18, v17

    move/from16 v13, v18

    .line 308
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 257
    .end local v8    # "maxHeight":I
    .end local v9    # "verticalPadding":I
    .end local v10    # "availableWidth":I
    .end local v11    # "height":I
    .end local v12    # "childSpecHeight":I
    .end local v13    # "measuredHeight":I
    .end local v14    # "count":I
    .end local v15    # "i":I
    .end local v16    # "v":Landroid/view/View;
    .end local v17    # "paddedViewHeight":I
    :cond_8
    move/from16 v18, v4

    .line 258
    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    goto/16 :goto_0

    .line 281
    .restart local v8    # "maxHeight":I
    .restart local v9    # "verticalPadding":I
    .restart local v10    # "availableWidth":I
    .restart local v11    # "height":I
    .restart local v12    # "childSpecHeight":I
    .local v13, "titleWidthSpec":I
    .local v14, "titleWidth":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 285
    .local v15, "titleFits":Z
    :cond_a
    const/16 v19, 0x8

    goto/16 :goto_2

    .line 287
    .end local v13    # "titleWidthSpec":I
    .end local v14    # "titleWidth":I
    .end local v15    # "titleFits":Z
    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move/from16 v20, v10

    move/from16 v21, v12

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroidx/appcompat/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v18

    move/from16 v10, v18

    goto/16 :goto_3

    .line 293
    .local v13, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    const/high16 v18, -0x80000000

    goto/16 :goto_4

    .line 296
    .local v14, "customWidthMode":I
    :cond_d
    move/from16 v18, v10

    goto/16 :goto_5

    .line 297
    .local v15, "customWidth":I
    :cond_e
    const/high16 v18, -0x80000000

    goto/16 :goto_6

    .line 300
    .local v16, "customHeightMode":I
    :cond_f
    move/from16 v18, v11

    goto/16 :goto_7

    .line 315
    .end local v16    # "customHeightMode":I
    .local v13, "measuredHeight":I
    .local v14, "count":I
    .local v15, "i":I
    :cond_10
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v13

    invoke-virtual/range {v18 .. v20}, Landroidx/appcompat/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 316
    .line 319
    .end local v13    # "measuredHeight":I
    .end local v14    # "count":I
    .end local v15    # "i":I
    :goto_9
    return-void

    .line 317
    :cond_11
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual/range {v18 .. v20}, Landroidx/appcompat/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return v0
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move v1, p1

    .local v1, "height":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    .line 98
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 102
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 104
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 105
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 106
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 107
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 109
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 110
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 112
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->requestLayout()V

    .line 113
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, p1

    .local v1, "subtitle":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 122
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ActionBarContextView;->initTitle()V

    .line 123
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 117
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ActionBarContextView;->initTitle()V

    .line 118
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 4

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move v1, p1

    .local v1, "titleOptional":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq v2, v3, :cond_0

    .line 372
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->requestLayout()V

    .line 374
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    .line 375
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-super {v4, v5, v6, v7}, Landroidx/appcompat/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return-object v0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    return v0
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 208
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v1

    move v0, v1

    .line 210
    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarContextView;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
