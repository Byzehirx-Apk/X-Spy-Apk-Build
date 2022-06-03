.class public Landroidx/appcompat/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/appcompat/view/ActionBarPolicy;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/appcompat/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ActionBarPolicy;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/ActionBarPolicy;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ActionBarPolicy;
    return v0
.end method

.method public getMaxActionButtons()I
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move-object v1, v5

    .line 57
    .local v1, "configuration":Landroid/content/res/Configuration;
    move-object v5, v1

    iget v5, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    move v2, v5

    .line 58
    .local v2, "widthDp":I
    move-object v5, v1

    iget v5, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    move v3, v5

    .line 59
    .local v3, "heightDp":I
    move-object v5, v1

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move v4, v5

    .line 61
    .local v4, "smallest":I
    move v5, v4

    const/16 v6, 0x258

    if-gt v5, v6, :cond_1

    move v5, v2

    const/16 v6, 0x258

    if-gt v5, v6, :cond_1

    move v5, v2

    const/16 v6, 0x3c0

    if-le v5, v6, :cond_0

    move v5, v3

    const/16 v6, 0x2d0

    if-gt v5, v6, :cond_1

    :cond_0
    move v5, v2

    const/16 v6, 0x2d0

    if-le v5, v6, :cond_2

    move v5, v3

    const/16 v6, 0x3c0

    if-le v5, v6, :cond_2

    .line 64
    :cond_1
    const/4 v5, 0x5

    move v0, v5

    .line 73
    .end local v0    # "this":Landroidx/appcompat/view/ActionBarPolicy;
    :goto_0
    return v0

    .line 65
    .restart local v0    # "this":Landroidx/appcompat/view/ActionBarPolicy;
    :cond_2
    move v5, v2

    const/16 v6, 0x1f4

    if-ge v5, v6, :cond_4

    move v5, v2

    const/16 v6, 0x280

    if-le v5, v6, :cond_3

    move v5, v3

    const/16 v6, 0x1e0

    if-gt v5, v6, :cond_4

    :cond_3
    move v5, v2

    const/16 v6, 0x1e0

    if-le v5, v6, :cond_5

    move v5, v3

    const/16 v6, 0x280

    if-le v5, v6, :cond_5

    .line 68
    :cond_4
    const/4 v5, 0x4

    move v0, v5

    goto :goto_0

    .line 69
    :cond_5
    move v5, v2

    const/16 v6, 0x168

    if-lt v5, v6, :cond_6

    .line 71
    const/4 v5, 0x3

    move v0, v5

    goto :goto_0

    .line 73
    :cond_6
    const/4 v5, 0x2

    move v0, v5

    goto :goto_0
.end method

.method public getStackedTabMaxWidth()I
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ActionBarPolicy;
    return v0
.end method

.method public getTabContainerHeight()I
    .locals 9

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v7, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v1, v4

    .line 96
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v4, v1

    sget v5, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    move v2, v4

    .line 97
    .local v2, "height":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v3, v4

    .line 98
    .local v3, "r":Landroid/content/res/Resources;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    move v4, v2

    move-object v5, v3

    sget v6, Landroidx/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    .line 101
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    .line 103
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    move v4, v2

    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/view/ActionBarPolicy;
    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ActionBarPolicy;
    return v0
.end method

.method public showsOverflowMenuButton()Z
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionBarPolicy;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 79
    const/4 v1, 0x1

    move v0, v1

    .line 81
    .end local v0    # "this":Landroidx/appcompat/view/ActionBarPolicy;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/ActionBarPolicy;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
