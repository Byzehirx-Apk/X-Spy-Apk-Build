.class public abstract Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnVisibilityChangedListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0
    .param p1, "fab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .prologue
    .line 114
    return-void
.end method

.method public onShown(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0
    .param p1, "fab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .prologue
    .line 106
    return-void
.end method
