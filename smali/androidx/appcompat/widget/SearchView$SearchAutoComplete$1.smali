.class Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V
    .locals 4

    .prologue
    .line 1829
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;->this$0:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1832
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;->this$0:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->showSoftInputIfNecessary()V

    .line 1833
    return-void
.end method
