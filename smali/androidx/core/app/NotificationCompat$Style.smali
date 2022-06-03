.class public abstract Landroidx/core/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroidx/core/app/NotificationCompat$Builder;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1658
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1666
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .locals 9

    .prologue
    .line 1947
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v1, v6

    .line 1948
    .local v1, "resources":Landroid/content/res/Resources;
    move-object v6, v1

    sget v7, Landroidx/core/R$dimen;->notification_top_pad:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move v2, v6

    .line 1949
    .local v2, "padding":I
    move-object v6, v1

    sget v7, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move v3, v6

    .line 1951
    .local v3, "largePadding":I
    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    move v4, v6

    .line 1952
    .local v4, "fontScale":F
    move v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3fa66666    # 1.3f

    invoke-static {v6, v7, v8}, Landroidx/core/app/NotificationCompat$Style;->constrain(FFF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    const v7, 0x3e999998    # 0.29999995f

    div-float/2addr v6, v7

    move v5, v6

    .line 1956
    .local v5, "largeFactor":F
    const/high16 v6, 0x3f800000    # 1.0f

    move v7, v5

    sub-float/2addr v6, v7

    move v7, v2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move v7, v5

    move v8, v3

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Style;
    return v0
.end method

.method private static constrain(FFF)F
    .locals 5

    .prologue
    .line 1960
    move v0, p0

    .local v0, "amount":F
    move v1, p1

    .local v1, "low":F
    move v2, p2

    .local v2, "high":F
    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    .end local v0    # "amount":F
    return v0

    .restart local v0    # "amount":F
    :cond_0
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 1893
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move/from16 v1, p1

    .local v1, "iconId":I
    move/from16 v2, p2

    .local v2, "color":I
    move/from16 v3, p3

    .local v3, "size":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v4, v9

    .line 1894
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move v9, v3

    if-nez v9, :cond_1

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    :goto_0
    move v5, v9

    .line 1895
    .local v5, "width":I
    move v9, v3

    if-nez v9, :cond_2

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    :goto_1
    move v6, v9

    .line 1896
    .local v6, "height":I
    move v9, v5

    move v10, v6

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v7, v9

    .line 1897
    .local v7, "resultBitmap":Landroid/graphics/Bitmap;
    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v5

    move v13, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1898
    move v9, v2

    if-eqz v9, :cond_0

    .line 1899
    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v2

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1902
    :cond_0
    new-instance v9, Landroid/graphics/Canvas;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v7

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v8, v9

    .line 1903
    .local v8, "canvas":Landroid/graphics/Canvas;
    move-object v9, v4

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1904
    move-object v9, v7

    move-object v0, v9

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Style;
    return-object v0

    .line 1894
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$Style;
    :cond_1
    move v9, v3

    goto :goto_0

    .line 1895
    .restart local v5    # "width":I
    :cond_2
    move v9, v3

    goto :goto_1
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 1909
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move/from16 v1, p1

    .local v1, "iconId":I
    move/from16 v2, p2

    .local v2, "size":I
    move/from16 v3, p3

    .local v3, "iconSize":I
    move/from16 v4, p4

    .local v4, "color":I
    move-object v9, v0

    sget v10, Landroidx/core/R$drawable;->notification_icon_background:I

    move v11, v4

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    move v12, v2

    invoke-direct {v9, v10, v11, v12}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v5, v9

    .line 1911
    .local v5, "coloredBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v6, v9

    .line 1912
    .local v6, "canvas":Landroid/graphics/Canvas;
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v7, v9

    .line 1913
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    move-object v9, v7

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 1914
    move v9, v2

    move v10, v3

    sub-int/2addr v9, v10

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v8, v9

    .line 1915
    .local v8, "inset":I
    move-object v9, v7

    move v10, v8

    move v11, v8

    move v12, v3

    move v13, v8

    add-int/2addr v12, v13

    move v13, v3

    move v14, v8

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1916
    move-object v9, v7

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, -0x1

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1917
    move-object v9, v7

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1918
    move-object v9, v5

    move-object v0, v9

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Style;
    return-object v0

    .line 1909
    .end local v5    # "coloredBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "inset":I
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$Style;
    :cond_0
    move v11, v4

    goto :goto_0
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .locals 5

    .prologue
    .line 1941
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move-object v1, p1

    .local v1, "outerView":Landroid/widget/RemoteViews;
    move-object v2, v1

    sget v3, Landroidx/core/R$id;->title:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1942
    move-object v2, v1

    sget v3, Landroidx/core/R$id;->text2:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1943
    move-object v2, v1

    sget v3, Landroidx/core/R$id;->text:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1944
    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1726
    return-void
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 0
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1694
    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .locals 25
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1742
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/core/app/NotificationCompat$Style;
    move/from16 v4, p1

    .local v4, "showSmallIcon":Z
    move/from16 v5, p2

    .local v5, "resId":I
    move/from16 v6, p3

    .local v6, "fitIn1U":Z
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object v7, v15

    .line 1743
    .local v7, "res":Landroid/content/res/Resources;
    new-instance v15, Landroid/widget/RemoteViews;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v5

    invoke-direct/range {v16 .. v18}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v8, v15

    .line 1744
    .local v8, "contentView":Landroid/widget/RemoteViews;
    const/4 v15, 0x0

    move v9, v15

    .line 1745
    .local v9, "showLine3":Z
    const/4 v15, 0x0

    move v10, v15

    .line 1747
    .local v10, "showLine2":Z
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v15}, Landroidx/core/app/NotificationCompat$Builder;->getPriority()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    const/4 v15, 0x1

    :goto_0
    move v11, v15

    .line 1748
    .local v11, "minPriority":Z
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 1750
    move v15, v11

    if-eqz v15, :cond_9

    .line 1751
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->notification_background:I

    const-string/jumbo v17, "setBackgroundResource"

    sget v18, Landroidx/core/R$drawable;->notification_bg_low:I

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1753
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    const-string/jumbo v17, "setBackgroundResource"

    sget v18, Landroidx/core/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1763
    :cond_0
    :goto_1
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_c

    .line 1766
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_a

    .line 1767
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1768
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1772
    :goto_2
    move v15, v4

    if-eqz v15, :cond_1

    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v15, v15, Landroid/app/Notification;->icon:I

    if-eqz v15, :cond_1

    .line 1773
    move-object v15, v7

    sget v16, Landroidx/core/R$dimen;->notification_right_icon_size:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move v12, v15

    .line 1775
    .local v12, "backgroundSize":I
    move v15, v12

    move-object/from16 v16, v7

    sget v17, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v17, 0x2

    mul-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    move v13, v15

    .line 1777
    .local v13, "iconSize":I
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-lt v15, v0, :cond_b

    .line 1778
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v16, v0

    move/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v19, v0

    .line 1782
    invoke-virtual/range {v19 .. v19}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v19

    .line 1778
    invoke-direct/range {v15 .. v19}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object v14, v15

    .line 1783
    .local v14, "smallBit":Landroid/graphics/Bitmap;
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->right_icon:I

    move-object/from16 v17, v14

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1784
    .line 1788
    .end local v14    # "smallBit":Landroid/graphics/Bitmap;
    :goto_3
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->right_icon:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1789
    .line 1809
    .end local v12    # "backgroundSize":I
    .end local v13    # "iconSize":I
    :cond_1
    :goto_4
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v15, :cond_2

    .line 1810
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->title:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1812
    :cond_2
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_3

    .line 1813
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1814
    const/4 v15, 0x1

    move v9, v15

    .line 1817
    :cond_3
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_e

    const/4 v15, 0x1

    :goto_5
    move v12, v15

    .line 1818
    .local v12, "hasRightSide":Z
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v15, :cond_f

    .line 1819
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1820
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1821
    const/4 v15, 0x1

    move v9, v15

    .line 1822
    const/4 v15, 0x1

    move v12, v15

    .line 1841
    :goto_6
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_4

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    .line 1842
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1843
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_12

    .line 1844
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text2:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1845
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text2:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1846
    const/4 v15, 0x1

    move v10, v15

    .line 1854
    :cond_4
    :goto_7
    move v15, v10

    if-eqz v15, :cond_6

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_6

    .line 1855
    move v15, v6

    if-eqz v15, :cond_5

    .line 1857
    move-object v15, v7

    sget v16, Landroidx/core/R$dimen;->notification_subtext_size:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    move v13, v15

    .line 1859
    .local v13, "subTextSize":F
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text:I

    const/16 v17, 0x0

    move/from16 v18, v13

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 1863
    .end local v13    # "subTextSize":F
    :cond_5
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->line1:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1866
    :cond_6
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v15}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_7

    .line 1867
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz v15, :cond_13

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_13

    .line 1868
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->chronometer:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1869
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->chronometer:I

    const-string/jumbo v17, "setBase"

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    .line 1870
    invoke-virtual/range {v18 .. v18}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v18

    .line 1871
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v20, v20, v22

    add-long v18, v18, v20

    .line 1869
    invoke-virtual/range {v15 .. v19}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1872
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->chronometer:I

    const-string/jumbo v17, "setStarted"

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1877
    :goto_8
    const/4 v15, 0x1

    move v12, v15

    .line 1879
    :cond_7
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->right_side:I

    move/from16 v17, v12

    if-eqz v17, :cond_14

    const/16 v17, 0x0

    :goto_9
    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1880
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->line3:I

    move/from16 v17, v9

    if-eqz v17, :cond_15

    const/16 v17, 0x0

    :goto_a
    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1881
    move-object v15, v8

    move-object v3, v15

    .end local v3    # "this":Landroidx/core/app/NotificationCompat$Style;
    return-object v3

    .line 1747
    .end local v11    # "minPriority":Z
    .end local v12    # "hasRightSide":Z
    .restart local v3    # "this":Landroidx/core/app/NotificationCompat$Style;
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1756
    .restart local v11    # "minPriority":Z
    :cond_9
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->notification_background:I

    const-string/jumbo v17, "setBackgroundResource"

    sget v18, Landroidx/core/R$drawable;->notification_bg:I

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1758
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    const-string/jumbo v17, "setBackgroundResource"

    sget v18, Landroidx/core/R$drawable;->notification_template_icon_bg:I

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 1770
    :cond_a
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    const/16 v17, 0x8

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 1785
    .local v12, "backgroundSize":I
    .local v13, "iconSize":I
    :cond_b
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->right_icon:I

    move-object/from16 v17, v3

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 1790
    .end local v12    # "backgroundSize":I
    .end local v13    # "iconSize":I
    :cond_c
    move v15, v4

    if-eqz v15, :cond_1

    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v15, v15, Landroid/app/Notification;->icon:I

    if-eqz v15, :cond_1

    .line 1791
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1792
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-lt v15, v0, :cond_d

    .line 1793
    move-object v15, v7

    sget v16, Landroidx/core/R$dimen;->notification_large_icon_width:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v16, v7

    sget v17, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    .line 1795
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    sub-int v15, v15, v16

    move v12, v15

    .line 1796
    .restart local v12    # "backgroundSize":I
    move-object v15, v7

    sget v16, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move v13, v15

    .line 1798
    .restart local v13    # "iconSize":I
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v16, v0

    move/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v19, v0

    .line 1802
    invoke-virtual/range {v19 .. v19}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v19

    .line 1798
    invoke-direct/range {v15 .. v19}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object v14, v15

    .line 1803
    .restart local v14    # "smallBit":Landroid/graphics/Bitmap;
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    move-object/from16 v17, v14

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1804
    goto/16 :goto_4

    .line 1805
    .end local v12    # "backgroundSize":I
    .end local v13    # "iconSize":I
    .end local v14    # "smallBit":Landroid/graphics/Bitmap;
    :cond_d
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    move-object/from16 v17, v3

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 1817
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 1823
    .local v12, "hasRightSide":Z
    :cond_f
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-lez v15, :cond_11

    .line 1824
    move-object v15, v7

    sget v16, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move v13, v15

    .line 1826
    .local v13, "tooBig":I
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    move/from16 v16, v13

    move/from16 v0, v16

    if-le v15, v0, :cond_10

    .line 1827
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    move-object/from16 v17, v7

    sget v18, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1833
    :goto_b
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1834
    const/4 v15, 0x1

    move v9, v15

    .line 1835
    const/4 v15, 0x1

    move v12, v15

    .line 1836
    goto/16 :goto_6

    .line 1830
    :cond_10
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v15

    move-object v14, v15

    .line 1831
    .local v14, "f":Ljava/text/NumberFormat;
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    move-object/from16 v17, v14

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_b

    .line 1837
    .end local v13    # "tooBig":I
    .end local v14    # "f":Ljava/text/NumberFormat;
    :cond_11
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    const/16 v17, 0x8

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_6

    .line 1848
    :cond_12
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text2:I

    const/16 v17, 0x8

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_7

    .line 1874
    :cond_13
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->time:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1875
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->time:I

    const-string/jumbo v17, "setTime"

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_8

    .line 1879
    :cond_14
    const/16 v17, 0x8

    goto/16 :goto_9

    .line 1880
    :cond_15
    const/16 v17, 0x8

    goto/16 :goto_a
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 1678
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    const/4 v2, 0x0

    move-object v1, v2

    .line 1679
    .local v1, "notification":Landroid/app/Notification;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v2, :cond_0

    .line 1680
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move-object v1, v2

    .line 1682
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Style;
    return-object v0
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 9
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1929
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move-object v1, p1

    .local v1, "outerView":Landroid/widget/RemoteViews;
    move-object v2, p2

    .local v2, "innerView":Landroid/widget/RemoteViews;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 1930
    move-object v3, v1

    sget v4, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1931
    move-object v3, v1

    sget v4, Landroidx/core/R$id;->notification_main_column:I

    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1932
    move-object v3, v1

    sget v4, Landroidx/core/R$id;->notification_main_column:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1933
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 1935
    move-object v3, v1

    sget v4, Landroidx/core/R$id;->notification_main_column_container:I

    const/4 v5, 0x0

    move-object v6, v0

    .line 1936
    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1935
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1938
    :cond_0
    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1889
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move v1, p1

    .local v1, "iconId":I
    move v2, p2

    .local v2, "color":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Style;
    return-object v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1709
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Style;
    return-object v0
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1701
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Style;
    return-object v0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1717
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Style;
    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1734
    return-void
.end method

.method public setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 4

    .prologue
    .line 1669
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Style;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationCompat$Builder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1670
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 1671
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v2, :cond_0

    .line 1672
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1675
    :cond_0
    return-void
.end method
