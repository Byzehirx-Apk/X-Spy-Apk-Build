.class Landroidx/appcompat/view/menu/MenuPopupHelper$1;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/MenuPopupHelper;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuPopupHelper;)V
    .locals 4

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/view/menu/MenuPopupHelper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuPopupHelper$1;->this$0:Landroidx/appcompat/view/menu/MenuPopupHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuPopupHelper$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper$1;->this$0:Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    .line 338
    return-void
.end method
