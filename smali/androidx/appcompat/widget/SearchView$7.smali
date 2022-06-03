.class Landroidx/appcompat/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 1160
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$7;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$7;->this$0:Landroidx/appcompat/widget/SearchView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 1167
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$7;
    move-object v1, p1

    .local v1, "v":Landroid/widget/TextView;
    move v2, p2

    .local v2, "actionId":I
    move-object v3, p3

    .local v3, "event":Landroid/view/KeyEvent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$7;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    .line 1168
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView$7;
    return v0
.end method
