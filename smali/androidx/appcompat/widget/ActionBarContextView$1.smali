.class Landroidx/appcompat/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Landroidx/appcompat/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionBarContextView;

.field final synthetic val$mode:Landroidx/appcompat/view/ActionMode;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/ActionMode;)V
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarContextView$1;->this$0:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarContextView$1;->val$mode:Landroidx/appcompat/view/ActionMode;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarContextView$1;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarContextView$1;->val$mode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v2}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 174
    return-void
.end method
