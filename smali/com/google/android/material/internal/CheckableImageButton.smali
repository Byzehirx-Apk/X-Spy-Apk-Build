.class public Lcom/google/android/material/internal/CheckableImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DRAWABLE_STATE_CHECKED:[I


# instance fields
.field private checked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/internal/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CheckableImageButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CheckableImageButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->imageButtonStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CheckableImageButton;
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

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    move-object v4, v0

    new-instance v5, Lcom/google/android/material/internal/CheckableImageButton$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/internal/CheckableImageButton$1;-><init>(Lcom/google/android/material/internal/CheckableImageButton;)V

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 69
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CheckableImageButton;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CheckableImageButton;
    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CheckableImageButton;
    move v1, p1

    .local v1, "extraSpace":I
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    if-eqz v2, :cond_0

    .line 93
    move-object v2, v0

    move v3, v1

    sget-object v4, Lcom/google/android/material/internal/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    array-length v4, v4

    add-int/2addr v3, v4

    .line 94
    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v2

    sget-object v3, Lcom/google/android/material/internal/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    .line 93
    invoke-static {v2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->mergeDrawableStates([I[I)[I

    move-result-object v2

    move-object v0, v2

    .line 97
    .end local v0    # "this":Lcom/google/android/material/internal/CheckableImageButton;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/internal/CheckableImageButton;
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CheckableImageButton;
    move v1, p1

    .local v1, "checked":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 74
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    .line 75
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CheckableImageButton;->refreshDrawableState()V

    .line 76
    move-object v2, v0

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->sendAccessibilityEvent(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CheckableImageButton;
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 88
    return-void

    .line 87
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
