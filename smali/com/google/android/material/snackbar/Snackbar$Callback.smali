.class public Lcom/google/android/material/snackbar/Snackbar$Callback;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback",
        "<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISMISS_EVENT_ACTION:I = 0x1

.field public static final DISMISS_EVENT_CONSECUTIVE:I = 0x4

.field public static final DISMISS_EVENT_MANUAL:I = 0x3

.field public static final DISMISS_EVENT_SWIPE:I = 0x0

.field public static final DISMISS_EVENT_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar$Callback;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 0
    .param p1, "transientBottomBar"    # Lcom/google/android/material/snackbar/Snackbar;
    .param p2, "event"    # I

    .prologue
    .line 125
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar$Callback;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/snackbar/Snackbar;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/snackbar/Snackbar$Callback;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method

.method public onShown(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0
    .param p1, "sb"    # Lcom/google/android/material/snackbar/Snackbar;

    .prologue
    .line 120
    return-void
.end method

.method public bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar$Callback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/Snackbar$Callback;->onShown(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method
