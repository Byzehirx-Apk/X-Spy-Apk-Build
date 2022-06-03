.class Landroidx/appcompat/app/AlertController$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 608
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$4;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AlertController;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$4;->this$0:Landroidx/appcompat/app/AlertController;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$4;->val$top:Landroid/view/View;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$4;->val$bottom:Landroid/view/View;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$4;
    move-object v1, p1

    .local v1, "v":Landroid/widget/AbsListView;
    move v2, p2

    .local v2, "firstVisibleItem":I
    move v3, p3

    .local v3, "visibleItemCount":I
    move v4, p4

    .local v4, "totalItemCount":I
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$4;->val$top:Landroid/view/View;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController$4;->val$bottom:Landroid/view/View;

    invoke-static {v5, v6, v7}, Landroidx/appcompat/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 616
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 610
    return-void
.end method
