.class Landroidx/appcompat/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/PopupMenu;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/PopupMenu$2;->this$0:Landroidx/appcompat/widget/PopupMenu;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/PopupMenu$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu$2;->this$0:Landroidx/appcompat/widget/PopupMenu;

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mOnDismissListener:Landroidx/appcompat/widget/PopupMenu$OnDismissListener;

    if-eqz v1, :cond_0

    .line 129
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu$2;->this$0:Landroidx/appcompat/widget/PopupMenu;

    iget-object v1, v1, Landroidx/appcompat/widget/PopupMenu;->mOnDismissListener:Landroidx/appcompat/widget/PopupMenu$OnDismissListener;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/PopupMenu$2;->this$0:Landroidx/appcompat/widget/PopupMenu;

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/PopupMenu$OnDismissListener;->onDismiss(Landroidx/appcompat/widget/PopupMenu;)V

    .line 131
    :cond_0
    return-void
.end method
