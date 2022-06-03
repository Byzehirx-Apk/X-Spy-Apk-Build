.class public abstract Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
.super Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DragCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback",
        "<",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;-><init>()V

    return-void
.end method
