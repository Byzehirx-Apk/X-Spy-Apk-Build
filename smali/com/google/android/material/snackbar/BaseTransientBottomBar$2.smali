.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 8

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;"
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "insets":Landroidx/core/view/WindowInsetsCompat;
    move-object v3, v1

    move-object v4, v1

    .line 278
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    move-object v5, v1

    .line 279
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    move-object v6, v1

    .line 280
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    move-object v7, v2

    .line 281
    invoke-virtual {v7}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v7

    .line 277
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 282
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;"
    return-object v0
.end method
