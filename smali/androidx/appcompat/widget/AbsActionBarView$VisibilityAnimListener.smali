.class public Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Landroidx/appcompat/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Landroidx/appcompat/widget/AbsActionBarView;)V
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/AbsActionBarView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 274
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 301
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v2, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 295
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-static {v2, v3}, Landroidx/appcompat/widget/AbsActionBarView;->access$101(Landroidx/appcompat/widget/AbsActionBarView;I)V

    .line 296
    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/appcompat/widget/AbsActionBarView;->access$001(Landroidx/appcompat/widget/AbsActionBarView;I)V

    .line 287
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 288
    return-void
.end method

.method public withFinalVisibility(Landroidx/core/view/ViewPropertyAnimatorCompat;I)Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    move-object v1, p1

    .local v1, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move v2, p2

    .local v2, "visibility":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 280
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 281
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    return-object v0
.end method
