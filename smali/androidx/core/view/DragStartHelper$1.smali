.class Landroidx/core/view/DragStartHelper$1;
.super Ljava/lang/Object;
.source "DragStartHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DragStartHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/view/DragStartHelper;


# direct methods
.method constructor <init>(Landroidx/core/view/DragStartHelper;)V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragStartHelper$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/view/DragStartHelper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/DragStartHelper$1;->this$0:Landroidx/core/view/DragStartHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragStartHelper$1;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/DragStartHelper$1;->this$0:Landroidx/core/view/DragStartHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/DragStartHelper;->onLongClick(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/view/DragStartHelper$1;
    return v0
.end method
