.class public Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;
.super Landroid/widget/LinearLayout;
.source "BrowserActionsFallbackMenuView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mBrowserActionsMenuMaxWidthPx:I

.field private final mBrowserActionsMenuMinPaddingPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/browser/R$dimen;->browser_actions_context_menu_min_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;->mBrowserActionsMenuMinPaddingPx:I

    .line 41
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/browser/R$dimen;->browser_actions_context_menu_max_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;->mBrowserActionsMenuMaxWidthPx:I

    .line 43
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move v3, v5

    .line 48
    .local v3, "appWindowWidthPx":I
    move v5, v3

    const/4 v6, 0x2

    move-object v7, v0

    iget v7, v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;->mBrowserActionsMenuMinPaddingPx:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;->mBrowserActionsMenuMaxWidthPx:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v5

    .line 50
    .local v4, "contextMenuWidth":I
    move v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v1, v5

    .line 51
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 52
    return-void
.end method
