.class Landroidx/appcompat/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


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
    .line 591
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AlertController;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$2;->val$top:Landroid/view/View;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$2;->val$bottom:Landroid/view/View;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 9

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$2;
    move-object v1, p1

    .local v1, "v":Landroidx/core/widget/NestedScrollView;
    move v2, p2

    .local v2, "scrollX":I
    move v3, p3

    .local v3, "scrollY":I
    move v4, p4

    .local v4, "oldScrollX":I
    move v5, p5

    .local v5, "oldScrollY":I
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController$2;->val$top:Landroid/view/View;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController$2;->val$bottom:Landroid/view/View;

    invoke-static {v6, v7, v8}, Landroidx/appcompat/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 597
    return-void
.end method
