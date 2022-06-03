.class Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$CheckedItemAdapter;,
        Landroidx/appcompat/app/AlertController$AlertParams;,
        Landroidx/appcompat/app/AlertController$RecycleListView;,
        Landroidx/appcompat/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private final mButtonIconDimen:I

.field mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 11

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "di":Landroidx/appcompat/app/AppCompatDialog;
    move-object v3, p3

    .local v3, "window":Landroid/view/Window;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 101
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 111
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 122
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    .line 126
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/app/AlertController$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/appcompat/app/AlertController$1;-><init>(Landroidx/appcompat/app/AlertController;)V

    iput-object v6, v5, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 183
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 184
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 185
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 186
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/app/AlertController$ButtonHandler;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Landroidx/appcompat/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v6, v5, Landroidx/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 188
    move-object v5, v1

    const/4 v6, 0x0

    sget-object v7, Landroidx/appcompat/R$styleable;->AlertDialog:[I

    sget v8, Landroidx/appcompat/R$attr;->alertDialogStyle:I

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 191
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->AlertDialog_android_layout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 192
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mButtonPanelSideLayout:I

    .line 194
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->AlertDialog_listLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mListLayout:I

    .line 195
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 196
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    const/4 v8, 0x0

    .line 197
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 198
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    .line 199
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->AlertDialog_showTitle:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    .line 200
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->AlertDialog_buttonIconDimen:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    .line 202
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    move-result v5

    .line 206
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "v":Landroid/view/View;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    const/4 v3, 0x1

    move v0, v3

    .line 227
    .end local v0    # "v":Landroid/view/View;
    .local v1, "vg":Landroid/view/ViewGroup;
    .local v2, "i":I
    :goto_0
    return v0

    .line 213
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 214
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 217
    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    .line 218
    .restart local v1    # "vg":Landroid/view/ViewGroup;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v2, v3

    .line 219
    .restart local v2    # "i":I
    :cond_2
    move v3, v2

    if-lez v3, :cond_3

    .line 220
    add-int/lit8 v2, v2, -0x1

    .line 221
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 222
    move-object v3, v0

    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 227
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 5

    .prologue
    .line 829
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "button":Landroid/widget/Button;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v3

    .line 830
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v2

    const/4 v4, 0x1

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 831
    move-object v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 832
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "v":Landroid/view/View;
    move-object v1, p1

    .local v1, "upIndicator":Landroid/view/View;
    move-object v2, p2

    .local v2, "downIndicator":Landroid/view/View;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 749
    move-object v3, v1

    move-object v4, v0

    const/4 v5, -0x1

    .line 750
    invoke-virtual {v4, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 749
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 752
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 753
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x1

    .line 754
    invoke-virtual {v4, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 753
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 756
    :cond_1
    return-void

    .line 750
    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    .line 754
    :cond_3
    const/4 v4, 0x4

    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "customPanel":Landroid/view/View;
    move-object v2, p2

    .local v2, "defaultPanel":Landroid/view/View;
    move-object v4, v1

    if-nez v4, :cond_1

    .line 443
    move-object v4, v2

    instance-of v4, v4, Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    .line 444
    move-object v4, v2

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 447
    :cond_0
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    move-object v0, v4

    .line 463
    .end local v0    # "this":Landroidx/appcompat/app/AlertController;
    :goto_0
    return-object v0

    .line 451
    .restart local v0    # "this":Landroidx/appcompat/app/AlertController;
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 452
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .line 453
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v4, v3

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 454
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 459
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Landroid/view/ViewStub;

    if-eqz v4, :cond_3

    .line 460
    move-object v4, v1

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    .line 463
    :cond_3
    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    move-object v0, v4

    goto :goto_0
.end method

.method private selectContentView()I
    .locals 3

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v1, :cond_0

    .line 238
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    move v0, v1

    .line 243
    .end local v0    # "this":Landroidx/appcompat/app/AlertController;
    :goto_0
    return v0

    .line 240
    .restart local v0    # "this":Landroidx/appcompat/app/AlertController;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 241
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/app/AlertController;->mButtonPanelSideLayout:I

    move v0, v1

    goto :goto_0

    .line 243
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    move v0, v1

    goto :goto_0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 16

    .prologue
    .line 560
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object/from16 v1, p1

    .local v1, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "content":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "indicators":I
    move/from16 v4, p4

    .local v4, "mask":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Landroidx/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 561
    .local v5, "indicatorUp":Landroid/view/View;
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Landroidx/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 563
    .local v6, "indicatorDown":Landroid/view/View;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_2

    .line 565
    move-object v9, v2

    move v10, v3

    move v11, v4

    invoke-static {v9, v10, v11}, Landroidx/core/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    .line 567
    move-object v9, v5

    if-eqz v9, :cond_0

    .line 568
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 570
    :cond_0
    move-object v9, v6

    if-eqz v9, :cond_1

    .line 571
    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 636
    :cond_1
    :goto_0
    return-void

    .line 575
    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    move v9, v3

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_3

    .line 576
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 577
    const/4 v9, 0x0

    move-object v5, v9

    .line 579
    :cond_3
    move-object v9, v6

    if-eqz v9, :cond_4

    move v9, v3

    const/4 v10, 0x2

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_4

    .line 580
    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 581
    const/4 v9, 0x0

    move-object v6, v9

    .line 584
    :cond_4
    move-object v9, v5

    if-nez v9, :cond_5

    move-object v9, v6

    if-eqz v9, :cond_1

    .line 585
    :cond_5
    move-object v9, v5

    move-object v7, v9

    .line 586
    .local v7, "top":Landroid/view/View;
    move-object v9, v6

    move-object v8, v9

    .line 588
    .local v8, "bottom":Landroid/view/View;
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v9, :cond_6

    .line 590
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v10, Landroidx/appcompat/app/AlertController$2;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroidx/appcompat/app/AlertController$2;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 600
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v10, Landroidx/appcompat/app/AlertController$3;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroidx/appcompat/app/AlertController$3;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroidx/core/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    move-result v9

    goto :goto_0

    .line 606
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_7

    .line 608
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v10, Landroidx/appcompat/app/AlertController$4;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroidx/appcompat/app/AlertController$4;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 619
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v10, Landroidx/appcompat/app/AlertController$5;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroidx/appcompat/app/AlertController$5;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    move-result v9

    goto :goto_0

    .line 627
    :cond_7
    move-object v9, v7

    if-eqz v9, :cond_8

    .line 628
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 630
    :cond_8
    move-object v9, v8

    if-eqz v9, :cond_1

    .line 631
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "buttonPanel":Landroid/view/ViewGroup;
    const/4 v7, 0x1

    move v2, v7

    .line 760
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v7, 0x2

    move v3, v7

    .line 761
    .local v3, "BIT_BUTTON_NEGATIVE":I
    const/4 v7, 0x4

    move v4, v7

    .line 762
    .local v4, "BIT_BUTTON_NEUTRAL":I
    const/4 v7, 0x0

    move v5, v7

    .line 763
    .local v5, "whichButtons":I
    move-object v7, v0

    move-object v8, v1

    const v9, 0x1020019

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v7, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 764
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_2

    .line 767
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 778
    :goto_0
    move-object v7, v0

    move-object v8, v1

    const v9, 0x102001a

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v7, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 779
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_4

    .line 782
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 793
    :goto_1
    move-object v7, v0

    move-object v8, v1

    const v9, 0x102001b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v7, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 794
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_6

    .line 797
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 808
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroidx/appcompat/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 813
    move v7, v5

    move v8, v2

    if-ne v7, v8, :cond_8

    .line 814
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {v7, v8}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 822
    :cond_0
    :goto_3
    move v7, v5

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    :goto_4
    move v6, v7

    .line 823
    .local v6, "hasButtons":Z
    move v7, v6

    if-nez v7, :cond_1

    .line 824
    move-object v7, v1

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 826
    :cond_1
    return-void

    .line 769
    .end local v6    # "hasButtons":Z
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 770
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 771
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 772
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 774
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 775
    move v7, v5

    move v8, v2

    or-int/2addr v7, v8

    move v5, v7

    goto/16 :goto_0

    .line 784
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 785
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 786
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 787
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 789
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 790
    move v7, v5

    move v8, v3

    or-int/2addr v7, v8

    move v5, v7

    goto/16 :goto_1

    .line 799
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 800
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    .line 801
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 802
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 804
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 805
    move v7, v5

    move v8, v4

    or-int/2addr v7, v8

    move v5, v7

    goto/16 :goto_2

    .line 815
    :cond_8
    move v7, v5

    move v8, v3

    if-ne v7, v8, :cond_9

    .line 816
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {v7, v8}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 817
    :cond_9
    move v7, v5

    move v8, v4

    if-ne v7, v8, :cond_0

    .line 818
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {v7, v8}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 822
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "contentPanel":Landroid/view/ViewGroup;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Landroidx/appcompat/R$id;->scrollView:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    iput-object v5, v4, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 720
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    .line 721
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 724
    move-object v4, v0

    move-object v5, v1

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 725
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 726
    .line 745
    :goto_0
    return-void

    .line 729
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 730
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :goto_1
    goto :goto_0

    .line 732
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 735
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 736
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v2, v4

    .line 737
    .local v2, "scrollParent":Landroid/view/ViewGroup;
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 738
    .local v3, "childIndex":I
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 739
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    move v6, v3

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 741
    goto :goto_1

    .line 742
    .end local v2    # "scrollParent":Landroid/view/ViewGroup;
    .end local v3    # "childIndex":I
    :cond_2
    move-object v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "customPanel":Landroid/view/ViewGroup;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 641
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    move-object v2, v5

    .line 649
    .local v2, "customView":Landroid/view/View;
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 650
    .local v3, "hasCustomView":Z
    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-static {v5}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 651
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v6, 0x20000

    const/high16 v7, 0x20000

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setFlags(II)V

    .line 655
    :cond_1
    move v5, v3

    if-eqz v5, :cond_7

    .line 656
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Landroidx/appcompat/R$id;->custom:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    move-object v4, v5

    .line 657
    .local v4, "custom":Landroid/widget/FrameLayout;
    move-object v5, v4

    move-object v6, v2

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v5, :cond_2

    .line 660
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/app/AlertController;->mViewSpacingLeft:I

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/app/AlertController;->mViewSpacingTop:I

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/app/AlertController;->mViewSpacingRight:I

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 664
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_3

    .line 665
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v6, 0x0

    iput v6, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 667
    .line 670
    .end local v4    # "custom":Landroid/widget/FrameLayout;
    :cond_3
    :goto_2
    return-void

    .line 642
    .end local v2    # "customView":Landroid/view/View;
    .end local v3    # "hasCustomView":Z
    :cond_4
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    if-eqz v5, :cond_5

    .line 643
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v3, v5

    .line 644
    .local v3, "inflater":Landroid/view/LayoutInflater;
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 645
    .restart local v2    # "customView":Landroid/view/View;
    goto :goto_0

    .line 646
    .end local v2    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    const/4 v5, 0x0

    move-object v2, v5

    .restart local v2    # "customView":Landroid/view/View;
    goto :goto_0

    .line 649
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 668
    .local v3, "hasCustomView":Z
    :cond_7
    move-object v5, v1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "topPanel":Landroid/view/ViewGroup;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 675
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v2, v4

    .line 678
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 681
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 682
    .local v3, "titleTemplate":Landroid/view/View;
    move-object v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 683
    .line 716
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void

    .line 684
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 686
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v2, v4

    .line 687
    .local v2, "hasTextTitle":Z
    move v4, v2

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    if-eqz v4, :cond_4

    .line 689
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Landroidx/appcompat/R$id;->alertTitle:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 690
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/app/AlertController;->mIconId:I

    if-eqz v4, :cond_2

    .line 696
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 686
    .end local v2    # "hasTextTitle":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 697
    .restart local v2    # "hasTextTitle":Z
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 698
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 702
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 703
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 704
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 705
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    .line 702
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 706
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 710
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 711
    .restart local v3    # "titleTemplate":Landroid/view/View;
    move-object v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 712
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 713
    move-object v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 24

    .prologue
    .line 467
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/app/AlertController;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    sget v20, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v3, v19

    .line 468
    .local v3, "parentPanel":Landroid/view/View;
    move-object/from16 v19, v3

    sget v20, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v4, v19

    .line 469
    .local v4, "defaultTopPanel":Landroid/view/View;
    move-object/from16 v19, v3

    sget v20, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v5, v19

    .line 470
    .local v5, "defaultContentPanel":Landroid/view/View;
    move-object/from16 v19, v3

    sget v20, Landroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v6, v19

    .line 474
    .local v6, "defaultButtonPanel":Landroid/view/View;
    move-object/from16 v19, v3

    sget v20, Landroidx/appcompat/R$id;->customPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v7, v19

    .line 475
    .local v7, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v19, v2

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroidx/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 477
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v8, v19

    .line 478
    .local v8, "customTopPanel":Landroid/view/View;
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v9, v19

    .line 479
    .local v9, "customContentPanel":Landroid/view/View;
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v10, v19

    .line 482
    .local v10, "customButtonPanel":Landroid/view/View;
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-direct/range {v19 .. v21}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v11, v19

    .line 483
    .local v11, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v5

    invoke-direct/range {v19 .. v21}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v12, v19

    .line 484
    .local v12, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move-object/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v13, v19

    .line 486
    .local v13, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    invoke-direct/range {v19 .. v20}, Landroidx/appcompat/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 487
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    invoke-direct/range {v19 .. v20}, Landroidx/appcompat/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 488
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    invoke-direct/range {v19 .. v20}, Landroidx/appcompat/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 490
    move-object/from16 v19, v7

    if-eqz v19, :cond_8

    move-object/from16 v19, v7

    .line 491
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v19, 0x1

    :goto_0
    move/from16 v14, v19

    .line 492
    .local v14, "hasCustomPanel":Z
    move-object/from16 v19, v11

    if-eqz v19, :cond_9

    move-object/from16 v19, v11

    .line 493
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v19, 0x1

    :goto_1
    move/from16 v15, v19

    .line 494
    .local v15, "hasTopPanel":Z
    move-object/from16 v19, v13

    if-eqz v19, :cond_a

    move-object/from16 v19, v13

    .line 495
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v19, 0x1

    :goto_2
    move/from16 v16, v19

    .line 498
    .local v16, "hasButtonPanel":Z
    move/from16 v19, v16

    if-nez v19, :cond_0

    .line 499
    move-object/from16 v19, v12

    if-eqz v19, :cond_0

    .line 500
    move-object/from16 v19, v12

    sget v20, Landroidx/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v17, v19

    .line 501
    .local v17, "spacer":Landroid/view/View;
    move-object/from16 v19, v17

    if-eqz v19, :cond_0

    .line 502
    move-object/from16 v19, v17

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .end local v17    # "spacer":Landroid/view/View;
    :cond_0
    move/from16 v19, v15

    if-eqz v19, :cond_b

    .line 509
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 510
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroidx/core/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 514
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v17, v19

    .line 515
    .local v17, "divider":Landroid/view/View;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 516
    :cond_2
    move-object/from16 v19, v11

    sget v20, Landroidx/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v17, v19

    .line 519
    :cond_3
    move-object/from16 v19, v17

    if-eqz v19, :cond_4

    .line 520
    move-object/from16 v19, v17

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 522
    .line 531
    .end local v17    # "divider":Landroid/view/View;
    :cond_4
    :goto_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroidx/appcompat/app/AlertController$RecycleListView;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 532
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    check-cast v19, Landroidx/appcompat/app/AlertController$RecycleListView;

    move/from16 v20, v15

    move/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 536
    :cond_5
    move/from16 v19, v14

    if-nez v19, :cond_6

    .line 537
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    :goto_4
    move-object/from16 v17, v19

    .line 538
    .local v17, "content":Landroid/view/View;
    move-object/from16 v19, v17

    if-eqz v19, :cond_6

    .line 539
    move/from16 v19, v15

    if-eqz v19, :cond_d

    const/16 v19, 0x1

    :goto_5
    move/from16 v20, v16

    if-eqz v20, :cond_e

    const/16 v20, 0x2

    :goto_6
    or-int v19, v19, v20

    move/from16 v18, v19

    .line 541
    .local v18, "indicators":I
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v17

    move/from16 v22, v18

    const/16 v23, 0x3

    invoke-direct/range {v19 .. v23}, Landroidx/appcompat/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 546
    .end local v17    # "content":Landroid/view/View;
    .end local v18    # "indicators":I
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v17, v19

    .line 547
    .local v17, "listView":Landroid/widget/ListView;
    move-object/from16 v19, v17

    if-eqz v19, :cond_7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 548
    move-object/from16 v19, v17

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 549
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    move/from16 v19, v0

    move/from16 v18, v19

    .line 550
    .local v18, "checkedItem":I
    move/from16 v19, v18

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 551
    move-object/from16 v19, v17

    move/from16 v20, v18

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 552
    move-object/from16 v19, v17

    move/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 555
    .end local v18    # "checkedItem":I
    :cond_7
    return-void

    .line 491
    .end local v14    # "hasCustomPanel":Z
    .end local v15    # "hasTopPanel":Z
    .end local v16    # "hasButtonPanel":Z
    .end local v17    # "listView":Landroid/widget/ListView;
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 493
    .restart local v14    # "hasCustomPanel":Z
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 495
    .restart local v15    # "hasTopPanel":Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 523
    .restart local v16    # "hasButtonPanel":Z
    :cond_b
    move-object/from16 v19, v12

    if-eqz v19, :cond_4

    .line 524
    move-object/from16 v19, v12

    sget v20, Landroidx/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v17, v19

    .line 525
    .local v17, "spacer":Landroid/view/View;
    move-object/from16 v19, v17

    if-eqz v19, :cond_4

    .line 526
    move-object/from16 v19, v17

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 537
    .end local v17    # "spacer":Landroid/view/View;
    :cond_c
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    move-object/from16 v19, v0

    goto/16 :goto_4

    .line 539
    .local v17, "content":Landroid/view/View;
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_6
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/util/TypedValue;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v2

    .line 178
    .local v1, "outValue":Landroid/util/TypedValue;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroidx/appcompat/R$attr;->alertDialogCenterButtons:I

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 179
    move-object v2, v1

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 3

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move v1, p1

    .local v1, "whichButton":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 416
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertController;
    :goto_0
    return-object v0

    .line 410
    .restart local v0    # "this":Landroidx/appcompat/app/AlertController;
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v0, v2

    goto :goto_0

    .line 412
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v0, v2

    goto :goto_0

    .line 414
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object v0, v2

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 8

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move v1, p1

    .local v1, "attrId":I
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 399
    .local v2, "out":Landroid/util/TypedValue;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 400
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertController;
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AlertController;
    return-object v0
.end method

.method public installContent()V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/AlertController;->selectContentView()I

    move-result v2

    move v1, v2

    .line 232
    .local v1, "contentView":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 233
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/AlertController;->setupView()V

    .line 234
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertController;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AlertController;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AlertController;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AlertController;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move v1, p1

    .local v1, "whichButton":I
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move-object v3, p3

    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v4, p4

    .local v4, "msg":Landroid/os/Message;
    move-object v5, p5

    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    move-object v6, v4

    if-nez v6, :cond_0

    move-object v6, v3

    if-eqz v6, :cond_0

    .line 324
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    move v7, v1

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v4, v6

    .line 327
    :cond_0
    move v6, v1

    packed-switch v6, :pswitch_data_0

    .line 348
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Button does not exist"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 330
    :pswitch_0
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 331
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 332
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 333
    .line 350
    :goto_0
    return-void

    .line 336
    :pswitch_1
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 337
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 338
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 339
    goto :goto_0

    .line 342
    :pswitch_2
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 343
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 344
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 345
    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 4

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move v1, p1

    .local v1, "layoutHint":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    .line 304
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "customTitleView":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 258
    return-void
.end method

.method public setIcon(I)V
    .locals 4

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 360
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 362
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 363
    move v2, v1

    if-eqz v2, :cond_1

    .line 364
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/AlertController;->mIconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 379
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 381
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 382
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 383
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "message":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 262
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 263
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 248
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 249
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 4

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move v1, p1

    .local v1, "layoutResId":I
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 272
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 273
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 274
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 281
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 282
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 283
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "viewSpacingLeft":I
    move v3, p3

    .local v3, "viewSpacingTop":I
    move v4, p4

    .local v4, "viewSpacingRight":I
    move v5, p5

    .local v5, "viewSpacingBottom":I
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 291
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 292
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 293
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroidx/appcompat/app/AlertController;->mViewSpacingLeft:I

    .line 294
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroidx/appcompat/app/AlertController;->mViewSpacingTop:I

    .line 295
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroidx/appcompat/app/AlertController;->mViewSpacingRight:I

    .line 296
    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroidx/appcompat/app/AlertController;->mViewSpacingBottom:I

    .line 297
    return-void
.end method
