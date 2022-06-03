.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Landroidx/cardview/widget/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010031

    aput v3, v1, v2

    sput-object v0, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Landroidx/cardview/widget/CardViewApi21Impl;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/cardview/widget/CardViewApi21Impl;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    .line 92
    :goto_0
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    invoke-interface {v0}, Landroidx/cardview/widget/CardViewImpl;->initStatic()V

    .line 93
    return-void

    .line 87
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 88
    new-instance v0, Landroidx/cardview/widget/CardViewApi17Impl;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/cardview/widget/CardViewApi17Impl;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Landroidx/cardview/widget/CardViewBaseImpl;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/cardview/widget/CardViewBaseImpl;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/cardview/R$attr;->cardViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 110
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 447
    move-object v10, v0

    new-instance v11, Landroidx/cardview/widget/CardView$1;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-direct {v12, v13}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v11, v10, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    .line 123
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Landroidx/cardview/R$styleable;->CardView:[I

    move v13, v3

    sget v14, Landroidx/cardview/R$style;->CardView:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v4, v10

    .line 126
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v10, v4

    sget v11, Landroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 127
    move-object v10, v4

    sget v11, Landroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object v5, v10

    .line 141
    .local v5, "backgroundColor":Landroid/content/res/ColorStateList;
    :goto_0
    move-object v10, v4

    sget v11, Landroidx/cardview/R$styleable;->CardView_cardCornerRadius:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    move v6, v10

    .line 142
    .local v6, "radius":F
    move-object v10, v4

    sget v11, Landroidx/cardview/R$styleable;->CardView_cardElevation:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    move v7, v10

    .line 143
    .local v7, "elevation":F
    move-object v10, v4

    sget v11, Landroidx/cardview/R$styleable;->CardView_cardMaxElevation:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    move v8, v10

    .line 144
    .local v8, "maxElevation":F
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroidx/cardview/R$styleable;->CardView_cardUseCompatPadding:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v10, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    .line 145
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroidx/cardview/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v10, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    .line 146
    move-object v10, v4

    sget v11, Landroidx/cardview/R$styleable;->CardView_contentPadding:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    move v9, v10

    .line 147
    .local v9, "defaultPadding":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    move-object v11, v4

    sget v12, Landroidx/cardview/R$styleable;->CardView_contentPaddingLeft:I

    move v13, v9

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 149
    move-object v10, v0

    iget-object v10, v10, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    move-object v11, v4

    sget v12, Landroidx/cardview/R$styleable;->CardView_contentPaddingTop:I

    move v13, v9

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 151
    move-object v10, v0

    iget-object v10, v10, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    move-object v11, v4

    sget v12, Landroidx/cardview/R$styleable;->CardView_contentPaddingRight:I

    move v13, v9

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 153
    move-object v10, v0

    iget-object v10, v10, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    move-object v11, v4

    sget v12, Landroidx/cardview/R$styleable;->CardView_contentPaddingBottom:I

    move v13, v9

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 155
    move v10, v7

    move v11, v8

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    .line 156
    move v10, v7

    move v8, v10

    .line 158
    :cond_0
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroidx/cardview/R$styleable;->CardView_android_minWidth:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    .line 159
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroidx/cardview/R$styleable;->CardView_android_minHeight:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    .line 160
    move-object v10, v4

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    sget-object v10, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v11, v0

    iget-object v11, v11, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    move-object v12, v1

    move-object v13, v5

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    invoke-interface/range {v10 .. v16}, Landroidx/cardview/widget/CardViewImpl;->initialize(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 164
    return-void

    .line 130
    .end local v5    # "backgroundColor":Landroid/content/res/ColorStateList;
    .end local v6    # "radius":F
    .end local v7    # "elevation":F
    .end local v8    # "maxElevation":F
    .end local v9    # "defaultPadding":I
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/cardview/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {v10, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v6, v10

    .line 131
    .local v6, "aa":Landroid/content/res/TypedArray;
    move-object v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    move v7, v10

    .line 132
    .local v7, "themeColorBackground":I
    move-object v10, v6

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    const/4 v10, 0x3

    new-array v10, v10, [F

    move-object v8, v10

    .line 136
    .local v8, "hsv":[F
    move v10, v7

    move-object v11, v8

    invoke-static {v10, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 137
    move-object v10, v8

    const/4 v11, 0x2

    aget v10, v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    move-object v10, v0

    .line 138
    invoke-virtual {v10}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Landroidx/cardview/R$color;->cardview_light_background:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 137
    :goto_1
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object v5, v10

    .restart local v5    # "backgroundColor":Landroid/content/res/ColorStateList;
    goto/16 :goto_0

    .line 138
    .end local v5    # "backgroundColor":Landroid/content/res/ColorStateList;
    :cond_2
    move-object v10, v0

    .line 139
    invoke-virtual {v10}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Landroidx/cardview/R$color;->cardview_dark_background:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    goto :goto_1
.end method

.method static synthetic access$001(Landroidx/cardview/widget/CardView;IIII)V
    .locals 10

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":I
    move v3, p3

    .local v3, "x3":I
    move v4, p4

    .local v4, "x4":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Landroidx/cardview/widget/CardView;I)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Landroidx/cardview/widget/CardView;I)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    sget-object v1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v1, v2}, Landroidx/cardview/widget/CardViewImpl;->getBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView;
    return-object v0
.end method

.method public getCardElevation()F
    .locals 3

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    sget-object v1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v1, v2}, Landroidx/cardview/widget/CardViewImpl;->getElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView;
    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView;
    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView;
    return v0
.end method

.method public getContentPaddingRight()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView;
    return v0
.end method

.method public getContentPaddingTop()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView;
    return v0
.end method

.method public getMaxCardElevation()F
    .locals 3

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    sget-object v1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v1, v2}, Landroidx/cardview/widget/CardViewImpl;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView;
    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 2

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView;
    return v0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    sget-object v1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v1, v2}, Landroidx/cardview/widget/CardViewImpl;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView;
    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/CardView;
    return v0
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    sget-object v6, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    instance-of v6, v6, Landroidx/cardview/widget/CardViewApi21Impl;

    if-nez v6, :cond_0

    .line 233
    move v6, v1

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    move v3, v6

    .line 234
    .local v3, "widthMode":I
    move v6, v3

    sparse-switch v6, :sswitch_data_0

    .line 246
    :goto_0
    move v6, v2

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    move v4, v6

    .line 247
    .local v4, "heightMode":I
    move v6, v4

    sparse-switch v6, :sswitch_data_1

    .line 258
    :goto_1
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 259
    .line 262
    .end local v3    # "widthMode":I
    .end local v4    # "heightMode":I
    :goto_2
    return-void

    .line 237
    .restart local v3    # "widthMode":I
    :sswitch_0
    sget-object v6, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v7, v0

    iget-object v7, v7, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v6, v7}, Landroidx/cardview/widget/CardViewImpl;->getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v4, v6

    .line 238
    .local v4, "minWidth":I
    move v6, v4

    move v7, v1

    .line 239
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 238
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v7, v3

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move v1, v6

    .line 240
    goto :goto_0

    .line 250
    .local v4, "heightMode":I
    :sswitch_1
    sget-object v6, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v7, v0

    iget-object v7, v7, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v6, v7}, Landroidx/cardview/widget/CardViewImpl;->getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v5, v6

    .line 251
    .local v5, "minHeight":I
    move v6, v5

    move v7, v2

    .line 252
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 251
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v7, v4

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move v2, v6

    .line 253
    goto :goto_1

    .line 260
    .end local v3    # "widthMode":I
    .end local v4    # "heightMode":I
    .end local v5    # "minHeight":I
    :cond_0
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 247
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "color":I
    sget-object v2, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    move v4, v1

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroidx/cardview/widget/CardViewImpl;->setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 284
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 5
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move-object v1, p1

    .local v1, "color":Landroid/content/res/ColorStateList;
    sget-object v2, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroidx/cardview/widget/CardViewImpl;->setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 294
    return-void
.end method

.method public setCardElevation(F)V
    .locals 5

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "elevation":F
    sget-object v2, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroidx/cardview/widget/CardViewImpl;->setElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    .line 377
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 10
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    sget-object v5, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v6, v0

    iget-object v6, v6, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v5, v6}, Landroidx/cardview/widget/CardViewImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 228
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "maxElevation":F
    sget-object v2, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroidx/cardview/widget/CardViewImpl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    .line 403
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "minHeight":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    .line 273
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 274
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "minWidth":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    .line 267
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 268
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 169
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 174
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "preventCornerOverlap":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    if-eq v2, v3, :cond_0

    .line 442
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    .line 443
    sget-object v2, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v2, v3}, Landroidx/cardview/widget/CardViewImpl;->onPreventCornerOverlapChanged(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 445
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 5

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "radius":F
    sget-object v2, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroidx/cardview/widget/CardViewImpl;->setRadius(Landroidx/cardview/widget/CardViewDelegate;F)V

    .line 355
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardView;
    move v1, p1

    .local v1, "useCompatPadding":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 204
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    .line 205
    sget-object v2, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v2, v3}, Landroidx/cardview/widget/CardViewImpl;->onCompatPaddingChanged(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 207
    :cond_0
    return-void
.end method
