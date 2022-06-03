.class Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/cursoradapter/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/cursoradapter/widget/CursorAdapter;


# direct methods
.method constructor <init>(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 6

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 477
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 478
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 2

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
    return v0
.end method

.method public onChange(Z)V
    .locals 3

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
    move v1, p1

    .local v1, "selfChange":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v2}, Landroidx/cursoradapter/widget/CursorAdapter;->onContentChanged()V

    .line 488
    return-void
.end method
