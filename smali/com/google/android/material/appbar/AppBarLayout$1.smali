.class Lcom/google/android/material/appbar/AppBarLayout$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/appbar/AppBarLayout$1;->this$0:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$1;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "insets":Landroidx/core/view/WindowInsetsCompat;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/AppBarLayout$1;->this$0:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/appbar/AppBarLayout;->onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$1;
    return-object v0
.end method
