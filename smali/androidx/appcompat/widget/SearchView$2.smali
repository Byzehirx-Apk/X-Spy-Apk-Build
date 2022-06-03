.class Landroidx/appcompat/widget/SearchView$2;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$2;->this$0:Landroidx/appcompat/widget/SearchView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView$2;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView$2;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    instance-of v1, v1, Landroidx/appcompat/widget/SuggestionsAdapter;

    if-eqz v1, :cond_0

    .line 188
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView$2;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 190
    :cond_0
    return-void
.end method
