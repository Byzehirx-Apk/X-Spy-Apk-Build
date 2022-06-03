.class Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/cursoradapter/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/cursoradapter/widget/CursorAdapter;


# direct methods
.method constructor <init>(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 4

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    move-object v2, v0

    invoke-direct {v2}, Landroid/database/DataSetObserver;-><init>()V

    .line 493
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 498
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v1}, Landroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 499
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 504
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v1}, Landroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 505
    return-void
.end method
