.class Lcom/google/android/material/bottomappbar/BottomAppBar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public cancelled:Z

.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

.field final synthetic val$actionMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field final synthetic val$targetAttached:Z

.field final synthetic val$targetMode:I


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 7

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->val$actionMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->val$targetMode:I

    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->val$targetAttached:Z

    move-object v5, v0

    invoke-direct {v5}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$4;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->cancelled:Z

    .line 424
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$4;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->cancelled:Z

    if-nez v2, :cond_0

    .line 429
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->val$actionMenuView:Landroidx/appcompat/widget/ActionMenuView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->val$targetMode:I

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->val$targetAttached:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$400(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    .line 431
    :cond_0
    return-void
.end method
