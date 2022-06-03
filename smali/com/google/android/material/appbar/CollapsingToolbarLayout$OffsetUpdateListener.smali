.class Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 4

    .prologue
    .line 1245
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 14

    .prologue
    .line 1249
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
    move-object v1, p1

    .local v1, "layout":Lcom/google/android/material/appbar/AppBarLayout;
    move/from16 v2, p2

    .local v2, "verticalOffset":I
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move v10, v2

    iput v10, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 1251
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v9}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v9

    :goto_0
    move v3, v9

    .line 1253
    .local v3, "insetTop":I
    const/4 v9, 0x0

    move v4, v9

    .local v4, "i":I
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v9}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v9

    move v5, v9

    .local v5, "z":I
    :goto_1
    move v9, v4

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 1254
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move v10, v4

    invoke-virtual {v9, v10}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 1255
    .local v6, "child":Landroid/view/View;
    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-object v7, v9

    .line 1256
    .local v7, "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move-object v9, v6

    invoke-static {v9}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v9

    move-object v8, v9

    .line 1258
    .local v8, "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move-object v9, v7

    iget v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    packed-switch v9, :pswitch_data_0

    .line 1253
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1251
    .end local v3    # "insetTop":I
    .end local v4    # "i":I
    .end local v5    # "z":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .end local v8    # "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1260
    .restart local v3    # "insetTop":I
    .restart local v4    # "i":I
    .restart local v5    # "z":I
    .restart local v6    # "child":Landroid/view/View;
    .restart local v7    # "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .restart local v8    # "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    :pswitch_0
    move-object v9, v8

    move v10, v2

    neg-int v10, v10

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-object v13, v6

    .line 1261
    invoke-virtual {v12, v13}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v10

    .line 1260
    invoke-virtual {v9, v10}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v9

    .line 1262
    goto :goto_2

    .line 1264
    :pswitch_1
    move-object v9, v8

    move v10, v2

    neg-int v10, v10

    int-to-float v10, v10

    move-object v11, v7

    iget v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v9

    .line 1265
    goto :goto_2

    .line 1272
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .end local v8    # "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v9}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1274
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    move v9, v3

    if-lez v9, :cond_2

    .line 1275
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v9}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1279
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 1280
    invoke-virtual {v9}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v10}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    move v10, v3

    sub-int/2addr v9, v10

    move v4, v9

    .line 1281
    .local v4, "expandRange":I
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v9, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    move v11, v4

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1282
    return-void

    .line 1258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
