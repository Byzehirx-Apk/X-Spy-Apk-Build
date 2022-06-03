.class Landroidx/appcompat/app/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController;

.field final synthetic val$bottom:Landroid/view/View;

.field final synthetic val$top:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AlertController;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$3;->this$0:Landroidx/appcompat/app/AlertController;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$3;->val$top:Landroid/view/View;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$3;->val$bottom:Landroid/view/View;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$3;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$3;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$3;->val$top:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$3;->val$bottom:Landroid/view/View;

    invoke-static {v1, v2, v3}, Landroidx/appcompat/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 604
    return-void
.end method
