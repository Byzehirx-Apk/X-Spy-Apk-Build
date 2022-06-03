.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;)V
    .locals 4

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;"
    move-object v1, p1

    .local v1, "this$1":Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;->this$1:Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;->this$1:Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    .line 531
    return-void
.end method
