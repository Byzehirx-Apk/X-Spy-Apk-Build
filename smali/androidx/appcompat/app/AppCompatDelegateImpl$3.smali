.class Landroidx/appcompat/app/AppCompatDelegateImpl$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 4

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 10

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$3;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "insets":Landroidx/core/view/WindowInsetsCompat;
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    move v3, v5

    .line 643
    .local v3, "top":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateStatusGuard(I)I

    move-result v5

    move v4, v5

    .line 645
    .local v4, "newTop":I
    move v5, v3

    move v6, v4

    if-eq v5, v6, :cond_0

    .line 646
    move-object v5, v2

    move-object v6, v2

    .line 647
    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v6

    move v7, v4

    move-object v8, v2

    .line 649
    invoke-virtual {v8}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v8

    move-object v9, v2

    .line 650
    invoke-virtual {v9}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v9

    .line 646
    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v5

    move-object v2, v5

    .line 654
    :cond_0
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$3;
    return-object v0
.end method
