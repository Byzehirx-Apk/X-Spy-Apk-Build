.class Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/SnackbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnackbarRecord"
.end annotation


# instance fields
.field final callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/material/snackbar/SnackbarManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field duration:I

.field paused:Z


# direct methods
.method constructor <init>(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 8

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;
    move v1, p1

    .local v1, "duration":I
    move-object v2, p2

    .local v2, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 177
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    .line 178
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    .line 179
    return-void
.end method


# virtual methods
.method isSnackbar(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
