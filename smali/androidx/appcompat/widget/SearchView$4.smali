.class Landroidx/appcompat/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 4

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$4;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$4;->this$0:Landroidx/appcompat/widget/SearchView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$4;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move/from16 v6, p6

    .local v6, "oldLeft":I
    move/from16 v7, p7

    .local v7, "oldTop":I
    move/from16 v8, p8

    .local v8, "oldRight":I
    move/from16 v9, p9

    .local v9, "oldBottom":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/SearchView$4;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v10}, Landroidx/appcompat/widget/SearchView;->adjustDropDownSizeAndPosition()V

    .line 380
    return-void
.end method
