.class Landroidx/transition/FragmentTransitionSupport$1;
.super Landroidx/transition/Transition$EpicenterCallback;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/FragmentTransitionSupport;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/FragmentTransitionSupport;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/FragmentTransitionSupport;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/FragmentTransitionSupport$1;->this$0:Landroidx/transition/FragmentTransitionSupport;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/FragmentTransitionSupport$1;->val$epicenter:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-direct {v3}, Landroidx/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroidx/transition/Transition;)Landroid/graphics/Rect;
    .locals 3
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport$1;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/FragmentTransitionSupport$1;->val$epicenter:Landroid/graphics/Rect;

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/FragmentTransitionSupport$1;
    return-object v0
.end method
