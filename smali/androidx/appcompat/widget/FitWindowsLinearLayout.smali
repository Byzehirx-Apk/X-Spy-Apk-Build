.class public Landroidx/appcompat/widget/FitWindowsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FitWindowsLinearLayout.java"

# interfaces
.implements Landroidx/appcompat/widget/FitWindowsViewGroup;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mListener:Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/FitWindowsLinearLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/FitWindowsLinearLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/FitWindowsLinearLayout;
    move-object v1, p1

    .local v1, "insets":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/FitWindowsLinearLayout;->mListener:Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    if-eqz v2, :cond_0

    .line 52
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/FitWindowsLinearLayout;->mListener:Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;->onFitSystemWindows(Landroid/graphics/Rect;)V

    .line 54
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/FitWindowsLinearLayout;
    return v0
.end method

.method public setOnFitSystemWindowsListener(Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/FitWindowsLinearLayout;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/FitWindowsLinearLayout;->mListener:Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .line 47
    return-void
.end method
