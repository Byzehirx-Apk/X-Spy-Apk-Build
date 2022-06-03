.class public Lcom/google/android/material/internal/CircularBorderDrawableLollipop;
.super Lcom/google/android/material/internal/CircularBorderDrawable;
.source "CircularBorderDrawableLollipop.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawableLollipop;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/internal/CircularBorderDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawableLollipop;
    move-object v1, p1

    .local v1, "outline":Landroid/graphics/Outline;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CircularBorderDrawableLollipop;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CircularBorderDrawableLollipop;->copyBounds(Landroid/graphics/Rect;)V

    .line 33
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CircularBorderDrawableLollipop;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 34
    return-void
.end method
