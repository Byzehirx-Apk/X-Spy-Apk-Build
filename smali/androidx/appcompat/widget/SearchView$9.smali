.class Landroidx/appcompat/widget/SearchView$9;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
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
    .line 1418
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$9;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$9;->this$0:Landroidx/appcompat/widget/SearchView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1426
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$9;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide v4, p4

    .local v4, "id":J
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView$9;->this$0:Landroidx/appcompat/widget/SearchView;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/SearchView;->onItemSelected(I)Z

    move-result v6

    .line 1427
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1436
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
