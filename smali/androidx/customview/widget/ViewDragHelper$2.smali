.class Landroidx/customview/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/customview/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Landroidx/customview/widget/ViewDragHelper;)V
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/customview/widget/ViewDragHelper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/customview/widget/ViewDragHelper$2;->this$0:Landroidx/customview/widget/ViewDragHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ViewDragHelper$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/widget/ViewDragHelper$2;->this$0:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 344
    return-void
.end method
