.class Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 4

    .prologue
    .line 3216
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 3220
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "insets":Landroidx/core/view/WindowInsetsCompat;
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;
    return-object v0
.end method
