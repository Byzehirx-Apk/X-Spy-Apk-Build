.class public Landroidx/appcompat/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Landroidx/appcompat/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActivityChooserView$InnerLayout;,
        Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityChooserView"


# instance fields
.field private final mActivityChooserContent:Landroid/view/View;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field final mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Landroidx/appcompat/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

.field final mModelDataSetObserver:Landroid/database/DataSetObserver;

.field mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroidx/core/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyle":I
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    move-object v9, v0

    new-instance v10, Landroidx/appcompat/widget/ActivityChooserView$1;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/ActivityChooserView$1;-><init>(Landroidx/appcompat/widget/ActivityChooserView;)V

    iput-object v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    .line 148
    move-object v9, v0

    new-instance v10, Landroidx/appcompat/widget/ActivityChooserView$2;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/ActivityChooserView$2;-><init>(Landroidx/appcompat/widget/ActivityChooserView;)V

    iput-object v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 182
    move-object v9, v0

    const/4 v10, 0x4

    iput v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 223
    move-object v9, v1

    move-object v10, v2

    sget-object v11, Landroidx/appcompat/R$styleable;->ActivityChooserView:[I

    move v12, v3

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v4, v9

    .line 226
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    move-object v9, v0

    move-object v10, v4

    sget v11, Landroidx/appcompat/R$styleable;->ActivityChooserView_initialActivityCount:I

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 230
    move-object v9, v4

    sget v10, Landroidx/appcompat/R$styleable;->ActivityChooserView_expandActivityOverflowButtonDrawable:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v5, v9

    .line 233
    .local v5, "expandActivityOverflowButtonDrawable":Landroid/graphics/drawable/Drawable;
    move-object v9, v4

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    move-object v6, v9

    .line 236
    .local v6, "inflater":Landroid/view/LayoutInflater;
    move-object v9, v6

    sget v10, Landroidx/appcompat/R$layout;->abc_activity_chooser_view:I

    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 238
    move-object v9, v0

    new-instance v10, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;-><init>(Landroidx/appcompat/widget/ActivityChooserView;)V

    iput-object v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mCallbacks:Landroidx/appcompat/widget/ActivityChooserView$Callbacks;

    .line 240
    move-object v9, v0

    move-object v10, v0

    sget v11, Landroidx/appcompat/R$id;->activity_chooser_view_content:I

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    .line 241
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    .line 243
    move-object v9, v0

    move-object v10, v0

    sget v11, Landroidx/appcompat/R$id;->default_activity_button:I

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 244
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ActivityChooserView;->mCallbacks:Landroidx/appcompat/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ActivityChooserView;->mCallbacks:Landroidx/appcompat/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 246
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    sget v11, Landroidx/appcompat/R$id;->image:I

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    .line 248
    move-object v9, v0

    sget v10, Landroidx/appcompat/R$id;->expand_activities_button:I

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    move-object v7, v9

    .line 249
    .local v7, "expandButton":Landroid/widget/FrameLayout;
    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ActivityChooserView;->mCallbacks:Landroidx/appcompat/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    move-object v9, v7

    new-instance v10, Landroidx/appcompat/widget/ActivityChooserView$3;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/ActivityChooserView$3;-><init>(Landroidx/appcompat/widget/ActivityChooserView;)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 257
    move-object v9, v7

    new-instance v10, Landroidx/appcompat/widget/ActivityChooserView$4;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Landroidx/appcompat/widget/ActivityChooserView$4;-><init>(Landroidx/appcompat/widget/ActivityChooserView;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 275
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    .line 276
    move-object v9, v0

    move-object v10, v7

    sget v11, Landroidx/appcompat/R$id;->image:I

    .line 277
    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    .line 278
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    move-object v9, v0

    new-instance v10, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroidx/appcompat/widget/ActivityChooserView;)V

    iput-object v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 281
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    new-instance v10, Landroidx/appcompat/widget/ActivityChooserView$5;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/ActivityChooserView$5;-><init>(Landroidx/appcompat/widget/ActivityChooserView;)V

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 289
    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v8, v9

    .line 290
    .local v8, "resources":Landroid/content/res/Resources;
    move-object v9, v0

    move-object v10, v8

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move-object v11, v8

    sget v12, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 291
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 290
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroidx/appcompat/widget/ActivityChooserView;->mListPopupMaxWidth:I

    .line 292
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 412
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 413
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 417
    .end local v1    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView;
    return v0
.end method

.method public getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;
    .locals 2

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView;
    return-object v0
.end method

.method getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;
    .locals 6

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    if-nez v1, :cond_0

    .line 524
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    .line 525
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 526
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 527
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 528
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserView;->mCallbacks:Landroidx/appcompat/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 529
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserView;->mCallbacks:Landroidx/appcompat/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 531
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView;
    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView;
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 432
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v2

    move-object v1, v2

    .line 433
    .local v1, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 434
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 436
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 437
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v3, v0

    invoke-super {v3}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 442
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v3

    move-object v1, v3

    .line 443
    .local v1, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 444
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 446
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    move-object v2, v3

    .line 447
    .local v2, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 450
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    move-result v3

    .line 453
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 454
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 473
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v6

    if-nez v6, :cond_0

    .line 474
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    move-result v6

    .line 476
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    move-object v3, v4

    .line 462
    .local v3, "child":Landroid/view/View;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    move v4, v2

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v2, v4

    .line 466
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move v6, v1

    move v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroidx/appcompat/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 467
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 468
    return-void
.end method

.method public setActivityChooserModel(Landroidx/appcompat/widget/ActivityChooserModel;)V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v1, p1

    .local v1, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroidx/appcompat/widget/ActivityChooserModel;)V

    .line 300
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    move-result v2

    .line 302
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView;->showPopup()Z

    move-result v2

    .line 304
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 4

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    .line 515
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 5

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move v1, p1

    .local v1, "resourceId":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 333
    .local v2, "contentDescription":Ljava/lang/CharSequence;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 4

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move v1, p1

    .local v1, "itemCount":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 501
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v1, p1

    .local v1, "listener":Landroid/widget/PopupWindow$OnDismissListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 489
    return-void
.end method

.method public setProvider(Landroidx/core/view/ActionProvider;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v1, p1

    .local v1, "provider":Landroidx/core/view/ActionProvider;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    .line 343
    return-void
.end method

.method public showPopup()Z
    .locals 3

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-nez v1, :cond_1

    .line 352
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 356
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView;
    :goto_0
    return v0

    .line 354
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView;
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 355
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 356
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method showPopupUnchecked(I)V
    .locals 12

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move v1, p1

    .local v1, "maxActivityCount":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v7

    if-nez v7, :cond_0

    .line 366
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "No data model. Did you call #setDataModel?"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 369
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 371
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 372
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_0
    move v2, v7

    .line 374
    .local v2, "defaultActivityButtonShown":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v7

    move v3, v7

    .line 375
    .local v3, "activityCount":I
    move v7, v2

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 376
    .local v4, "maxActivityCountOffset":I
    move v7, v1

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_6

    move v7, v3

    move v8, v1

    move v9, v4

    add-int/2addr v8, v9

    if-le v7, v8, :cond_6

    .line 378
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 379
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 385
    :goto_2
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v7

    move-object v5, v7

    .line 386
    .local v5, "popupWindow":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 387
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v7, :cond_1

    move v7, v2

    if-nez v7, :cond_7

    .line 388
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    const/4 v8, 0x1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 392
    :goto_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 393
    .local v6, "contentWidth":I
    move-object v7, v5

    move v8, v6

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 394
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 395
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    if-eqz v7, :cond_2

    .line 396
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/core/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 398
    :cond_2
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Landroidx/appcompat/R$string;->abc_activitychooserview_choose_application:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 400
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 402
    .end local v6    # "contentWidth":I
    :cond_3
    return-void

    .line 372
    .end local v2    # "defaultActivityButtonShown":Z
    .end local v3    # "activityCount":I
    .end local v4    # "maxActivityCountOffset":I
    .end local v5    # "popupWindow":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 375
    .restart local v2    # "defaultActivityButtonShown":Z
    .restart local v3    # "activityCount":I
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 381
    .restart local v4    # "maxActivityCountOffset":I
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 382
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move v8, v1

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_2

    .line 390
    .restart local v5    # "popupWindow":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_3
.end method

.method updateAppearance()V
    .locals 14

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 540
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 545
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v7

    move v1, v7

    .line 546
    .local v1, "activityCount":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v7

    move v2, v7

    .line 547
    .local v2, "historySize":I
    move v7, v1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    move v7, v1

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    move v7, v2

    if-lez v7, :cond_3

    .line 548
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 549
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    move-object v3, v7

    .line 550
    .local v3, "activity":Landroid/content/pm/ResolveInfo;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v4, v7

    .line 551
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    if-eqz v7, :cond_1

    .line 553
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v5, v7

    .line 554
    .local v5, "label":Ljava/lang/CharSequence;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v5

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 556
    .local v6, "contentDescription":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 558
    .line 562
    .end local v3    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "contentDescription":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 563
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    :goto_2
    return-void

    .line 542
    .end local v1    # "activityCount":I
    .end local v2    # "historySize":I
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/16 :goto_0

    .line 559
    .restart local v1    # "activityCount":I
    .restart local v2    # "historySize":I
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 565
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
