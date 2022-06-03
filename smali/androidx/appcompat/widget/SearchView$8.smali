.class Landroidx/appcompat/widget/SearchView$8;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1406
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$8;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$8;->this$0:Landroidx/appcompat/widget/SearchView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 1414
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$8;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide v4, p4

    .local v4, "id":J
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView$8;->this$0:Landroidx/appcompat/widget/SearchView;

    move v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroidx/appcompat/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v6

    .line 1415
    return-void
.end method
