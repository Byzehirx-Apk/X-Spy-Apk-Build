.class public Landroidx/viewpager/widget/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/PagerTitleStrip$PageListener;,
        Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

.field mPager:Landroidx/viewpager/widget/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/viewpager/widget/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->ATTRS:[I

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101038c

    aput v3, v1, v2

    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->TEXT_ATTRS:[I

    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 62
    move-object v8, v0

    const/high16 v9, -0x40800000    # -1.0f

    iput v9, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 69
    move-object v8, v0

    new-instance v9, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;-><init>(Landroidx/viewpager/widget/PagerTitleStrip;)V

    iput-object v9, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    .line 115
    move-object v8, v0

    move-object v9, v0

    new-instance v10, Landroid/widget/TextView;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v1

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v9

    move-object v14, v10

    move-object v9, v14

    move-object v10, v13

    move-object v11, v14

    iput-object v11, v10, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 116
    move-object v8, v0

    move-object v9, v0

    new-instance v10, Landroid/widget/TextView;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v1

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v9

    move-object v14, v10

    move-object v9, v14

    move-object v10, v13

    move-object v11, v14

    iput-object v11, v10, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 117
    move-object v8, v0

    move-object v9, v0

    new-instance v10, Landroid/widget/TextView;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v1

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v9

    move-object v14, v10

    move-object v9, v14

    move-object v10, v13

    move-object v11, v14

    iput-object v11, v10, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 119
    move-object v8, v1

    move-object v9, v2

    sget-object v10, Landroidx/viewpager/widget/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v3, v8

    .line 120
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    move v4, v8

    .line 121
    .local v4, "textAppearance":I
    move v8, v4

    if-eqz v8, :cond_0

    .line 122
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v9, v4

    invoke-static {v8, v9}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 123
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v9, v4

    invoke-static {v8, v9}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 124
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v9, v4

    invoke-static {v8, v9}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 126
    :cond_0
    move-object v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    move v5, v8

    .line 127
    .local v5, "textSize":I
    move v8, v5

    if-eqz v8, :cond_1

    .line 128
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v5

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSize(IF)V

    .line 130
    :cond_1
    move-object v8, v3

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 131
    move-object v8, v3

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    move v6, v8

    .line 132
    .local v6, "textColor":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    .end local v6    # "textColor":I
    :cond_2
    move-object v8, v0

    move-object v9, v3

    const/4 v10, 0x3

    const/16 v11, 0x50

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    .line 137
    move-object v8, v3

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    iput v9, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    .line 140
    move-object v8, v0

    const v9, 0x3f19999a    # 0.6f

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 142
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 144
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    const/4 v8, 0x0

    move v6, v8

    .line 147
    .local v6, "allCaps":Z
    move v8, v4

    if-eqz v8, :cond_3

    .line 148
    move-object v8, v1

    move v9, v4

    sget-object v10, Landroidx/viewpager/widget/PagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v7, v8

    .line 149
    .local v7, "ta":Landroid/content/res/TypedArray;
    move-object v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    move v6, v8

    .line 150
    move-object v8, v7

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    .end local v7    # "ta":Landroid/content/res/TypedArray;
    :cond_3
    move v8, v6

    if-eqz v8, :cond_4

    .line 154
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v8}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 155
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v8}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 156
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v8}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 163
    :goto_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    move v7, v8

    .line 164
    .local v7, "density":F
    move-object v8, v0

    const/high16 v9, 0x41800000    # 16.0f

    move v10, v7

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    .line 165
    return-void

    .line 158
    .end local v7    # "density":F
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    .line 159
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    .line 160
    move-object v8, v0

    iget-object v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "text":Landroid/widget/TextView;
    move-object v1, v0

    new-instance v2, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 106
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .locals 4

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    const/4 v3, 0x0

    move v1, v3

    .line 464
    .local v1, "minHeight":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 465
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 466
    move-object v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    move v1, v3

    .line 468
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Landroidx/viewpager/widget/PagerTitleStrip;
    return v0
.end method

.method public getTextSpacing()I
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move-object v1, v0

    iget v1, v1, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    move v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/PagerTitleStrip;
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 241
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v1, v4

    .line 242
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v4, v1

    instance-of v4, v4, Landroidx/viewpager/widget/ViewPager;

    if-nez v4, :cond_0

    .line 243
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 247
    :cond_0
    move-object v4, v1

    check-cast v4, Landroidx/viewpager/widget/ViewPager;

    move-object v2, v4

    .line 248
    .local v2, "pager":Landroidx/viewpager/widget/ViewPager;
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    move-object v3, v4

    .line 250
    .local v3, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setInternalPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v4

    .line 251
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 252
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 253
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/PagerAdapter;

    :goto_0
    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 254
    return-void

    .line 253
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 259
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 260
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 261
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setInternalPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v1

    .line 262
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 263
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 265
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "l":I
    move v3, p3

    .local v3, "t":I
    move v4, p4

    .local v4, "r":I
    move/from16 v5, p5

    .local v5, "b":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v7, :cond_0

    .line 457
    move-object v7, v0

    iget v7, v7, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    move-object v7, v0

    iget v7, v7, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    :goto_0
    move v6, v7

    .line 458
    .local v6, "offset":F
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    move v9, v6

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 460
    .end local v6    # "offset":F
    :cond_0
    return-void

    .line 457
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 18

    .prologue
    .line 420
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move/from16 v1, p1

    .local v1, "widthMeasureSpec":I
    move/from16 v2, p2

    .local v2, "heightMeasureSpec":I
    move v13, v1

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    move v3, v13

    .line 421
    .local v3, "widthMode":I
    move v13, v3

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v13, v14, :cond_0

    .line 422
    new-instance v13, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const-string/jumbo v15, "Must measure with an exact width"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 425
    :cond_0
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingTop()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    move v4, v13

    .line 426
    .local v4, "heightPadding":I
    move v13, v2

    move v14, v4

    const/4 v15, -0x2

    invoke-static {v13, v14, v15}, Landroidx/viewpager/widget/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v13

    move v5, v13

    .line 429
    .local v5, "childHeightSpec":I
    move v13, v1

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    move v6, v13

    .line 430
    .local v6, "widthSize":I
    move v13, v6

    int-to-float v13, v13

    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move v7, v13

    .line 431
    .local v7, "widthPadding":I
    move v13, v1

    move v14, v7

    const/4 v15, -0x2

    invoke-static {v13, v14, v15}, Landroidx/viewpager/widget/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v13

    move v8, v13

    .line 434
    .local v8, "childWidthSpec":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v14, v8

    move v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    .line 435
    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v14, v8

    move v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    .line 436
    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v14, v8

    move v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    .line 439
    move v13, v2

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    move v10, v13

    .line 440
    .local v10, "heightMode":I
    move v13, v10

    const/high16 v14, 0x40000000    # 2.0f

    if-ne v13, v14, :cond_1

    .line 441
    move v13, v2

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    move v9, v13

    .line 448
    .local v9, "height":I
    :goto_0
    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v13

    move v11, v13

    .line 449
    .local v11, "childState":I
    move v13, v9

    move v14, v2

    move v15, v11

    const/16 v16, 0x10

    shl-int/lit8 v15, v15, 0x10

    invoke-static {v13, v14, v15}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v13

    move v12, v13

    .line 451
    .local v12, "measuredHeight":I
    move-object v13, v0

    move v14, v6

    move v15, v12

    invoke-virtual {v13, v14, v15}, Landroidx/viewpager/widget/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 452
    return-void

    .line 443
    .end local v9    # "height":I
    .end local v11    # "childState":I
    .end local v12    # "measuredHeight":I
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    move v11, v13

    .line 444
    .local v11, "textHeight":I
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    move-result v13

    move v12, v13

    .line 445
    .local v12, "minHeight":I
    move v13, v12

    move v14, v11

    move v15, v4

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v9, v13

    .restart local v9    # "height":I
    goto :goto_0
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    if-nez v1, :cond_0

    .line 309
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 311
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    .line 234
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    .line 235
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move v1, p1

    .local v1, "alpha":F
    move-object v3, v0

    move v4, v1

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    iput v4, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mNonPrimaryAlpha:I

    .line 191
    move-object v3, v0

    iget v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mNonPrimaryAlpha:I

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    iget v4, v4, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    move v2, v3

    .line 192
    .local v2, "transparentColor":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    return-void
.end method

.method public setTextColor(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move v1, p1

    .local v1, "color":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    .line 204
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    move-object v3, v0

    iget v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mNonPrimaryAlpha:I

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    iget v4, v4, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    move v2, v3

    .line 206
    .local v2, "transparentColor":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    return-void
.end method

.method public setTextSize(IF)V
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move v1, p1

    .local v1, "unit":I
    move v2, p2

    .local v2, "size":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 224
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move v1, p1

    .local v1, "spacingPixels":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    .line 174
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    .line 175
    return-void
.end method

.method updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 8

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move-object v1, p1

    .local v1, "oldAdapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v2, p2

    .local v2, "newAdapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 315
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 318
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 319
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 320
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 322
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_2

    .line 323
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 324
    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 325
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    .line 326
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    .line 328
    :cond_2
    return-void
.end method

.method updateText(ILandroidx/viewpager/widget/PagerAdapter;)V
    .locals 15

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move/from16 v1, p1

    .local v1, "currentItem":I
    move-object/from16 v2, p2

    .local v2, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v11, v2

    if-eqz v11, :cond_3

    move-object v11, v2

    invoke-virtual {v11}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v11

    :goto_0
    move v3, v11

    .line 269
    .local v3, "itemCount":I
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    .line 271
    const/4 v11, 0x0

    move-object v4, v11

    .line 272
    .local v4, "text":Ljava/lang/CharSequence;
    move v11, v1

    const/4 v12, 0x1

    if-lt v11, v12, :cond_0

    move-object v11, v2

    if-eqz v11, :cond_0

    .line 273
    move-object v11, v2

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v4, v11

    .line 275
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    move-object v11, v0

    iget-object v11, v11, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object v12, v2

    if-eqz v12, :cond_4

    move v12, v1

    move v13, v3

    if-ge v12, v13, :cond_4

    move-object v12, v2

    move v13, v1

    .line 278
    invoke-virtual {v12, v13}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 277
    :goto_1
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const/4 v11, 0x0

    move-object v4, v11

    .line 281
    move v11, v1

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v3

    if-ge v11, v12, :cond_1

    move-object v11, v2

    if-eqz v11, :cond_1

    .line 282
    move-object v11, v2

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v4, v11

    .line 284
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/viewpager/widget/PagerTitleStrip;->getWidth()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    move v5, v11

    .line 288
    .local v5, "width":I
    const/4 v11, 0x0

    move v12, v5

    int-to-float v12, v12

    const v13, 0x3f4ccccd    # 0.8f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v6, v11

    .line 289
    .local v6, "maxWidth":I
    move v11, v6

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 290
    .local v7, "childWidthSpec":I
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/viewpager/widget/PagerTitleStrip;->getHeight()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    move v8, v11

    .line 291
    .local v8, "childHeight":I
    const/4 v11, 0x0

    move v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v9, v11

    .line 292
    .local v9, "maxHeight":I
    move v11, v9

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v10, v11

    .line 293
    .local v10, "childHeightSpec":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v12, v7

    move v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 294
    move-object v11, v0

    iget-object v11, v11, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v12, v7

    move v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 295
    move-object v11, v0

    iget-object v11, v11, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v12, v7

    move v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 297
    move-object v11, v0

    move v12, v1

    iput v12, v11, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 299
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v11, :cond_2

    .line 300
    move-object v11, v0

    move v12, v1

    move-object v13, v0

    iget v13, v13, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 303
    :cond_2
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    .line 304
    return-void

    .line 268
    .end local v3    # "itemCount":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "width":I
    .end local v6    # "maxWidth":I
    .end local v7    # "childWidthSpec":I
    .end local v8    # "childHeight":I
    .end local v9    # "maxHeight":I
    .end local v10    # "childHeightSpec":I
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 278
    .restart local v3    # "itemCount":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method updateTextPositions(IFZ)V
    .locals 47

    .prologue
    .line 331
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/viewpager/widget/PagerTitleStrip;
    move/from16 v3, p1

    .local v3, "position":I
    move/from16 v4, p2

    .local v4, "positionOffset":F
    move/from16 v5, p3

    .local v5, "force":Z
    move/from16 v41, v3

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_2

    .line 332
    move-object/from16 v41, v2

    move/from16 v42, v3

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    .line 337
    :cond_0
    move-object/from16 v41, v2

    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    .line 339
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v41

    move/from16 v6, v41

    .line 340
    .local v6, "prevWidth":I
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v41

    move/from16 v7, v41

    .line 341
    .local v7, "currWidth":I
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v41

    move/from16 v8, v41

    .line 342
    .local v8, "nextWidth":I
    move/from16 v41, v7

    const/16 v42, 0x2

    div-int/lit8 v41, v41, 0x2

    move/from16 v9, v41

    .line 344
    .local v9, "halfCurrWidth":I
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroidx/viewpager/widget/PagerTitleStrip;->getWidth()I

    move-result v41

    move/from16 v10, v41

    .line 345
    .local v10, "stripWidth":I
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroidx/viewpager/widget/PagerTitleStrip;->getHeight()I

    move-result v41

    move/from16 v11, v41

    .line 346
    .local v11, "stripHeight":I
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingLeft()I

    move-result v41

    move/from16 v12, v41

    .line 347
    .local v12, "paddingLeft":I
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingRight()I

    move-result v41

    move/from16 v13, v41

    .line 348
    .local v13, "paddingRight":I
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingTop()I

    move-result v41

    move/from16 v14, v41

    .line 349
    .local v14, "paddingTop":I
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingBottom()I

    move-result v41

    move/from16 v15, v41

    .line 350
    .local v15, "paddingBottom":I
    move/from16 v41, v12

    move/from16 v42, v9

    add-int v41, v41, v42

    move/from16 v16, v41

    .line 351
    .local v16, "textPaddedLeft":I
    move/from16 v41, v13

    move/from16 v42, v9

    add-int v41, v41, v42

    move/from16 v17, v41

    .line 352
    .local v17, "textPaddedRight":I
    move/from16 v41, v10

    move/from16 v42, v16

    sub-int v41, v41, v42

    move/from16 v42, v17

    sub-int v41, v41, v42

    move/from16 v18, v41

    .line 354
    .local v18, "contentWidth":I
    move/from16 v41, v4

    const/high16 v42, 0x3f000000    # 0.5f

    add-float v41, v41, v42

    move/from16 v19, v41

    .line 355
    .local v19, "currOffset":F
    move/from16 v41, v19

    const/high16 v42, 0x3f800000    # 1.0f

    cmpl-float v41, v41, v42

    if-lez v41, :cond_1

    .line 356
    move/from16 v41, v19

    const/high16 v42, 0x3f800000    # 1.0f

    sub-float v41, v41, v42

    move/from16 v19, v41

    .line 358
    :cond_1
    move/from16 v41, v10

    move/from16 v42, v17

    sub-int v41, v41, v42

    move/from16 v42, v18

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move/from16 v43, v19

    mul-float v42, v42, v43

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v42, v0

    sub-int v41, v41, v42

    move/from16 v20, v41

    .line 359
    .local v20, "currCenter":I
    move/from16 v41, v20

    move/from16 v42, v7

    const/16 v43, 0x2

    div-int/lit8 v42, v42, 0x2

    sub-int v41, v41, v42

    move/from16 v21, v41

    .line 360
    .local v21, "currLeft":I
    move/from16 v41, v21

    move/from16 v42, v7

    add-int v41, v41, v42

    move/from16 v22, v41

    .line 362
    .local v22, "currRight":I
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getBaseline()I

    move-result v41

    move/from16 v23, v41

    .line 363
    .local v23, "prevBaseline":I
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getBaseline()I

    move-result v41

    move/from16 v24, v41

    .line 364
    .local v24, "currBaseline":I
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getBaseline()I

    move-result v41

    move/from16 v25, v41

    .line 365
    .local v25, "nextBaseline":I
    move/from16 v41, v23

    move/from16 v42, v24

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v42, v25

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v26, v41

    .line 366
    .local v26, "maxBaseline":I
    move/from16 v41, v26

    move/from16 v42, v23

    sub-int v41, v41, v42

    move/from16 v27, v41

    .line 367
    .local v27, "prevTopOffset":I
    move/from16 v41, v26

    move/from16 v42, v24

    sub-int v41, v41, v42

    move/from16 v28, v41

    .line 368
    .local v28, "currTopOffset":I
    move/from16 v41, v26

    move/from16 v42, v25

    sub-int v41, v41, v42

    move/from16 v29, v41

    .line 369
    .local v29, "nextTopOffset":I
    move/from16 v41, v27

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v30, v41

    .line 370
    .local v30, "alignedPrevHeight":I
    move/from16 v41, v28

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v31, v41

    .line 371
    .local v31, "alignedCurrHeight":I
    move/from16 v41, v29

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v32, v41

    .line 372
    .local v32, "alignedNextHeight":I
    move/from16 v41, v30

    move/from16 v42, v31

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v42, v32

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v33, v41

    .line 375
    .local v33, "maxTextHeight":I
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    move/from16 v41, v0

    const/16 v42, 0x70

    and-int/lit8 v41, v41, 0x70

    move/from16 v34, v41

    .line 380
    .local v34, "vgrav":I
    move/from16 v41, v34

    sparse-switch v41, :sswitch_data_0

    .line 383
    move/from16 v41, v14

    move/from16 v42, v27

    add-int v41, v41, v42

    move/from16 v35, v41

    .line 384
    .local v35, "prevTop":I
    move/from16 v41, v14

    move/from16 v42, v28

    add-int v41, v41, v42

    move/from16 v36, v41

    .line 385
    .local v36, "currTop":I
    move/from16 v41, v14

    move/from16 v42, v29

    add-int v41, v41, v42

    move/from16 v37, v41

    .line 402
    .local v37, "nextTop":I
    :goto_0
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move/from16 v42, v21

    move/from16 v43, v36

    move/from16 v44, v22

    move/from16 v45, v36

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    .line 403
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v45, v45, v46

    .line 402
    invoke-virtual/range {v41 .. v45}, Landroid/widget/TextView;->layout(IIII)V

    .line 405
    move/from16 v41, v12

    move/from16 v42, v21

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move/from16 v43, v6

    sub-int v42, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->min(II)I

    move-result v41

    move/from16 v38, v41

    .line 406
    .local v38, "prevLeft":I
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move/from16 v42, v38

    move/from16 v43, v35

    move/from16 v44, v38

    move/from16 v45, v6

    add-int v44, v44, v45

    move/from16 v45, v35

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    .line 407
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v45, v45, v46

    .line 406
    invoke-virtual/range {v41 .. v45}, Landroid/widget/TextView;->layout(IIII)V

    .line 409
    move/from16 v41, v10

    move/from16 v42, v13

    sub-int v41, v41, v42

    move/from16 v42, v8

    sub-int v41, v41, v42

    move/from16 v42, v22

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v43, v0

    add-int v42, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v39, v41

    .line 411
    .local v39, "nextLeft":I
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move/from16 v42, v39

    move/from16 v43, v37

    move/from16 v44, v39

    move/from16 v45, v8

    add-int v44, v44, v45

    move/from16 v45, v37

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    .line 412
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v45, v45, v46

    .line 411
    invoke-virtual/range {v41 .. v45}, Landroid/widget/TextView;->layout(IIII)V

    .line 414
    move-object/from16 v41, v2

    move/from16 v42, v4

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 415
    move-object/from16 v41, v2

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    .line 416
    .end local v6    # "prevWidth":I
    .end local v7    # "currWidth":I
    .end local v8    # "nextWidth":I
    .end local v9    # "halfCurrWidth":I
    .end local v10    # "stripWidth":I
    .end local v11    # "stripHeight":I
    .end local v12    # "paddingLeft":I
    .end local v13    # "paddingRight":I
    .end local v14    # "paddingTop":I
    .end local v15    # "paddingBottom":I
    .end local v16    # "textPaddedLeft":I
    .end local v17    # "textPaddedRight":I
    .end local v18    # "contentWidth":I
    .end local v19    # "currOffset":F
    .end local v20    # "currCenter":I
    .end local v21    # "currLeft":I
    .end local v22    # "currRight":I
    .end local v23    # "prevBaseline":I
    .end local v24    # "currBaseline":I
    .end local v25    # "nextBaseline":I
    .end local v26    # "maxBaseline":I
    .end local v27    # "prevTopOffset":I
    .end local v28    # "currTopOffset":I
    .end local v29    # "nextTopOffset":I
    .end local v30    # "alignedPrevHeight":I
    .end local v31    # "alignedCurrHeight":I
    .end local v32    # "alignedNextHeight":I
    .end local v33    # "maxTextHeight":I
    .end local v34    # "vgrav":I
    .end local v35    # "prevTop":I
    .end local v36    # "currTop":I
    .end local v37    # "nextTop":I
    .end local v38    # "prevLeft":I
    .end local v39    # "nextLeft":I
    :goto_1
    return-void

    .line 333
    :cond_2
    move/from16 v41, v5

    if-nez v41, :cond_0

    move/from16 v41, v4

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    move/from16 v42, v0

    cmpl-float v41, v41, v42

    if-nez v41, :cond_0

    .line 334
    goto :goto_1

    .line 388
    .restart local v6    # "prevWidth":I
    .restart local v7    # "currWidth":I
    .restart local v8    # "nextWidth":I
    .restart local v9    # "halfCurrWidth":I
    .restart local v10    # "stripWidth":I
    .restart local v11    # "stripHeight":I
    .restart local v12    # "paddingLeft":I
    .restart local v13    # "paddingRight":I
    .restart local v14    # "paddingTop":I
    .restart local v15    # "paddingBottom":I
    .restart local v16    # "textPaddedLeft":I
    .restart local v17    # "textPaddedRight":I
    .restart local v18    # "contentWidth":I
    .restart local v19    # "currOffset":F
    .restart local v20    # "currCenter":I
    .restart local v21    # "currLeft":I
    .restart local v22    # "currRight":I
    .restart local v23    # "prevBaseline":I
    .restart local v24    # "currBaseline":I
    .restart local v25    # "nextBaseline":I
    .restart local v26    # "maxBaseline":I
    .restart local v27    # "prevTopOffset":I
    .restart local v28    # "currTopOffset":I
    .restart local v29    # "nextTopOffset":I
    .restart local v30    # "alignedPrevHeight":I
    .restart local v31    # "alignedCurrHeight":I
    .restart local v32    # "alignedNextHeight":I
    .restart local v33    # "maxTextHeight":I
    .restart local v34    # "vgrav":I
    :sswitch_0
    move/from16 v41, v11

    move/from16 v42, v14

    sub-int v41, v41, v42

    move/from16 v42, v15

    sub-int v41, v41, v42

    move/from16 v38, v41

    .line 389
    .local v38, "paddedHeight":I
    move/from16 v41, v38

    move/from16 v42, v33

    sub-int v41, v41, v42

    const/16 v42, 0x2

    div-int/lit8 v41, v41, 0x2

    move/from16 v39, v41

    .line 390
    .local v39, "centeredTop":I
    move/from16 v41, v39

    move/from16 v42, v27

    add-int v41, v41, v42

    move/from16 v35, v41

    .line 391
    .restart local v35    # "prevTop":I
    move/from16 v41, v39

    move/from16 v42, v28

    add-int v41, v41, v42

    move/from16 v36, v41

    .line 392
    .restart local v36    # "currTop":I
    move/from16 v41, v39

    move/from16 v42, v29

    add-int v41, v41, v42

    move/from16 v37, v41

    .line 393
    .restart local v37    # "nextTop":I
    goto/16 :goto_0

    .line 395
    .end local v35    # "prevTop":I
    .end local v36    # "currTop":I
    .end local v37    # "nextTop":I
    .end local v38    # "paddedHeight":I
    .end local v39    # "centeredTop":I
    :sswitch_1
    move/from16 v41, v11

    move/from16 v42, v15

    sub-int v41, v41, v42

    move/from16 v42, v33

    sub-int v41, v41, v42

    move/from16 v40, v41

    .line 396
    .local v40, "bottomGravTop":I
    move/from16 v41, v40

    move/from16 v42, v27

    add-int v41, v41, v42

    move/from16 v35, v41

    .line 397
    .restart local v35    # "prevTop":I
    move/from16 v41, v40

    move/from16 v42, v28

    add-int v41, v41, v42

    move/from16 v36, v41

    .line 398
    .restart local v36    # "currTop":I
    move/from16 v41, v40

    move/from16 v42, v29

    add-int v41, v41, v42

    move/from16 v37, v41

    .restart local v37    # "nextTop":I
    goto/16 :goto_0

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
