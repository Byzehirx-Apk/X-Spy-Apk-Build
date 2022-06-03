.class Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ForwardingListener;)V
    .locals 4

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;->this$0:Landroidx/appcompat/widget/ForwardingListener;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 317
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;->this$0:Landroidx/appcompat/widget/ForwardingListener;

    iget-object v2, v2, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 322
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 323
    move-object v2, v1

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 325
    :cond_0
    return-void
.end method
