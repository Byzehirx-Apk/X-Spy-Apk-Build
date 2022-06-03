.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
.super Lcom/google/android/material/behavior/SwipeDismissBehavior;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/SwipeDismissBehavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;-><init>()V

    .line 793
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v2, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    .line 794
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 4

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    move-object v1, p1

    .local v1, "x1":Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->setBaseTransientBottomBar(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    return-void
.end method

.method private setBaseTransientBottomBar(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    move-object v1, p1

    .local v1, "baseTransientBottomBar":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->setBaseTransientBottomBar(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 798
    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    return v0
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 807
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "event":Landroid/view/MotionEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 808
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    return v0
.end method
