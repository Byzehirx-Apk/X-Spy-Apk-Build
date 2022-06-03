.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroidx/appcompat/widget/Toolbar$SavedState;,
        Landroidx/appcompat/widget/Toolbar$LayoutParams;,
        Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field mButtonGravity:I

.field mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 30
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 233
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/Toolbar;
    move-object/from16 v3, p1

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v4, p2

    .local v4, "attrs":Landroid/util/AttributeSet;
    move/from16 v5, p3

    .local v5, "defStyleAttr":I
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    invoke-direct/range {v22 .. v25}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    move-object/from16 v22, v2

    const v23, 0x800013

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 190
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 193
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 195
    move-object/from16 v22, v2

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 199
    move-object/from16 v22, v2

    new-instance v23, Landroidx/appcompat/widget/Toolbar$1;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v25}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 218
    move-object/from16 v22, v2

    new-instance v23, Landroidx/appcompat/widget/Toolbar$2;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v25}, Landroidx/appcompat/widget/Toolbar$2;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 236
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v23, v4

    sget-object v24, Landroidx/appcompat/R$styleable;->Toolbar:[I

    move/from16 v25, v5

    const/16 v26, 0x0

    invoke-static/range {v22 .. v26}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v22

    move-object/from16 v6, v22

    .line 239
    .local v6, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    .line 240
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 241
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_android_gravity:I

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 242
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_buttonGravity:I

    const/16 v25, 0x30

    invoke-virtual/range {v23 .. v25}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 245
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_titleMargin:I

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v7, v22

    .line 246
    .local v7, "titleMargin":I
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 248
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_titleMargins:I

    move/from16 v24, v7

    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v7, v22

    .line 250
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move/from16 v26, v7

    move-object/from16 v28, v25

    move/from16 v29, v26

    move/from16 v25, v29

    move-object/from16 v26, v28

    move/from16 v27, v29

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    move-object/from16 v28, v24

    move/from16 v29, v25

    move/from16 v24, v29

    move-object/from16 v25, v28

    move/from16 v26, v29

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v28, v23

    move/from16 v29, v24

    move/from16 v23, v29

    move-object/from16 v24, v28

    move/from16 v25, v29

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 252
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v8, v22

    .line 253
    .local v8, "marginStart":I
    move/from16 v22, v8

    if-ltz v22, :cond_1

    .line 254
    move-object/from16 v22, v2

    move/from16 v23, v8

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 257
    :cond_1
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v9, v22

    .line 258
    .local v9, "marginEnd":I
    move/from16 v22, v9

    if-ltz v22, :cond_2

    .line 259
    move-object/from16 v22, v2

    move/from16 v23, v9

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 262
    :cond_2
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v10, v22

    .line 263
    .local v10, "marginTop":I
    move/from16 v22, v10

    if-ltz v22, :cond_3

    .line 264
    move-object/from16 v22, v2

    move/from16 v23, v10

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 267
    :cond_3
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v11, v22

    .line 269
    .local v11, "marginBottom":I
    move/from16 v22, v11

    if-ltz v22, :cond_4

    .line 270
    move-object/from16 v22, v2

    move/from16 v23, v11

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 273
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    .line 275
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    const/high16 v24, -0x80000000

    .line 276
    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v12, v22

    .line 278
    .local v12, "contentInsetStart":I
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    const/high16 v24, -0x80000000

    .line 279
    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v13, v22

    .line 281
    .local v13, "contentInsetEnd":I
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    const/16 v24, 0x0

    .line 282
    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v14, v22

    .line 283
    .local v14, "contentInsetLeft":I
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    const/16 v24, 0x0

    .line 284
    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v15, v22

    .line 286
    .local v15, "contentInsetRight":I
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 287
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    move-object/from16 v22, v0

    move/from16 v23, v14

    move/from16 v24, v15

    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 289
    move/from16 v22, v12

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    move/from16 v22, v13

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 291
    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    move-object/from16 v22, v0

    move/from16 v23, v12

    move/from16 v24, v13

    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    .line 294
    :cond_6
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    const/high16 v25, -0x80000000

    invoke-virtual/range {v23 .. v25}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 296
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    const/high16 v25, -0x80000000

    invoke-virtual/range {v23 .. v25}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 299
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual/range {v23 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 300
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual/range {v23 .. v24}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 302
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v16, v22

    .line 303
    .local v16, "title":Ljava/lang/CharSequence;
    move-object/from16 v22, v16

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 304
    move-object/from16 v22, v2

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    :cond_7
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v17, v22

    .line 308
    .local v17, "subtitle":Ljava/lang/CharSequence;
    move-object/from16 v22, v17

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 309
    move-object/from16 v22, v2

    move-object/from16 v23, v17

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 313
    :cond_8
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 314
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_popupTheme:I

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 316
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v18, v22

    .line 317
    .local v18, "navIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v22, v18

    if-eqz v22, :cond_9

    .line 318
    move-object/from16 v22, v2

    move-object/from16 v23, v18

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_9
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v19, v22

    .line 321
    .local v19, "navDesc":Ljava/lang/CharSequence;
    move-object/from16 v22, v19

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 322
    move-object/from16 v22, v2

    move-object/from16 v23, v19

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 325
    :cond_a
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_logo:I

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v20, v22

    .line 326
    .local v20, "logo":Landroid/graphics/drawable/Drawable;
    move-object/from16 v22, v20

    if-eqz v22, :cond_b

    .line 327
    move-object/from16 v22, v2

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_b
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v21, v22

    .line 331
    .local v21, "logoDesc":Ljava/lang/CharSequence;
    move-object/from16 v22, v21

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 332
    move-object/from16 v22, v2

    move-object/from16 v23, v21

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 335
    :cond_c
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 336
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_titleTextColor:I

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 339
    :cond_d
    move-object/from16 v22, v6

    sget v23, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 340
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 342
    :cond_e
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 343
    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2019
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move v2, p2

    .local v2, "gravity":I
    move-object v9, v0

    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v3, v9

    .line 2020
    .local v3, "isRtl":Z
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v9

    move v4, v9

    .line 2021
    .local v4, "childCount":I
    move v9, v2

    move-object v10, v0

    .line 2022
    invoke-static {v10}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    .line 2021
    invoke-static {v9, v10}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v9

    move v5, v9

    .line 2024
    .local v5, "absGrav":I
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 2026
    move v9, v3

    if-eqz v9, :cond_3

    .line 2027
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    if-ltz v9, :cond_2

    .line 2028
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2029
    .local v7, "child":Landroid/view/View;
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v8, v9

    .line 2030
    .local v8, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v9, v8

    iget v9, v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v9, :cond_0

    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v0

    move-object v10, v8

    iget v10, v10, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2031
    invoke-direct {v9, v10}, Landroidx/appcompat/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_0

    .line 2032
    move-object v9, v1

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 2027
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2019
    .end local v3    # "isRtl":Z
    .end local v4    # "childCount":I
    .end local v5    # "absGrav":I
    .end local v6    # "i":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 2027
    .line 2045
    .restart local v3    # "isRtl":Z
    .restart local v4    # "childCount":I
    .restart local v5    # "absGrav":I
    .restart local v6    # "i":I
    :cond_2
    return-void

    .line 2036
    .end local v6    # "i":I
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    .restart local v6    # "i":I
    :goto_2
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 2037
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2038
    .restart local v7    # "child":Landroid/view/View;
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v8, v9

    .line 2039
    .restart local v8    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v9, v8

    iget v9, v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v9, :cond_4

    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v0

    move-object v10, v8

    iget v10, v10, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2040
    invoke-direct {v9, v10}, Landroidx/appcompat/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_4

    .line 2041
    move-object v9, v1

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 2036
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 8

    .prologue
    .line 1390
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move v2, p2

    .local v2, "allowHide":Z
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v3, v5

    .line 1392
    .local v3, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1393
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v5

    move-object v4, v5

    .line 1399
    .local v4, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :goto_0
    move-object v5, v4

    const/4 v6, 0x1

    iput v6, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1401
    move v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1402
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1403
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1407
    :goto_1
    return-void

    .line 1394
    .end local v4    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1395
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v5

    move-object v4, v5

    .restart local v4    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    goto :goto_0

    .line 1397
    .end local v4    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_1
    move-object v5, v3

    check-cast v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v4, v5

    .restart local v4    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    goto :goto_0

    .line 1405
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private ensureContentInsets()V
    .locals 5

    .prologue
    .line 2168
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-nez v1, :cond_0

    .line 2169
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/widget/RtlSpacingHelper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/appcompat/widget/RtlSpacingHelper;-><init>()V

    iput-object v2, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 2171
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 6

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 686
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 688
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 7

    .prologue
    .line 1033
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    .line 1034
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1036
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v1, v2

    .line 1037
    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v2, :cond_0

    .line 1038
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v3, v2, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1040
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1041
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1043
    .end local v1    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 7

    .prologue
    .line 1046
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v2, :cond_0

    .line 1047
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/ActionMenuView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1048
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1049
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1050
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 1051
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1052
    .local v1, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v2, v1

    const v3, 0x800005

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 1053
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1056
    .end local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 9

    .prologue
    .line 1361
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 1362
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/AppCompatImageButton;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Landroidx/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1364
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1365
    .local v1, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v2, v1

    const v3, 0x800003

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 1366
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    .end local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 7

    .prologue
    .line 2048
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "gravity":I
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    move v2, v5

    .line 2049
    .local v2, "ld":I
    move v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    move v3, v5

    .line 2050
    .local v3, "absGrav":I
    move v5, v3

    const/4 v6, 0x7

    and-int/lit8 v5, v5, 0x7

    move v4, v5

    .line 2051
    .local v4, "hGrav":I
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 2057
    :pswitch_0
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x5

    :goto_0
    move v0, v5

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :goto_1
    return v0

    .line 2055
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :pswitch_1
    move v5, v4

    move v0, v5

    goto :goto_1

    .line 2057
    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    .line 2051
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 16

    .prologue
    .line 1968
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "alignmentHeight":I
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v3, v12

    .line 1969
    .local v3, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move v4, v12

    .line 1970
    .local v4, "childHeight":I
    move v12, v2

    if-lez v12, :cond_1

    move v12, v4

    move v13, v2

    sub-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    :goto_0
    move v5, v12

    .line 1971
    .local v5, "alignmentOffset":I
    move-object v12, v0

    move-object v13, v3

    iget v13, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {v12, v13}, Landroidx/appcompat/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 1981
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v12

    move v6, v12

    .line 1982
    .local v6, "paddingTop":I
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v12

    move v7, v12

    .line 1983
    .local v7, "paddingBottom":I
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v12

    move v8, v12

    .line 1984
    .local v8, "height":I
    move v12, v8

    move v13, v6

    sub-int/2addr v12, v13

    move v13, v7

    sub-int/2addr v12, v13

    move v9, v12

    .line 1985
    .local v9, "space":I
    move v12, v9

    move v13, v4

    sub-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    move v10, v12

    .line 1986
    .local v10, "spaceAbove":I
    move v12, v10

    move-object v13, v3

    iget v13, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v12, v13, :cond_2

    .line 1987
    move-object v12, v3

    iget v12, v12, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move v10, v12

    .line 1995
    :cond_0
    :goto_1
    move v12, v6

    move v13, v10

    add-int/2addr v12, v13

    move v0, v12

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    .end local v6    # "paddingTop":I
    .end local v7    # "paddingBottom":I
    .end local v8    # "height":I
    .end local v9    # "space":I
    .end local v10    # "spaceAbove":I
    :goto_2
    return v0

    .line 1970
    .end local v5    # "alignmentOffset":I
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 1973
    .restart local v5    # "alignmentOffset":I
    :sswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v12

    move v13, v5

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_2

    .line 1976
    :sswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    move v13, v4

    sub-int/2addr v12, v13

    move-object v13, v3

    iget v13, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    move v13, v5

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_2

    .line 1989
    .restart local v6    # "paddingTop":I
    .restart local v7    # "paddingBottom":I
    .restart local v8    # "height":I
    .restart local v9    # "space":I
    .restart local v10    # "spaceAbove":I
    :cond_2
    move v12, v8

    move v13, v7

    sub-int/2addr v12, v13

    move v13, v4

    sub-int/2addr v12, v13

    move v13, v10

    sub-int/2addr v12, v13

    move v13, v6

    sub-int/2addr v12, v13

    move v11, v12

    .line 1991
    .local v11, "spaceBelow":I
    move v12, v11

    move-object v13, v3

    iget v13, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v12, v13, :cond_0

    .line 1992
    const/4 v12, 0x0

    move v13, v10

    move-object v14, v3

    iget v14, v14, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move v15, v11

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v10, v12

    goto :goto_1

    .line 1971
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 5

    .prologue
    .line 2000
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "gravity":I
    move v3, v1

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v2, v3

    .line 2001
    .local v2, "vgrav":I
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 2007
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :goto_0
    return v0

    .line 2005
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :sswitch_0
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 2001
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 2066
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    .line 2067
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v3, v2

    invoke-static {v3}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    move-object v4, v2

    .line 2068
    invoke-static {v4}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 5

    .prologue
    .line 1059
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    new-instance v1, Landroidx/appcompat/view/SupportMenuInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 2072
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    .line 2073
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v3, v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object v4, v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .line 1923
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object/from16 v1, p1

    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v2, p2

    .local v2, "collapsingMargins":[I
    move-object v14, v2

    const/4 v15, 0x0

    aget v14, v14, v15

    move v3, v14

    .line 1924
    .local v3, "collapseLeft":I
    move-object v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    move v4, v14

    .line 1925
    .local v4, "collapseRight":I
    const/4 v14, 0x0

    move v5, v14

    .line 1926
    .local v5, "width":I
    move-object v14, v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v6, v14

    .line 1927
    .local v6, "count":I
    const/4 v14, 0x0

    move v7, v14

    .local v7, "i":I
    :goto_0
    move v14, v7

    move v15, v6

    if-ge v14, v15, :cond_0

    .line 1928
    move-object v14, v1

    move v15, v7

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v8, v14

    .line 1929
    .local v8, "v":Landroid/view/View;
    move-object v14, v8

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v9, v14

    .line 1930
    .local v9, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v14, v9

    iget v14, v14, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    move v15, v3

    sub-int/2addr v14, v15

    move v10, v14

    .line 1931
    .local v10, "l":I
    move-object v14, v9

    iget v14, v14, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    move v15, v4

    sub-int/2addr v14, v15

    move v11, v14

    .line 1932
    .local v11, "r":I
    const/4 v14, 0x0

    move v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v12, v14

    .line 1933
    .local v12, "leftMargin":I
    const/4 v14, 0x0

    move v15, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v13, v14

    .line 1934
    .local v13, "rightMargin":I
    const/4 v14, 0x0

    move v15, v10

    neg-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v3, v14

    .line 1935
    const/4 v14, 0x0

    move v15, v11

    neg-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v4, v14

    .line 1936
    move v14, v5

    move v15, v12

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    move/from16 v16, v13

    add-int v15, v15, v16

    add-int/2addr v14, v15

    move v5, v14

    .line 1927
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1938
    .end local v8    # "v":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v10    # "l":I
    .end local v11    # "r":I
    .end local v12    # "leftMargin":I
    .end local v13    # "rightMargin":I
    :cond_0
    move v14, v5

    move v0, v14

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 2140
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2105
    move-object v0, p0

    .local v0, "child":Landroid/view/View;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iget v1, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "child":Landroid/view/View;
    return v0

    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 15

    .prologue
    .line 1943
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "left":I
    move-object/from16 v3, p3

    .local v3, "collapsingMargins":[I
    move/from16 v4, p4

    .local v4, "alignmentHeight":I
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v5, v9

    .line 1944
    .local v5, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v9, v5

    iget v9, v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    move-object v10, v3

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    move v6, v9

    .line 1945
    .local v6, "l":I
    move v9, v2

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v9, v10

    move v2, v9

    .line 1946
    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v6

    neg-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v9, v10

    .line 1947
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroidx/appcompat/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v9

    move v7, v9

    .line 1948
    .local v7, "top":I
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move v8, v9

    .line 1949
    .local v8, "childWidth":I
    move-object v9, v1

    move v10, v2

    move v11, v7

    move v12, v2

    move v13, v8

    add-int/2addr v12, v13

    move v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 1950
    move v9, v2

    move v10, v8

    move-object v11, v5

    iget v11, v11, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    move v2, v9

    .line 1951
    move v9, v2

    move v0, v9

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 15

    .prologue
    .line 1956
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "right":I
    move-object/from16 v3, p3

    .local v3, "collapsingMargins":[I
    move/from16 v4, p4

    .local v4, "alignmentHeight":I
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v5, v9

    .line 1957
    .local v5, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v9, v5

    iget v9, v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    move-object v10, v3

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    move v6, v9

    .line 1958
    .local v6, "r":I
    move v9, v2

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v9, v10

    move v2, v9

    .line 1959
    move-object v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v12, v6

    neg-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v9, v10

    .line 1960
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroidx/appcompat/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v9

    move v7, v9

    .line 1961
    .local v7, "top":I
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move v8, v9

    .line 1962
    .local v8, "childWidth":I
    move-object v9, v1

    move v10, v2

    move v11, v8

    sub-int/2addr v10, v11

    move v11, v7

    move v12, v2

    move v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 1963
    move v9, v2

    move v10, v8

    move-object v11, v5

    iget v11, v11, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    move v2, v9

    .line 1964
    move v9, v2

    move v0, v9

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 20

    .prologue
    .line 1532
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/appcompat/widget/Toolbar;
    move-object/from16 v2, p1

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p2

    .local v3, "parentWidthMeasureSpec":I
    move/from16 v4, p3

    .local v4, "widthUsed":I
    move/from16 v5, p4

    .local v5, "parentHeightMeasureSpec":I
    move/from16 v6, p5

    .local v6, "heightUsed":I
    move-object/from16 v7, p6

    .local v7, "collapsingMargins":[I
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v8, v16

    .line 1534
    .local v8, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    move-object/from16 v17, v7

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v9, v16

    .line 1535
    .local v9, "leftDiff":I
    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    move-object/from16 v17, v7

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v10, v16

    .line 1536
    .local v10, "rightDiff":I
    const/16 v16, 0x0

    move/from16 v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v11, v16

    .line 1537
    .local v11, "leftMargin":I
    const/16 v16, 0x0

    move/from16 v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v12, v16

    .line 1538
    .local v12, "rightMargin":I
    move/from16 v16, v11

    move/from16 v17, v12

    add-int v16, v16, v17

    move/from16 v13, v16

    .line 1539
    .local v13, "hMargins":I
    move-object/from16 v16, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v9

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v16, v17

    .line 1540
    move-object/from16 v16, v7

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v19, v10

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v16, v17

    .line 1542
    move/from16 v16, v3

    move-object/from16 v17, v1

    .line 1543
    invoke-virtual/range {v17 .. v17}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v17

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v18, v13

    add-int v17, v17, v18

    move/from16 v18, v4

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v18, v0

    .line 1542
    invoke-static/range {v16 .. v18}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v14, v16

    .line 1544
    .local v14, "childWidthMeasureSpec":I
    move/from16 v16, v5

    move-object/from16 v17, v1

    .line 1545
    invoke-virtual/range {v17 .. v17}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v17

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v18, v6

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v18, v0

    .line 1544
    invoke-static/range {v16 .. v18}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v15, v16

    .line 1548
    .local v15, "childHeightMeasureSpec":I
    move-object/from16 v16, v2

    move/from16 v17, v14

    move/from16 v18, v15

    invoke-virtual/range {v16 .. v18}, Landroid/view/View;->measure(II)V

    .line 1549
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v17, v13

    add-int v16, v16, v17

    move/from16 v1, v16

    .end local v1    # "this":Landroidx/appcompat/widget/Toolbar;
    return v1
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 15

    .prologue
    .line 1507
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "parentWidthSpec":I
    move/from16 v3, p3

    .local v3, "widthUsed":I
    move/from16 v4, p4

    .local v4, "parentHeightSpec":I
    move/from16 v5, p5

    .local v5, "heightUsed":I
    move/from16 v6, p6

    .local v6, "heightConstraint":I
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v7, v12

    .line 1509
    .local v7, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v12, v2

    move-object v13, v0

    .line 1510
    invoke-virtual {v13}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    move v14, v3

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1509
    invoke-static {v12, v13, v14}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v12

    move v8, v12

    .line 1512
    .local v8, "childWidthSpec":I
    move v12, v4

    move-object v13, v0

    .line 1513
    invoke-virtual {v13}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    move v14, v5

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1512
    invoke-static {v12, v13, v14}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v12

    move v9, v12

    .line 1516
    .local v9, "childHeightSpec":I
    move v12, v9

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    move v10, v12

    .line 1517
    .local v10, "childHeightMode":I
    move v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v12, v13, :cond_0

    move v12, v6

    if-ltz v12, :cond_0

    .line 1518
    move v12, v10

    if-eqz v12, :cond_1

    move v12, v9

    .line 1519
    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    move v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_0
    move v11, v12

    .line 1521
    .local v11, "size":I
    move v12, v11

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v9, v12

    .line 1523
    .end local v11    # "size":I
    :cond_0
    move-object v12, v1

    move v13, v8

    move v14, v9

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 1524
    return-void

    .line 1519
    :cond_1
    move v12, v6

    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 3

    .prologue
    .line 1445
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1446
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1447
    return-void
.end method

.method private shouldCollapse()Z
    .locals 6

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 1566
    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    .local v1, "childCount":I
    .local v2, "i":I
    :goto_0
    return v0

    .line 1558
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1559
    .restart local v1    # "childCount":I
    const/4 v4, 0x0

    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1560
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1561
    .local v3, "child":Landroid/view/View;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    move-object v4, v3

    .line 1562
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 1563
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1559
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1566
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 2062
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    if-ne v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 6

    .prologue
    .line 2131
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 2133
    .local v1, "count":I
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 2134
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2133
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2136
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2137
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 2101
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 3

    .prologue
    .line 715
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v1, v2

    .line 717
    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 718
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    move-result v2

    .line 720
    :cond_0
    return-void

    .line 715
    .end local v1    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 2

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_0

    .line 586
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    .line 588
    :cond_0
    return-void
.end method

.method ensureCollapseButtonView()V
    .locals 9

    .prologue
    .line 1371
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 1372
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/AppCompatImageButton;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Landroidx/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1374
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1375
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1376
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1377
    .local v1, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v2, v1

    const v3, 0x800003

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 1378
    move-object v2, v1

    const/4 v3, 0x2

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1379
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1380
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v3, Landroidx/appcompat/widget/Toolbar$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/Toolbar$3;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1387
    .end local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 6

    .prologue
    .line 2096
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    new-instance v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 7

    .prologue
    .line 2078
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 6

    .prologue
    .line 2083
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v2, :cond_0

    .line 2084
    new-instance v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V

    move-object v0, v2

    .line 2090
    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :goto_0
    return-object v0

    .line 2085
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_1

    .line 2086
    new-instance v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 2087
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 2088
    new-instance v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 2090
    :cond_2
    new-instance v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getContentInsetEnd()I
    .locals 2

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/RtlSpacingHelper;->getEnd()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetEndWithActions()I
    .locals 3

    .prologue
    .line 1268
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1270
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .line 1268
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    move-object v1, v0

    .line 1270
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    goto :goto_0
.end method

.method public getContentInsetLeft()I
    .locals 2

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/RtlSpacingHelper;->getLeft()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetRight()I
    .locals 2

    .prologue
    .line 1209
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/RtlSpacingHelper;->getRight()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetStart()I
    .locals 2

    .prologue
    .line 1126
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/RtlSpacingHelper;->getStart()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 3

    .prologue
    .line 1225
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1227
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .line 1225
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    move-object v1, v0

    .line 1227
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 6

    .prologue
    .line 1320
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    const/4 v3, 0x0

    move v1, v3

    .line 1321
    .local v1, "hasActions":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_0

    .line 1322
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v3

    move-object v2, v3

    .line 1323
    .local v2, "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 1325
    .end local v2    # "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_0
    move v3, v1

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 1326
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1327
    :goto_1
    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .line 1323
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    .restart local v2    # "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1326
    .end local v2    # "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_2
    move-object v3, v0

    .line 1327
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v3

    goto :goto_1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 3

    .prologue
    .line 1340
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 1341
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    .line 1342
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .line 1341
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    move-object v1, v0

    .line 1342
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentContentInsetRight()I
    .locals 3

    .prologue
    .line 1355
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 1356
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    .line 1357
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .line 1356
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    move-object v1, v0

    .line 1357
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentContentInsetStart()I
    .locals 4

    .prologue
    .line 1306
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1307
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1308
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .line 1307
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    move-object v1, v0

    .line 1308
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    goto :goto_0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 1007
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 1008
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 889
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getOuterActionMenuPresenter()Landroidx/appcompat/widget/ActionMenuPresenter;
    .locals 2

    .prologue
    .line 2177
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1028
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 1029
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 2181
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method public getPopupTheme()I
    .locals 2

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 2

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 2

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method public getTitleMarginStart()I
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method public getTitleMarginTop()I
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method public getWrapper()Landroidx/appcompat/widget/DecorToolbar;
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2111
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    if-nez v1, :cond_0

    .line 2112
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v2, v1, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 2114
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 2

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inflateMenu(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1072
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 594
    const/4 v4, 0x0

    move v0, v4

    .line 608
    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    .local v1, "titleLayout":Landroid/text/Layout;
    :goto_0
    return v0

    .line 597
    .end local v1    # "titleLayout":Landroid/text/Layout;
    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    move-object v1, v4

    .line 598
    .restart local v1    # "titleLayout":Landroid/text/Layout;
    move-object v4, v1

    if-nez v4, :cond_1

    .line 599
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 602
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    move v2, v4

    .line 603
    .local v2, "lineCount":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_3

    .line 604
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 605
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 603
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 608
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1451
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1452
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1453
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1486
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    move v2, v4

    .line 1487
    .local v2, "action":I
    move v4, v2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    .line 1488
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 1491
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    if-nez v4, :cond_1

    .line 1492
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v3, v4

    .line 1493
    .local v3, "handled":Z
    move v4, v2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 1494
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 1498
    .end local v3    # "handled":Z
    :cond_1
    move v4, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1499
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 1502
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 46

    .prologue
    .line 1705
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/Toolbar;
    move/from16 v3, p1

    .local v3, "changed":Z
    move/from16 v4, p2

    .local v4, "l":I
    move/from16 v5, p3

    .local v5, "t":I
    move/from16 v6, p4

    .local v6, "r":I
    move/from16 v7, p5

    .local v7, "b":I
    move-object/from16 v37, v2

    invoke-static/range {v37 .. v37}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_e

    const/16 v37, 0x1

    :goto_0
    move/from16 v8, v37

    .line 1706
    .local v8, "isRtl":Z
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/Toolbar;->getWidth()I

    move-result v37

    move/from16 v9, v37

    .line 1707
    .local v9, "width":I
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v37

    move/from16 v10, v37

    .line 1708
    .local v10, "height":I
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v37

    move/from16 v11, v37

    .line 1709
    .local v11, "paddingLeft":I
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v37

    move/from16 v12, v37

    .line 1710
    .local v12, "paddingRight":I
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v37

    move/from16 v13, v37

    .line 1711
    .local v13, "paddingTop":I
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v37

    move/from16 v14, v37

    .line 1712
    .local v14, "paddingBottom":I
    move/from16 v37, v11

    move/from16 v15, v37

    .line 1713
    .local v15, "left":I
    move/from16 v37, v9

    move/from16 v38, v12

    sub-int v37, v37, v38

    move/from16 v16, v37

    .line 1715
    .local v16, "right":I
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    move-object/from16 v37, v0

    move-object/from16 v17, v37

    .line 1716
    .local v17, "collapsingMargins":[I
    move-object/from16 v37, v17

    const/16 v38, 0x0

    move-object/from16 v39, v17

    const/16 v40, 0x1

    const/16 v41, 0x0

    move-object/from16 v43, v39

    move/from16 v44, v40

    move/from16 v45, v41

    move/from16 v39, v45

    move-object/from16 v40, v43

    move/from16 v41, v44

    move/from16 v42, v45

    aput v42, v40, v41

    aput v39, v37, v38

    .line 1719
    move-object/from16 v37, v2

    invoke-static/range {v37 .. v37}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v37

    move/from16 v18, v37

    .line 1720
    .local v18, "minHeight":I
    move/from16 v37, v18

    if-ltz v37, :cond_f

    move/from16 v37, v18

    move/from16 v38, v7

    move/from16 v39, v5

    sub-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    :goto_1
    move/from16 v19, v37

    .line 1722
    .local v19, "alignmentHeight":I
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 1723
    move/from16 v37, v8

    if-eqz v37, :cond_10

    .line 1724
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1732
    :cond_0
    :goto_2
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_1

    .line 1733
    move/from16 v37, v8

    if-eqz v37, :cond_11

    .line 1734
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1742
    :cond_1
    :goto_3
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 1743
    move/from16 v37, v8

    if-eqz v37, :cond_12

    .line 1744
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    .line 1752
    :cond_2
    :goto_4
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v37

    move/from16 v20, v37

    .line 1753
    .local v20, "contentInsetLeft":I
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v37

    move/from16 v21, v37

    .line 1754
    .local v21, "contentInsetRight":I
    move-object/from16 v37, v17

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v20

    move/from16 v41, v15

    sub-int v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1755
    move-object/from16 v37, v17

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v40, v21

    move/from16 v41, v9

    move/from16 v42, v12

    sub-int v41, v41, v42

    move/from16 v42, v16

    sub-int v41, v41, v42

    sub-int v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1756
    move/from16 v37, v15

    move/from16 v38, v20

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v15, v37

    .line 1757
    move/from16 v37, v16

    move/from16 v38, v9

    move/from16 v39, v12

    sub-int v38, v38, v39

    move/from16 v39, v21

    sub-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    move/from16 v16, v37

    .line 1759
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 1760
    move/from16 v37, v8

    if-eqz v37, :cond_13

    .line 1761
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1769
    :cond_3
    :goto_5
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 1770
    move/from16 v37, v8

    if-eqz v37, :cond_14

    .line 1771
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1779
    :cond_4
    :goto_6
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    move/from16 v22, v37

    .line 1780
    .local v22, "layoutTitle":Z
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    move/from16 v23, v37

    .line 1781
    .local v23, "layoutSubtitle":Z
    const/16 v37, 0x0

    move/from16 v24, v37

    .line 1782
    .local v24, "titleHeight":I
    move/from16 v37, v22

    if-eqz v37, :cond_5

    .line 1783
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object/from16 v25, v37

    .line 1784
    .local v25, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v37, v24

    move-object/from16 v38, v25

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v39

    add-int v38, v38, v39

    move-object/from16 v39, v25

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v24, v37

    .line 1786
    .end local v25    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_5
    move/from16 v37, v23

    if-eqz v37, :cond_6

    .line 1787
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object/from16 v25, v37

    .line 1788
    .restart local v25    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v37, v24

    move-object/from16 v38, v25

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v39

    add-int v38, v38, v39

    move-object/from16 v39, v25

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v24, v37

    .line 1791
    .end local v25    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_6
    move/from16 v37, v22

    if-nez v37, :cond_7

    move/from16 v37, v23

    if-eqz v37, :cond_d

    .line 1793
    :cond_7
    move/from16 v37, v22

    if-eqz v37, :cond_15

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    :goto_7
    move-object/from16 v26, v37

    .line 1794
    .local v26, "topChild":Landroid/view/View;
    move/from16 v37, v23

    if-eqz v37, :cond_16

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    :goto_8
    move-object/from16 v27, v37

    .line 1795
    .local v27, "bottomChild":Landroid/view/View;
    move-object/from16 v37, v26

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object/from16 v28, v37

    .line 1796
    .local v28, "toplp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object/from16 v37, v27

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object/from16 v29, v37

    .line 1797
    .local v29, "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v37, v22

    if-eqz v37, :cond_8

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v37

    if-gtz v37, :cond_9

    :cond_8
    move/from16 v37, v23

    if-eqz v37, :cond_17

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    .line 1798
    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v37

    if-lez v37, :cond_17

    :cond_9
    const/16 v37, 0x1

    :goto_9
    move/from16 v30, v37

    .line 1800
    .local v30, "titleHasWidth":Z
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    move/from16 v37, v0

    const/16 v38, 0x70

    and-int/lit8 v37, v37, 0x70

    sparse-switch v37, :sswitch_data_0

    .line 1806
    move/from16 v37, v10

    move/from16 v38, v13

    sub-int v37, v37, v38

    move/from16 v38, v14

    sub-int v37, v37, v38

    move/from16 v31, v37

    .line 1807
    .local v31, "space":I
    move/from16 v37, v31

    move/from16 v38, v24

    sub-int v37, v37, v38

    const/16 v38, 0x2

    div-int/lit8 v37, v37, 0x2

    move/from16 v32, v37

    .line 1808
    .local v32, "spaceAbove":I
    move/from16 v37, v32

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_18

    .line 1809
    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v32, v37

    .line 1818
    :cond_a
    :goto_a
    move/from16 v37, v13

    move/from16 v38, v32

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1825
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .local v25, "titleTop":I
    :goto_b
    move/from16 v37, v8

    if-eqz v37, :cond_1a

    .line 1826
    move/from16 v37, v30

    if-eqz v37, :cond_19

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v37, v0

    :goto_c
    move-object/from16 v38, v17

    const/16 v39, 0x1

    aget v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v31, v37

    .line 1827
    .local v31, "rd":I
    move/from16 v37, v16

    const/16 v38, 0x0

    move/from16 v39, v31

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    sub-int v37, v37, v38

    move/from16 v16, v37

    .line 1828
    move-object/from16 v37, v17

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v40, v31

    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1829
    move/from16 v37, v16

    move/from16 v32, v37

    .line 1830
    .local v32, "titleRight":I
    move/from16 v37, v16

    move/from16 v33, v37

    .line 1832
    .local v33, "subtitleRight":I
    move/from16 v37, v22

    if-eqz v37, :cond_b

    .line 1833
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1834
    .local v34, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v37, v32

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    sub-int v37, v37, v38

    move/from16 v35, v37

    .line 1835
    .local v35, "titleLeft":I
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1836
    .local v36, "titleBottom":I
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v35

    move/from16 v39, v25

    move/from16 v40, v32

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1837
    move/from16 v37, v35

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v32, v37

    .line 1838
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1840
    .end local v34    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v35    # "titleLeft":I
    .end local v36    # "titleBottom":I
    :cond_b
    move/from16 v37, v23

    if-eqz v37, :cond_c

    .line 1841
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1842
    .restart local v34    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v37, v25

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1843
    move/from16 v37, v33

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    sub-int v37, v37, v38

    move/from16 v35, v37

    .line 1844
    .local v35, "subtitleLeft":I
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1845
    .local v36, "subtitleBottom":I
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v35

    move/from16 v39, v25

    move/from16 v40, v33

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1846
    move/from16 v37, v33

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v33, v37

    .line 1847
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1849
    .end local v34    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v35    # "subtitleLeft":I
    .end local v36    # "subtitleBottom":I
    :cond_c
    move/from16 v37, v30

    if-eqz v37, :cond_d

    .line 1850
    move/from16 v37, v32

    move/from16 v38, v33

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    move/from16 v16, v37

    .line 1852
    .line 1885
    .end local v25    # "titleTop":I
    .end local v26    # "topChild":Landroid/view/View;
    .end local v27    # "bottomChild":Landroid/view/View;
    .end local v28    # "toplp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v29    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v30    # "titleHasWidth":Z
    .end local v31    # "rd":I
    .end local v32    # "titleRight":I
    .end local v33    # "subtitleRight":I
    :cond_d
    :goto_d
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x3

    invoke-direct/range {v37 .. v39}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1886
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v25, v37

    .line 1887
    .local v25, "leftViewsCount":I
    const/16 v37, 0x0

    move/from16 v26, v37

    .local v26, "i":I
    :goto_e
    move/from16 v37, v26

    move/from16 v38, v25

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1e

    .line 1888
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move/from16 v39, v26

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    .line 1887
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 1705
    .end local v8    # "isRtl":Z
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "paddingLeft":I
    .end local v12    # "paddingRight":I
    .end local v13    # "paddingTop":I
    .end local v14    # "paddingBottom":I
    .end local v15    # "left":I
    .end local v16    # "right":I
    .end local v17    # "collapsingMargins":[I
    .end local v18    # "minHeight":I
    .end local v19    # "alignmentHeight":I
    .end local v20    # "contentInsetLeft":I
    .end local v21    # "contentInsetRight":I
    .end local v22    # "layoutTitle":Z
    .end local v23    # "layoutSubtitle":Z
    .end local v24    # "titleHeight":I
    .end local v25    # "leftViewsCount":I
    .end local v26    # "i":I
    :cond_e
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1720
    .restart local v8    # "isRtl":Z
    .restart local v9    # "width":I
    .restart local v10    # "height":I
    .restart local v11    # "paddingLeft":I
    .restart local v12    # "paddingRight":I
    .restart local v13    # "paddingTop":I
    .restart local v14    # "paddingBottom":I
    .restart local v15    # "left":I
    .restart local v16    # "right":I
    .restart local v17    # "collapsingMargins":[I
    .restart local v18    # "minHeight":I
    :cond_f
    const/16 v37, 0x0

    goto/16 :goto_1

    .line 1727
    .restart local v19    # "alignmentHeight":I
    :cond_10
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_2

    .line 1737
    :cond_11
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_3

    .line 1747
    :cond_12
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    goto/16 :goto_4

    .line 1764
    .restart local v20    # "contentInsetLeft":I
    .restart local v21    # "contentInsetRight":I
    :cond_13
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_5

    .line 1774
    :cond_14
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_6

    .line 1793
    .restart local v22    # "layoutTitle":Z
    .restart local v23    # "layoutSubtitle":Z
    .restart local v24    # "titleHeight":I
    :cond_15
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    goto/16 :goto_7

    .line 1794
    .local v26, "topChild":Landroid/view/View;
    :cond_16
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    goto/16 :goto_8

    .line 1798
    .restart local v27    # "bottomChild":Landroid/view/View;
    .restart local v28    # "toplp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v29    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_17
    const/16 v37, 0x0

    goto/16 :goto_9

    .line 1802
    .restart local v30    # "titleHasWidth":Z
    :sswitch_0
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v37

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1803
    .local v25, "titleTop":I
    goto/16 :goto_b

    .line 1811
    .end local v25    # "titleTop":I
    .local v31, "space":I
    .local v32, "spaceAbove":I
    :cond_18
    move/from16 v37, v10

    move/from16 v38, v14

    sub-int v37, v37, v38

    move/from16 v38, v24

    sub-int v37, v37, v38

    move/from16 v38, v32

    sub-int v37, v37, v38

    move/from16 v38, v13

    sub-int v37, v37, v38

    move/from16 v33, v37

    .line 1813
    .local v33, "spaceBelow":I
    move/from16 v37, v33

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_a

    .line 1814
    const/16 v37, 0x0

    move/from16 v38, v32

    move-object/from16 v39, v29

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move/from16 v40, v33

    sub-int v39, v39, v40

    sub-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v32, v37

    goto/16 :goto_a

    .line 1821
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .end local v33    # "spaceBelow":I
    :sswitch_1
    move/from16 v37, v10

    move/from16 v38, v14

    sub-int v37, v37, v38

    move-object/from16 v38, v29

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v38, v24

    sub-int v37, v37, v38

    move/from16 v25, v37

    .restart local v25    # "titleTop":I
    goto/16 :goto_b

    .line 1826
    :cond_19
    const/16 v37, 0x0

    goto/16 :goto_c

    .line 1853
    :cond_1a
    move/from16 v37, v30

    if-eqz v37, :cond_1d

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v37, v0

    :goto_f
    move-object/from16 v38, v17

    const/16 v39, 0x0

    aget v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v31, v37

    .line 1854
    .local v31, "ld":I
    move/from16 v37, v15

    const/16 v38, 0x0

    move/from16 v39, v31

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v15, v37

    .line 1855
    move-object/from16 v37, v17

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v31

    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1856
    move/from16 v37, v15

    move/from16 v32, v37

    .line 1857
    .local v32, "titleLeft":I
    move/from16 v37, v15

    move/from16 v33, v37

    .line 1859
    .local v33, "subtitleLeft":I
    move/from16 v37, v22

    if-eqz v37, :cond_1b

    .line 1860
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1861
    .restart local v34    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v37, v32

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v35, v37

    .line 1862
    .local v35, "titleRight":I
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1863
    .local v36, "titleBottom":I
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v32

    move/from16 v39, v25

    move/from16 v40, v35

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1864
    move/from16 v37, v35

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v32, v37

    .line 1865
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1867
    .end local v34    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v35    # "titleRight":I
    .end local v36    # "titleBottom":I
    :cond_1b
    move/from16 v37, v23

    if-eqz v37, :cond_1c

    .line 1868
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1869
    .restart local v34    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v37, v25

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1870
    move/from16 v37, v33

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v35, v37

    .line 1871
    .local v35, "subtitleRight":I
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1872
    .local v36, "subtitleBottom":I
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v33

    move/from16 v39, v25

    move/from16 v40, v35

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1873
    move/from16 v37, v35

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v33, v37

    .line 1874
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1876
    .end local v34    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v35    # "subtitleRight":I
    .end local v36    # "subtitleBottom":I
    :cond_1c
    move/from16 v37, v30

    if-eqz v37, :cond_d

    .line 1877
    move/from16 v37, v32

    move/from16 v38, v33

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_d

    .line 1853
    .end local v31    # "ld":I
    .end local v32    # "titleLeft":I
    .end local v33    # "subtitleLeft":I
    :cond_1d
    const/16 v37, 0x0

    goto/16 :goto_f

    .line 1892
    .end local v27    # "bottomChild":Landroid/view/View;
    .end local v28    # "toplp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v29    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v30    # "titleHasWidth":Z
    .local v25, "leftViewsCount":I
    .local v26, "i":I
    :cond_1e
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x5

    invoke-direct/range {v37 .. v39}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1893
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v26, v37

    .line 1894
    .local v26, "rightViewsCount":I
    const/16 v37, 0x0

    move/from16 v27, v37

    .local v27, "i":I
    :goto_10
    move/from16 v37, v27

    move/from16 v38, v26

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1f

    .line 1895
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move/from16 v39, v27

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1894
    add-int/lit8 v27, v27, 0x1

    goto :goto_10

    .line 1901
    :cond_1f
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-direct/range {v37 .. v39}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1902
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v39, v17

    invoke-direct/range {v37 .. v39}, Landroidx/appcompat/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v37

    move/from16 v27, v37

    .line 1903
    .local v27, "centerViewsWidth":I
    move/from16 v37, v11

    move/from16 v38, v9

    move/from16 v39, v11

    sub-int v38, v38, v39

    move/from16 v39, v12

    sub-int v38, v38, v39

    const/16 v39, 0x2

    div-int/lit8 v38, v38, 0x2

    add-int v37, v37, v38

    move/from16 v28, v37

    .line 1904
    .local v28, "parentCenter":I
    move/from16 v37, v27

    const/16 v38, 0x2

    div-int/lit8 v37, v37, 0x2

    move/from16 v29, v37

    .line 1905
    .local v29, "halfCenterViewsWidth":I
    move/from16 v37, v28

    move/from16 v38, v29

    sub-int v37, v37, v38

    move/from16 v30, v37

    .line 1906
    .local v30, "centerLeft":I
    move/from16 v37, v30

    move/from16 v38, v27

    add-int v37, v37, v38

    move/from16 v31, v37

    .line 1907
    .local v31, "centerRight":I
    move/from16 v37, v30

    move/from16 v38, v15

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_21

    .line 1908
    move/from16 v37, v15

    move/from16 v30, v37

    .line 1913
    :cond_20
    :goto_11
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v32, v37

    .line 1914
    .local v32, "centerViewsCount":I
    const/16 v37, 0x0

    move/from16 v33, v37

    .local v33, "i":I
    :goto_12
    move/from16 v37, v33

    move/from16 v38, v32

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_22

    .line 1915
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move/from16 v39, v33

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move/from16 v39, v30

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v30, v37

    .line 1914
    add-int/lit8 v33, v33, 0x1

    goto :goto_12

    .line 1909
    .end local v32    # "centerViewsCount":I
    .end local v33    # "i":I
    :cond_21
    move/from16 v37, v31

    move/from16 v38, v16

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_20

    .line 1910
    move/from16 v37, v30

    move/from16 v38, v31

    move/from16 v39, v16

    sub-int v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v30, v37

    goto :goto_11

    .line 1919
    .restart local v32    # "centerViewsCount":I
    .restart local v33    # "i":I
    :cond_22
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 1920
    return-void

    .line 1800
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 30

    .prologue
    .line 1571
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/Toolbar;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    const/16 v22, 0x0

    move/from16 v5, v22

    .line 1572
    .local v5, "width":I
    const/16 v22, 0x0

    move/from16 v6, v22

    .line 1573
    .local v6, "height":I
    const/16 v22, 0x0

    move/from16 v7, v22

    .line 1575
    .local v7, "childState":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    move-object/from16 v22, v0

    move-object/from16 v8, v22

    .line 1578
    .local v8, "collapsingMargins":[I
    move-object/from16 v22, v2

    invoke-static/range {v22 .. v22}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1579
    const/16 v22, 0x1

    move/from16 v9, v22

    .line 1580
    .local v9, "marginStartIndex":I
    const/16 v22, 0x0

    move/from16 v10, v22

    .line 1588
    .local v10, "marginEndIndex":I
    :goto_0
    const/16 v22, 0x0

    move/from16 v11, v22

    .line 1589
    .local v11, "navWidth":I
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1590
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1592
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v11, v22

    .line 1593
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    .line 1594
    invoke-direct/range {v24 .. v25}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1593
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1595
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    .line 1596
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v23

    .line 1595
    invoke-static/range {v22 .. v23}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1599
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1600
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1602
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    .line 1603
    invoke-direct/range {v23 .. v24}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v11, v22

    .line 1604
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    .line 1605
    invoke-direct/range {v24 .. v25}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1604
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1606
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    .line 1607
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v23

    .line 1606
    invoke-static/range {v22 .. v23}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1610
    :cond_1
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v22

    move/from16 v12, v22

    .line 1611
    .local v12, "contentInsetStart":I
    move/from16 v22, v5

    move/from16 v23, v12

    move/from16 v24, v11

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1612
    move-object/from16 v22, v8

    move/from16 v23, v9

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v26, v11

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    aput v24, v22, v23

    .line 1614
    const/16 v22, 0x0

    move/from16 v13, v22

    .line 1615
    .local v13, "menuWidth":I
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1616
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1618
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v13, v22

    .line 1619
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v25, v0

    .line 1620
    invoke-direct/range {v24 .. v25}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1619
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1621
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v23, v0

    .line 1622
    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredState()I

    move-result v23

    .line 1621
    invoke-static/range {v22 .. v23}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1625
    :cond_2
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v22

    move/from16 v14, v22

    .line 1626
    .local v14, "contentInsetEnd":I
    move/from16 v22, v5

    move/from16 v23, v14

    move/from16 v24, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1627
    move-object/from16 v22, v8

    move/from16 v23, v10

    const/16 v24, 0x0

    move/from16 v25, v14

    move/from16 v26, v13

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    aput v24, v22, v23

    .line 1629
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1630
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1632
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v25, v0

    .line 1633
    invoke-direct/range {v24 .. v25}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1632
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1634
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    .line 1635
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredState()I

    move-result v23

    .line 1634
    invoke-static/range {v22 .. v23}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1638
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1639
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1641
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    .line 1642
    invoke-direct/range {v24 .. v25}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1641
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1643
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    .line 1644
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v23

    .line 1643
    invoke-static/range {v22 .. v23}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1647
    :cond_4
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v22

    move/from16 v15, v22

    .line 1648
    .local v15, "childCount":I
    const/16 v22, 0x0

    move/from16 v16, v22

    .local v16, "i":I
    :goto_1
    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 1649
    move-object/from16 v22, v2

    move/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v17, v22

    .line 1650
    .local v17, "child":Landroid/view/View;
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object/from16 v18, v22

    .line 1651
    .local v18, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object/from16 v22, v18

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    move-object/from16 v22, v2

    move-object/from16 v23, v17

    invoke-direct/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1653
    .line 1648
    :cond_5
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1582
    .end local v9    # "marginStartIndex":I
    .end local v10    # "marginEndIndex":I
    .end local v11    # "navWidth":I
    .end local v12    # "contentInsetStart":I
    .end local v13    # "menuWidth":I
    .end local v14    # "contentInsetEnd":I
    .end local v15    # "childCount":I
    .end local v16    # "i":I
    .end local v17    # "child":Landroid/view/View;
    .end local v18    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_6
    const/16 v22, 0x0

    move/from16 v9, v22

    .line 1583
    .restart local v9    # "marginStartIndex":I
    const/16 v22, 0x1

    move/from16 v10, v22

    .restart local v10    # "marginEndIndex":I
    goto/16 :goto_0

    .line 1656
    .restart local v11    # "navWidth":I
    .restart local v12    # "contentInsetStart":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "contentInsetEnd":I
    .restart local v15    # "childCount":I
    .restart local v16    # "i":I
    .restart local v17    # "child":Landroid/view/View;
    .restart local v18    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_7
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1658
    move/from16 v22, v6

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v17

    invoke-direct/range {v24 .. v25}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1659
    move/from16 v22, v7

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredState()I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    goto :goto_2

    .line 1662
    .end local v17    # "child":Landroid/view/View;
    .end local v18    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_8
    const/16 v22, 0x0

    move/from16 v16, v22

    .line 1663
    .local v16, "titleWidth":I
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 1664
    .local v17, "titleHeight":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v18, v22

    .line 1665
    .local v18, "titleVertMargins":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v19, v22

    .line 1666
    .local v19, "titleHorizMargins":I
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1667
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v19

    add-int v25, v25, v26

    move/from16 v26, v4

    move/from16 v27, v18

    move-object/from16 v28, v8

    invoke-direct/range {v22 .. v28}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v22

    move/from16 v16, v22

    .line 1670
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v16, v22

    .line 1671
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 1672
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1674
    :cond_9
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1675
    move/from16 v22, v16

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v19

    add-int v26, v26, v27

    move/from16 v27, v4

    move/from16 v28, v17

    move/from16 v29, v18

    add-int v28, v28, v29

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v16, v22

    .line 1679
    move/from16 v22, v17

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    .line 1680
    invoke-direct/range {v24 .. v25}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 1681
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    .line 1682
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v23

    .line 1681
    invoke-static/range {v22 .. v23}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1685
    :cond_a
    move/from16 v22, v5

    move/from16 v23, v16

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1686
    move/from16 v22, v6

    move/from16 v23, v17

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1690
    move/from16 v22, v5

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1691
    move/from16 v22, v6

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v6, v22

    .line 1693
    move/from16 v22, v5

    move-object/from16 v23, v2

    .line 1694
    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v3

    move/from16 v24, v7

    const/high16 v25, -0x1000000

    and-int v24, v24, v25

    .line 1693
    invoke-static/range {v22 .. v24}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v22

    move/from16 v20, v22

    .line 1696
    .local v20, "measuredWidth":I
    move/from16 v22, v6

    move-object/from16 v23, v2

    .line 1697
    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x10

    shl-int/lit8 v24, v24, 0x10

    .line 1696
    invoke-static/range {v22 .. v24}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v22

    move/from16 v21, v22

    .line 1700
    .local v21, "measuredHeight":I
    move-object/from16 v22, v2

    move/from16 v23, v20

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Landroidx/appcompat/widget/Toolbar;->shouldCollapse()Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x0

    :goto_3
    invoke-virtual/range {v22 .. v24}, Landroidx/appcompat/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1701
    return-void

    .line 1700
    :cond_b
    move/from16 v24, v21

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 1423
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v5, v1

    instance-of v5, v5, Landroidx/appcompat/widget/Toolbar$SavedState;

    if-nez v5, :cond_0

    .line 1424
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1425
    .line 1442
    :goto_0
    return-void

    .line 1428
    :cond_0
    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/Toolbar$SavedState;

    move-object v2, v5

    .line 1429
    .local v2, "ss":Landroidx/appcompat/widget/Toolbar$SavedState;
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v6

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1431
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v5

    :goto_1
    move-object v3, v5

    .line 1432
    .local v3, "menu":Landroid/view/Menu;
    move-object v5, v2

    iget v5, v5, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v5, :cond_1

    move-object v5, v3

    if-eqz v5, :cond_1

    .line 1433
    move-object v5, v3

    move-object v6, v2

    iget v6, v6, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v4, v5

    .line 1434
    .local v4, "item":Landroid/view/MenuItem;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1435
    move-object v5, v4

    invoke-interface {v5}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v5

    .line 1439
    .end local v4    # "item":Landroid/view/MenuItem;
    :cond_1
    move-object v5, v2

    iget-boolean v5, v5, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v5, :cond_2

    .line 1440
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/widget/Toolbar;->postShowOverflowMenu()V

    .line 1442
    :cond_2
    goto :goto_0

    .line 1431
    .end local v3    # "menu":Landroid/view/Menu;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "layoutDirection":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 484
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 487
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 488
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 489
    return-void

    .line 488
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1411
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    new-instance v2, Landroidx/appcompat/widget/Toolbar$SavedState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v1, v2

    .line 1413
    .local v1, "state":Landroidx/appcompat/widget/Toolbar$SavedState;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1414
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    iput v3, v2, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1417
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1418
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1462
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    move v2, v4

    .line 1463
    .local v2, "action":I
    move v4, v2

    if-nez v4, :cond_0

    .line 1464
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 1467
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    if-nez v4, :cond_1

    .line 1468
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v3, v4

    .line 1469
    .local v3, "handled":Z
    move v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 1470
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 1474
    .end local v3    # "handled":Z
    :cond_1
    move v4, v2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1475
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 1478
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0
.end method

.method removeChildrenForExpandedActionView()V
    .locals 7

    .prologue
    .line 2118
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v5

    move v1, v5

    .line 2120
    .local v1, "childCount":I
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    if-ltz v5, :cond_1

    .line 2121
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 2122
    .local v3, "child":Landroid/view/View;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v4, v5

    .line 2123
    .local v4, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v5, v4

    iget v5, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v5, v6, :cond_0

    .line 2124
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/Toolbar;->removeViewAt(I)V

    .line 2125
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2120
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2128
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2150
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "collapsible":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    .line 2151
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 2152
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 4

    .prologue
    .line 1286
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "insetEndWithActions":I
    move v2, v1

    if-gez v2, :cond_0

    .line 1287
    const/high16 v2, -0x80000000

    move v1, v2

    .line 1289
    :cond_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq v2, v3, :cond_1

    .line 1290
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1291
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1292
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 1295
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 4

    .prologue
    .line 1244
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "insetStartWithNavigation":I
    move v2, v1

    if-gez v2, :cond_0

    .line 1245
    const/high16 v2, -0x80000000

    move v1, v2

    .line 1247
    :cond_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq v2, v3, :cond_1

    .line 1248
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1249
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1250
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 1253
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 6

    .prologue
    .line 1168
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "contentInsetLeft":I
    move v2, p2

    .local v2, "contentInsetRight":I
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 1169
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1170
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 6

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "contentInsetStart":I
    move v2, p2

    .local v2, "contentInsetEnd":I
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 1106
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1107
    return-void
.end method

.method public setLogo(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 502
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 622
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/Toolbar;->ensureLogoView()V

    .line 623
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 624
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 630
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 631
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    :cond_1
    return-void

    .line 626
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 628
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 656
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "description":Ljava/lang/CharSequence;
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 668
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/Toolbar;->ensureLogoView()V

    .line 670
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 671
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 673
    :cond_1
    return-void
.end method

.method public setMenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 9
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "outerPresenter":Landroidx/appcompat/widget/ActionMenuPresenter;
    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v4, :cond_0

    .line 548
    .line 579
    :goto_0
    return-void

    .line 551
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    .line 552
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v4

    move-object v3, v4

    .line 553
    .local v3, "oldMenu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 554
    goto :goto_0

    .line 557
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 558
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 559
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 562
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v4, :cond_3

    .line 563
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v5, v4, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 566
    :cond_3
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 567
    move-object v4, v1

    if-eqz v4, :cond_4

    .line 568
    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 569
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 576
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 577
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 578
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 579
    goto :goto_0

    .line 571
    :cond_4
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 572
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 573
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 574
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2160
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "pcb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v2, p2

    .local v2, "mcb":Landroidx/appcompat/view/menu/MenuBuilder$Callback;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2161
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 2162
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_0

    .line 2163
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 2165
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 903
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 904
    return-void

    .line 903
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 917
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "description":Ljava/lang/CharSequence;
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 918
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 920
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 921
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 923
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 940
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 941
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 959
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 960
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 961
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 967
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 968
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    :cond_1
    return-void

    .line 963
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 965
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 994
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "listener":Landroid/view/View$OnClickListener;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 995
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 4

    .prologue
    .line 1083
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 1084
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1017
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 1018
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 354
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 355
    move v2, v1

    if-nez v2, :cond_1

    .line 356
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    move-object v2, v0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, v2, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 796
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "subtitle":Ljava/lang/CharSequence;
    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 807
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 808
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 809
    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 810
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 811
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 812
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v3, :cond_0

    .line 813
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 815
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v3, :cond_1

    .line 816
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 819
    .end local v2    # "context":Landroid/content/Context;
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 820
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 826
    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 827
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    :cond_3
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 830
    return-void

    .line 822
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 823
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 824
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 849
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 850
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 852
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:I

    .line 873
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 874
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 876
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 741
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 753
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 754
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 755
    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 756
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 757
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 758
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v3, :cond_0

    .line 759
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 761
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:I

    if-eqz v3, :cond_1

    .line 762
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    .end local v2    # "context":Landroid/content/Context;
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 766
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 772
    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 773
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    :cond_3
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 776
    return-void

    .line 768
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 769
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 770
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public setTitleMargin(IIII)V
    .locals 7

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "end":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 387
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 388
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 389
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 391
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 392
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 4

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "margin":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 478
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 479
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 4

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "margin":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 457
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 458
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "margin":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 413
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 414
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 4

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "margin":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 435
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 436
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    .line 838
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 839
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 841
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:I

    .line 861
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 862
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
