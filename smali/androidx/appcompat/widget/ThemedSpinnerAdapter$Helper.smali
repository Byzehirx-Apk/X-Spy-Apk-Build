.class public final Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;
.super Ljava/lang/Object;
.source "ThemedSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ThemedSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDropDownInflater:Landroid/view/LayoutInflater;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 112
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mContext:Landroid/content/Context;

    .line 113
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    return-void
.end method


# virtual methods
.method public getDropDownViewInflater()Landroid/view/LayoutInflater;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    goto :goto_0
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;
    move-object v1, p1

    .local v1, "theme":Landroid/content/res/Resources$Theme;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 125
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 127
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mInflater:Landroid/view/LayoutInflater;

    iput-object v4, v3, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 129
    :cond_1
    new-instance v3, Landroidx/appcompat/view/ContextThemeWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mContext:Landroid/content/Context;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    move-object v2, v3

    .line 130
    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method
