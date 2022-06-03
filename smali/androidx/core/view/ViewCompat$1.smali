.class final Landroidx/core/view/ViewCompat$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 4

    .prologue
    .line 2209
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/ViewCompat$1;->val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    .prologue
    .line 2212
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$1;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "insets":Landroid/view/WindowInsets;
    move-object v4, v2

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v4

    move-object v3, v4

    .line 2213
    .local v3, "compatInsets":Landroidx/core/view/WindowInsetsCompat;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewCompat$1;->val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v4

    move-object v3, v4

    .line 2214
    move-object v4, v3

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat;->unwrap(Landroidx/core/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInsets;

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/view/ViewCompat$1;
    return-object v0
.end method
