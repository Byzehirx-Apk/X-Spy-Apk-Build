.class public Landroidx/appcompat/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, p1

    .local v1, "base":Landroid/content/Context;
    move v2, p2

    .local v2, "themeResId":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 64
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, p1

    .local v1, "base":Landroid/content/Context;
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 78
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 79
    return-void
.end method

.method private getResourcesInternal()Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    .line 114
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-nez v2, :cond_1

    .line 115
    move-object v2, v0

    move-object v3, v0

    invoke-super {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    .line 121
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/ContextThemeWrapper;
    return-object v0

    .line 116
    .restart local v0    # "this":Landroidx/appcompat/view/ContextThemeWrapper;
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 117
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/ContextThemeWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 118
    .local v1, "resContext":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method private initializeTheme()V
    .locals 7

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 182
    .local v1, "first":Z
    move v3, v1

    if-eqz v3, :cond_0

    .line 183
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 184
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move-object v2, v3

    .line 185
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 186
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 189
    .end local v2    # "theme":Landroid/content/res/Resources$Theme;
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    move v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 190
    return-void

    .line 181
    .end local v1    # "first":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, p1

    .local v1, "overrideConfiguration":Landroid/content/res/Configuration;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "getResources() or getAssets() has already been called"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_1

    .line 102
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Override configuration has already been set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_1
    move-object v2, v0

    new-instance v3, Landroid/content/res/Configuration;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 105
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, p1

    .local v1, "newBase":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ContextThemeWrapper;
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/view/ContextThemeWrapper;->getResourcesInternal()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ContextThemeWrapper;
    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "layout_inflater"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v2, :cond_0

    .line 158
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 160
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    move-object v0, v2

    .line 162
    .end local v0    # "this":Landroidx/appcompat/view/ContextThemeWrapper;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/view/ContextThemeWrapper;
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v1, :cond_0

    .line 143
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    move-object v0, v1

    .line 151
    .end local v0    # "this":Landroidx/appcompat/view/ContextThemeWrapper;
    :goto_0
    return-object v0

    .line 146
    .restart local v0    # "this":Landroidx/appcompat/view/ContextThemeWrapper;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    if-nez v1, :cond_1

    .line 147
    move-object v1, v0

    sget v2, Landroidx/appcompat/R$style;->Theme_AppCompat_Light:I

    iput v2, v1, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    .line 149
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/view/ContextThemeWrapper;->initializeTheme()V

    .line 151
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    move-object v0, v1

    goto :goto_0
.end method

.method public getThemeResId()I
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ContextThemeWrapper;
    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move-object v1, p1

    .local v1, "theme":Landroid/content/res/Resources$Theme;
    move v2, p2

    .local v2, "resid":I
    move v3, p3

    .local v3, "first":Z
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 178
    return-void
.end method

.method public setTheme(I)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ContextThemeWrapper;
    move v1, p1

    .local v1, "resid":I
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 127
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    .line 128
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/view/ContextThemeWrapper;->initializeTheme()V

    .line 130
    :cond_0
    return-void
.end method
