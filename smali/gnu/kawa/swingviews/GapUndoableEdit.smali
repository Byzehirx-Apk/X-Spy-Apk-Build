.class Lgnu/kawa/swingviews/GapUndoableEdit;
.super Ljavax/swing/undo/AbstractUndoableEdit;
.source "SwingContent.java"


# instance fields
.field content:Lgnu/kawa/swingviews/SwingContent;

.field data:Ljava/lang/String;

.field isInsertion:Z

.field nitems:I

.field startOffset:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/GapUndoableEdit;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    invoke-direct {v2}, Ljavax/swing/undo/AbstractUndoableEdit;-><init>()V

    .line 136
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    .line 137
    return-void
.end method

.method private doit(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/GapUndoableEdit;
    move v1, p1

    .local v1, "isInsertion":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 146
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/swingviews/GapUndoableEdit;->data:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/swingviews/SwingContent;->insertString(ILjava/lang/String;)Ljavax/swing/undo/UndoableEdit;

    move-result-object v2

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/swingviews/GapUndoableEdit;->nitems:I

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/swingviews/SwingContent;->remove(II)Ljavax/swing/undo/UndoableEdit;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public redo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/undo/CannotUndoException;
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/GapUndoableEdit;
    move-object v2, v0

    invoke-super {v2}, Ljavax/swing/undo/AbstractUndoableEdit;->redo()V

    .line 173
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    invoke-direct {v2, v3}, Lgnu/kawa/swingviews/GapUndoableEdit;->doit(Z)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    return-void

    .line 175
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 177
    .local v1, "ex":Ljavax/swing/text/BadLocationException;
    new-instance v2, Ljavax/swing/undo/CannotRedoException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavax/swing/undo/CannotRedoException;-><init>()V

    throw v2
.end method

.method public undo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/undo/CannotUndoException;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/GapUndoableEdit;
    move-object v2, v0

    invoke-super {v2}, Ljavax/swing/undo/AbstractUndoableEdit;->undo()V

    .line 160
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v2, v3}, Lgnu/kawa/swingviews/GapUndoableEdit;->doit(Z)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    return-void

    .line 160
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 164
    .local v1, "ex":Ljavax/swing/text/BadLocationException;
    new-instance v2, Ljavax/swing/undo/CannotUndoException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavax/swing/undo/CannotUndoException;-><init>()V

    throw v2
.end method
