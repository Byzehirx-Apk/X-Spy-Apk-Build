.class Landroidx/recyclerview/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/FastScroller;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/FastScroller$1;->this$0:Landroidx/recyclerview/widget/FastScroller;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller$1;->this$0:Landroidx/recyclerview/widget/FastScroller;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/FastScroller;->hide(I)V

    .line 127
    return-void
.end method
