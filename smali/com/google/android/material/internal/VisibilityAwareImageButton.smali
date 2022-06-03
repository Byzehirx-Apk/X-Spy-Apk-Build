.class public Lcom/google/android/material/internal/VisibilityAwareImageButton;
.super Landroid/widget/ImageButton;
.source "VisibilityAwareImageButton.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private userSetVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/VisibilityAwareImageButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/VisibilityAwareImageButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/internal/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/VisibilityAwareImageButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getVisibility()I

    move-result v5

    iput v5, v4, Lcom/google/android/material/internal/VisibilityAwareImageButton;->userSetVisibility:I

    .line 47
    return-void
.end method


# virtual methods
.method public final getUserSetVisibility()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/VisibilityAwareImageButton;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/VisibilityAwareImageButton;->userSetVisibility:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/VisibilityAwareImageButton;
    return v0
.end method

.method public final internalSetVisibility(IZ)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/VisibilityAwareImageButton;
    move v1, p1

    .local v1, "visibility":I
    move v2, p2

    .local v2, "fromUser":Z
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 56
    move v3, v2

    if-eqz v3, :cond_0

    .line 57
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/internal/VisibilityAwareImageButton;->userSetVisibility:I

    .line 59
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/VisibilityAwareImageButton;
    move v1, p1

    .local v1, "visibility":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 52
    return-void
.end method
