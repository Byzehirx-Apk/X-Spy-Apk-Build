.class Landroidx/core/view/DragStartHelper$2;
.super Ljava/lang/Object;
.source "DragStartHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 188
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragStartHelper$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/view/DragStartHelper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/DragStartHelper$2;->this$0:Landroidx/core/view/DragStartHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragStartHelper$2;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/MotionEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/DragStartHelper$2;->this$0:Landroidx/core/view/DragStartHelper;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/DragStartHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/view/DragStartHelper$2;
    return v0
.end method
