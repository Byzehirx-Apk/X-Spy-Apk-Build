.class Lcom/google/android/material/tabs/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field private tab:Lcom/google/android/material/tabs/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 1962
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/tabs/TabLayout;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 1963
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1960
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 1964
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 1965
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    move-object v5, v1

    iget v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    move-object v6, v1

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    move-object v7, v1

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    invoke-static {v3, v4, v5, v6, v7}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1967
    move-object v3, v0

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setGravity(I)V

    .line 1968
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setOrientation(I)V

    .line 1969
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setClickable(Z)V

    .line 1970
    move-object v3, v0

    move-object v4, v0

    .line 1971
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x3ea

    invoke-static {v4, v5}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object v4

    .line 1970
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    .line 1972
    return-void

    .line 1968
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1950
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, p1

    .local v1, "x1":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 1950
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, p1

    .local v1, "x1":Landroid/graphics/Canvas;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/tabs/TabLayout$TabView;)I
    .locals 2

    .prologue
    .line 1950
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/tabs/TabLayout$TabView;
    return v0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 7

    .prologue
    .line 2366
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, p1

    .local v1, "layout":Landroid/text/Layout;
    move v2, p2

    .local v2, "line":I
    move v3, p3

    .local v3, "textSize":F
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    return v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 2030
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 2031
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->getLeft()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->getTop()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->getRight()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$TabView;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2032
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2034
    :cond_0
    return-void
.end method

.method private getContentWidth()I
    .locals 13

    .prologue
    .line 2345
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    const/4 v8, 0x0

    move v1, v8

    .line 2346
    .local v1, "initialized":Z
    const/4 v8, 0x0

    move v2, v8

    .line 2347
    .local v2, "left":I
    const/4 v8, 0x0

    move v3, v8

    .line 2349
    .local v3, "right":I
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/View;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    aput-object v11, v9, v10

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 2350
    .local v7, "view":Landroid/view/View;
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 2351
    move v8, v1

    if-eqz v8, :cond_1

    move v8, v2

    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_1
    move v2, v8

    .line 2352
    move v8, v1

    if-eqz v8, :cond_2

    move v8, v3

    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_2
    move v3, v8

    .line 2353
    const/4 v8, 0x1

    move v1, v8

    .line 2349
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2351
    :cond_1
    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_1

    .line 2352
    :cond_2
    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    goto :goto_2

    .line 2357
    .end local v7    # "view":Landroid/view/View;
    :cond_3
    move v8, v3

    move v9, v2

    sub-int/2addr v8, v9

    move v0, v8

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    return v0
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .locals 14

    .prologue
    .line 1975
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    if-eqz v7, :cond_1

    .line 1976
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v9, v9, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    invoke-static {v8, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1977
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1978
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout$TabView;->getDrawableState()[I

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v7

    .line 1985
    :cond_0
    :goto_0
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v3, v7

    .line 1986
    .local v3, "contentDrawable":Landroid/graphics/drawable/Drawable;
    move-object v7, v3

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1988
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_5

    .line 1989
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v4, v7

    .line 1993
    .local v4, "maskDrawable":Landroid/graphics/drawable/GradientDrawable;
    move-object v7, v4

    const v8, 0x3727c5ac    # 1.0E-5f

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1994
    move-object v7, v4

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1996
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 1997
    invoke-static {v7}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v7

    move-object v5, v7

    .line 2001
    .local v5, "rippleColor":Landroid/content/res/ColorStateList;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_4

    .line 2002
    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v10, v10, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    :goto_1
    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v11, v11, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    :goto_2
    invoke-direct {v8, v9, v10, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v2, v7

    .line 2012
    .line 2015
    .end local v4    # "maskDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v5    # "rippleColor":Landroid/content/res/ColorStateList;
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    :goto_3
    move-object v7, v0

    move-object v8, v2

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2016
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    .line 2017
    return-void

    .line 1981
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "contentDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2002
    .restart local v3    # "contentDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "maskDrawable":Landroid/graphics/drawable/GradientDrawable;
    .restart local v5    # "rippleColor":Landroid/content/res/ColorStateList;
    :cond_2
    move-object v10, v3

    goto :goto_1

    :cond_3
    move-object v11, v4

    goto :goto_2

    .line 2008
    :cond_4
    move-object v7, v4

    invoke-static {v7}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v6, v7

    .line 2009
    .local v6, "rippleDrawable":Landroid/graphics/drawable/Drawable;
    move-object v7, v6

    move-object v8, v5

    invoke-static {v7, v8}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2010
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v3

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v6

    aput-object v12, v10, v11

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v2, v7

    .restart local v2    # "background":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 2013
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    .end local v4    # "maskDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v5    # "rippleColor":Landroid/content/res/ColorStateList;
    .end local v6    # "rippleDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object v7, v3

    move-object v2, v7

    .restart local v2    # "background":Landroid/graphics/drawable/Drawable;
    goto :goto_3
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 10
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2279
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, p1

    .local v1, "textView":Landroid/widget/TextView;
    move-object v2, p2

    .local v2, "iconView":Landroid/widget/ImageView;
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 2280
    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 2281
    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_0
    move-object v3, v8

    .line 2283
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    move-object v4, v8

    .line 2285
    .local v4, "text":Ljava/lang/CharSequence;
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 2286
    move-object v8, v3

    if-eqz v8, :cond_6

    .line 2287
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2288
    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2289
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/material/tabs/TabLayout$TabView;->setVisibility(I)V

    .line 2296
    :cond_0
    :goto_2
    move-object v8, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x1

    :goto_3
    move v5, v8

    .line 2297
    .local v5, "hasText":Z
    move-object v8, v1

    if-eqz v8, :cond_1

    .line 2298
    move v8, v5

    if-eqz v8, :cond_8

    .line 2299
    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2300
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2301
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/material/tabs/TabLayout$TabView;->setVisibility(I)V

    .line 2308
    :cond_1
    :goto_4
    move-object v8, v2

    if-eqz v8, :cond_3

    .line 2309
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v6, v8

    .line 2310
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v8, 0x0

    move v7, v8

    .line 2311
    .local v7, "iconMargin":I
    move v8, v5

    if-eqz v8, :cond_2

    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 2313
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/material/tabs/TabLayout;->dpToPx(I)I

    move-result v8

    move v7, v8

    .line 2315
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v8, v8, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    if-eqz v8, :cond_9

    .line 2316
    move v8, v7

    move-object v9, v6

    invoke-static {v9}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 2317
    move-object v8, v6

    move v9, v7

    invoke-static {v8, v9}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2318
    move-object v8, v6

    const/4 v9, 0x0

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2320
    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2321
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->requestLayout()V

    .line 2334
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "iconMargin":I
    :cond_3
    :goto_5
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v8, :cond_a

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-static {v8}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$100(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_6
    move-object v6, v8

    .line 2335
    .local v6, "contentDesc":Ljava/lang/CharSequence;
    move-object v8, v0

    move v9, v5

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    :goto_7
    invoke-static {v8, v9}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2336
    return-void

    .line 2281
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "hasText":Z
    .end local v6    # "contentDesc":Ljava/lang/CharSequence;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2283
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2291
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_6
    move-object v8, v2

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2292
    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 2296
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 2303
    .restart local v5    # "hasText":Z
    :cond_8
    move-object v8, v1

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2304
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2324
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v7    # "iconMargin":I
    :cond_9
    move v8, v7

    move-object v9, v6

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v8, v9, :cond_3

    .line 2325
    move-object v8, v6

    move v9, v7

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2326
    move-object v8, v6

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2328
    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2329
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_5

    .line 2334
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "iconMargin":I
    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    .line 2335
    .local v6, "contentDesc":Ljava/lang/CharSequence;
    :cond_b
    move-object v9, v6

    goto :goto_7
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 2038
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v3, v0

    invoke-super {v3}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2039
    const/4 v3, 0x0

    move v1, v3

    .line 2040
    .local v1, "changed":Z
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->getDrawableState()[I

    move-result-object v3

    move-object v2, v3

    .line 2041
    .local v2, "state":[I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2042
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v3, v4

    move v1, v3

    .line 2045
    :cond_0
    move v3, v1

    if-eqz v3, :cond_1

    .line 2046
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->invalidate()V

    .line 2047
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    .line 2049
    :cond_1
    return-void
.end method

.method public getTab()Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 2

    .prologue
    .line 2361
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 2092
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2094
    move-object v2, v1

    const-class v3, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2095
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2100
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, p1

    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2102
    move-object v2, v1

    const-class v3, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2103
    return-void
.end method

.method public onMeasure(II)V
    .locals 21

    .prologue
    .line 2107
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move/from16 v3, p1

    .local v3, "origWidthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "origHeightMeasureSpec":I
    move/from16 v17, v3

    invoke-static/range {v17 .. v17}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move/from16 v5, v17

    .line 2108
    .local v5, "specWidthSize":I
    move/from16 v17, v3

    invoke-static/range {v17 .. v17}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    move/from16 v6, v17

    .line 2109
    .local v6, "specWidthMode":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/material/tabs/TabLayout;->getTabMaxWidth()I

    move-result v17

    move/from16 v7, v17

    .line 2112
    .local v7, "maxWidth":I
    move/from16 v17, v4

    move/from16 v9, v17

    .line 2114
    .local v9, "heightMeasureSpec":I
    move/from16 v17, v7

    if-lez v17, :cond_6

    move/from16 v17, v6

    if-eqz v17, :cond_0

    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 2117
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    move/from16 v17, v0

    const/high16 v18, -0x80000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v8, v17

    .line 2124
    .local v8, "widthMeasureSpec":I
    :goto_0
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-super/range {v17 .. v19}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2127
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 2128
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    move/from16 v17, v0

    move/from16 v10, v17

    .line 2129
    .local v10, "textSize":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    move/from16 v17, v0

    move/from16 v11, v17

    .line 2131
    .local v11, "maxLines":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getVisibility()I

    move-result v17

    if-nez v17, :cond_7

    .line 2133
    const/16 v17, 0x1

    move/from16 v11, v17

    .line 2139
    :cond_1
    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTextSize()F

    move-result v17

    move/from16 v12, v17

    .line 2140
    .local v12, "curTextSize":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLineCount()I

    move-result v17

    move/from16 v13, v17

    .line 2141
    .local v13, "curLineCount":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v17

    move/from16 v14, v17

    .line 2143
    .local v14, "curMaxLines":I
    move/from16 v17, v10

    move/from16 v18, v12

    cmpl-float v17, v17, v18

    if-nez v17, :cond_2

    move/from16 v17, v14

    if-ltz v17, :cond_5

    move/from16 v17, v11

    move/from16 v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 2145
    :cond_2
    const/16 v17, 0x1

    move/from16 v15, v17

    .line 2147
    .local v15, "updateTextView":Z
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move/from16 v17, v10

    move/from16 v18, v12

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    move/from16 v17, v13

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2153
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v17

    move-object/from16 v16, v17

    .line 2154
    .local v16, "layout":Landroid/text/Layout;
    move-object/from16 v17, v16

    if-eqz v17, :cond_3

    move-object/from16 v17, v2

    move-object/from16 v18, v16

    const/16 v19, 0x0

    move/from16 v20, v10

    .line 2155
    invoke-direct/range {v17 .. v20}, Lcom/google/android/material/tabs/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v17

    move-object/from16 v18, v2

    .line 2156
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/tabs/TabLayout$TabView;->getMeasuredWidth()I

    move-result v18

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/material/tabs/TabLayout$TabView;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/material/tabs/TabLayout$TabView;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 2157
    :cond_3
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 2161
    .end local v16    # "layout":Landroid/text/Layout;
    :cond_4
    move/from16 v17, v15

    if-eqz v17, :cond_5

    .line 2162
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v19, v10

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2163
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2164
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-super/range {v17 .. v19}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2168
    .end local v10    # "textSize":F
    .end local v11    # "maxLines":I
    .end local v12    # "curTextSize":F
    .end local v13    # "curLineCount":I
    .end local v14    # "curMaxLines":I
    .end local v15    # "updateTextView":Z
    :cond_5
    return-void

    .line 2120
    .end local v8    # "widthMeasureSpec":I
    :cond_6
    move/from16 v17, v3

    move/from16 v8, v17

    .restart local v8    # "widthMeasureSpec":I
    goto/16 :goto_0

    .line 2134
    .restart local v10    # "textSize":F
    .restart local v11    # "maxLines":I
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLineCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 2136
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabTextMultiLineSize:F

    move/from16 v17, v0

    move/from16 v10, v17

    goto/16 :goto_1
.end method

.method public performClick()Z
    .locals 4

    .prologue
    .line 2053
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v2

    move v1, v2

    .line 2055
    .local v1, "handled":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v2, :cond_1

    .line 2056
    move v2, v1

    if-nez v2, :cond_0

    .line 2057
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->playSoundEffect(I)V

    .line 2059
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 2060
    const/4 v2, 0x1

    move v0, v2

    .line 2062
    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method reset()V
    .locals 3

    .prologue
    .line 2178
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 2179
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 2180
    return-void
.end method

.method public setSelected(Z)V
    .locals 5

    .prologue
    .line 2068
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move v1, p1

    .local v1, "selected":Z
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 2070
    .local v2, "changed":Z
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2072
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 2074
    move-object v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 2079
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 2080
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2082
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 2083
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2085
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2086
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 2088
    :cond_3
    return-void

    .line 2068
    .end local v2    # "changed":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2171
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eq v2, v3, :cond_0

    .line 2172
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 2173
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->update()V

    .line 2175
    :cond_0
    return-void
.end method

.method final update()V
    .locals 9

    .prologue
    .line 2183
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    move-object v1, v5

    .line 2184
    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v5, v1

    if-eqz v5, :cond_b

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v5

    :goto_0
    move-object v2, v5

    .line 2185
    .local v2, "custom":Landroid/view/View;
    move-object v5, v2

    if-eqz v5, :cond_c

    .line 2186
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 2187
    .local v3, "customParent":Landroid/view/ViewParent;
    move-object v5, v3

    move-object v6, v0

    if-eq v5, v6, :cond_1

    .line 2188
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 2189
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2191
    :cond_0
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2193
    :cond_1
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2194
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 2195
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2197
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 2198
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2199
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2202
    :cond_3
    move-object v5, v0

    move-object v6, v2

    const v7, 0x1020014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2203
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 2204
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    invoke-static {v6}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 2206
    :cond_4
    move-object v5, v0

    move-object v6, v2

    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 2207
    .line 2217
    .end local v3    # "customParent":Landroid/view/ViewParent;
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-nez v5, :cond_f

    .line 2219
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v5, :cond_5

    .line 2220
    move-object v5, v0

    .line 2222
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$layout;->design_layout_tab_icon:I

    move-object v7, v0

    const/4 v8, 0x0

    .line 2223
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v3, v5

    .line 2224
    .local v3, "iconView":Landroid/widget/ImageView;
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/tabs/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 2225
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 2227
    .end local v3    # "iconView":Landroid/widget/ImageView;
    :cond_5
    move-object v5, v1

    if-eqz v5, :cond_e

    move-object v5, v1

    .line 2228
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_e

    move-object v5, v1

    .line 2229
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_2
    move-object v3, v5

    .line 2231
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    move-object v5, v3

    if-eqz v5, :cond_6

    .line 2232
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    invoke-static {v5, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2233
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v5, :cond_6

    .line 2234
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v5, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2238
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v5, :cond_7

    .line 2239
    move-object v5, v0

    .line 2241
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$layout;->design_layout_tab_text:I

    move-object v7, v0

    const/4 v8, 0x0

    .line 2242
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v4, v5

    .line 2243
    .local v4, "textView":Landroid/widget/TextView;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2244
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2245
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v6}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 2247
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    invoke-static {v5, v6}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2248
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_8

    .line 2249
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2251
    :cond_8
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2252
    .line 2259
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_9
    :goto_3
    move-object v5, v1

    if-eqz v5, :cond_a

    move-object v5, v1

    invoke-static {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$100(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2262
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$100(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2265
    :cond_a
    move-object v5, v0

    move-object v6, v1

    if-eqz v6, :cond_11

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 2266
    return-void

    .line 2184
    .end local v2    # "custom":Landroid/view/View;
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2209
    .restart local v2    # "custom":Landroid/view/View;
    :cond_c
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v5, :cond_d

    .line 2210
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 2211
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2213
    :cond_d
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2214
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 2229
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2254
    :cond_f
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v5, :cond_10

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_9

    .line 2255
    :cond_10
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_3

    .line 2265
    :cond_11
    const/4 v6, 0x0

    goto :goto_4
.end method

.method final updateOrientation()V
    .locals 4

    .prologue
    .line 2269
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabView;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v2, v2, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setOrientation(I)V

    .line 2270
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 2271
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2275
    :goto_1
    return-void

    .line 2269
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2273
    :cond_2
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1
.end method
