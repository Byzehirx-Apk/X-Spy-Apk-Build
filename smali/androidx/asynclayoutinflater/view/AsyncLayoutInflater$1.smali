.class Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;


# direct methods
.method constructor <init>(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;->this$0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;
    move-object v1, p1

    .local v1, "msg":Landroid/os/Message;
    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    move-object v2, v3

    .line 99
    .local v2, "request":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    move-object v3, v2

    iget-object v3, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    if-nez v3, :cond_0

    .line 100
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;->this$0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v4, v4, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    move-object v5, v2

    iget v5, v5, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    move-object v6, v2

    iget-object v6, v6, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    .line 103
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->callback:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    move-object v4, v2

    iget-object v4, v4, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    move-object v5, v2

    iget v5, v5, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    move-object v6, v2

    iget-object v6, v6, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    invoke-interface {v3, v4, v5, v6}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;->onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 105
    move-object v3, v0

    iget-object v3, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;->this$0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v3, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflateThread:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->releaseRequest(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;)V

    .line 106
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;
    return v0
.end method
