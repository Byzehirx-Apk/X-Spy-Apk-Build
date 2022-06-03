.class Landroidx/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mTransition:Landroidx/transition/Transition;

.field mValues:Landroidx/transition/TransitionValues;

.field mView:Landroid/view/View;

.field mWindowId:Landroidx/transition/WindowIdImpl;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/WindowIdImpl;Landroidx/transition/TransitionValues;)V
    .locals 8

    .prologue
    .line 2359
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition$AnimationInfo;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "transition":Landroidx/transition/Transition;
    move-object v4, p4

    .local v4, "windowId":Landroidx/transition/WindowIdImpl;
    move-object v5, p5

    .local v5, "values":Landroidx/transition/TransitionValues;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 2360
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 2361
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 2362
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 2363
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    .line 2364
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    .line 2365
    return-void
.end method
