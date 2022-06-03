.class Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private final BG_ATTRS:[I

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroidx/appcompat/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/content/Context;Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 12

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move-object v1, p1

    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move/from16 v4, p4

    .local v4, "forList":Z
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 391
    move-object v6, v0

    move-object v7, v2

    const/4 v8, 0x0

    sget v9, Landroidx/appcompat/R$attr;->actionBarTabStyle:I

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 381
    move-object v6, v0

    const/4 v7, 0x1

    new-array v7, v7, [I

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const v10, 0x10100d4

    aput v10, v8, v9

    iput-object v7, v6, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    .line 392
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 394
    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    sget v9, Landroidx/appcompat/R$attr;->actionBarTabStyle:I

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v6

    move-object v5, v6

    .line 396
    .local v5, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 397
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 401
    move v6, v4

    if-eqz v6, :cond_1

    .line 402
    move-object v6, v0

    const v7, 0x800013

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 405
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    .line 406
    return-void
.end method


# virtual methods
.method public bindTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 4

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 410
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    .line 411
    return-void
.end method

.method public getTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 426
    move-object v2, v1

    const-class v3, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 427
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move-object v1, p1

    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 434
    move-object v2, v1

    const-class v3, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 442
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v3, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v3, v4, :cond_0

    .line 443
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 446
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 5

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move v1, p1

    .local v1, "selected":Z
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->isSelected()Z

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 416
    .local v2, "changed":Z
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 417
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    .line 418
    move-object v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    .line 420
    :cond_0
    return-void

    .line 415
    .end local v2    # "changed":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 14

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    move-object v1, v8

    .line 450
    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/appcompat/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v8

    move-object v2, v8

    .line 451
    .local v2, "custom":Landroid/view/View;
    move-object v8, v2

    if-eqz v8, :cond_4

    .line 452
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    move-object v3, v8

    .line 453
    .local v3, "customParent":Landroid/view/ViewParent;
    move-object v8, v3

    move-object v9, v0

    if-eq v8, v9, :cond_1

    .line 454
    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v3

    check-cast v8, Landroid/view/ViewGroup;

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 455
    :cond_0
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 457
    :cond_1
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 458
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 460
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    .line 514
    .end local v3    # "customParent":Landroid/view/ViewParent;
    :cond_3
    :goto_0
    return-void

    .line 464
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 465
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 466
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 469
    :cond_5
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/appcompat/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v3, v8

    .line 470
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/appcompat/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    move-object v4, v8

    .line 472
    .local v4, "text":Ljava/lang/CharSequence;
    move-object v8, v3

    if-eqz v8, :cond_b

    .line 473
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v8, :cond_6

    .line 474
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    move-object v5, v8

    .line 475
    .local v5, "iconView":Landroid/widget/ImageView;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v8

    .line 477
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v8, v6

    const/16 v9, 0x10

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 478
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    move-object v8, v0

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 480
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 482
    .end local v5    # "iconView":Landroid/widget/ImageView;
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    :cond_7
    :goto_1
    move-object v8, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x1

    :goto_2
    move v5, v8

    .line 490
    .local v5, "hasText":Z
    move v8, v5

    if-eqz v8, :cond_d

    .line 491
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v8, :cond_8

    .line 492
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    sget v12, Landroidx/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v9, v10, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v6, v8

    .line 494
    .local v6, "textView":Landroid/widget/TextView;
    move-object v8, v6

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 495
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, v8

    .line 497
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v8, v7

    const/16 v9, 0x10

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 498
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 500
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 502
    .end local v6    # "textView":Landroid/widget/TextView;
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    :cond_9
    :goto_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_a

    .line 510
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 512
    :cond_a
    move-object v8, v0

    move v9, v5

    if-eqz v9, :cond_e

    const/4 v9, 0x0

    :goto_4
    invoke-static {v8, v9}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 484
    .end local v5    # "hasText":Z
    :cond_b
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_7

    .line 485
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 489
    :cond_c
    const/4 v8, 0x0

    goto :goto_2

    .line 504
    .restart local v5    # "hasText":Z
    :cond_d
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    .line 505
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 512
    :cond_e
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_4
.end method
