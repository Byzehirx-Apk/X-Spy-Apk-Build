.class public Lgnu/kawa/swingviews/SwingContent;
.super Ljava/lang/Object;
.source "SwingContent.java"

# interfaces
.implements Ljavax/swing/text/AbstractDocument$Content;


# instance fields
.field public final buffer:Lgnu/lists/CharBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingContent;
    move-object v1, v0

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lgnu/kawa/swingviews/SwingContent;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingContent;
    move v1, p1

    .local v1, "initialSize":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v3, Lgnu/lists/CharBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Lgnu/lists/CharBuffer;-><init>(I)V

    move-object v2, v3

    .line 24
    .local v2, "b":Lgnu/lists/CharBuffer;
    move-object v3, v2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/lists/CharBuffer;->gapEnd:I

    .line 25
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v3

    move-object v4, v2

    iget v4, v4, Lgnu/lists/CharBuffer;->gapEnd:I

    const/16 v5, 0xa

    aput-char v5, v3, v4

    .line 26
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/lists/CharBuffer;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingContent;
    move-object v1, p1

    .local v1, "buffer":Lgnu/lists/CharBuffer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 16
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 17
    return-void
.end method


# virtual methods
.method public createPosition(I)Ljavax/swing/text/Position;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingContent;
    move v1, p1

    .local v1, "offset":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    move-object v2, v3

    .line 102
    .local v2, "b":Lgnu/lists/CharBuffer;
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/lists/CharBuffer;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 103
    :cond_0
    new-instance v3, Ljavax/swing/text/BadLocationException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "bad offset to createPosition"

    move v6, v1

    invoke-direct {v4, v5, v6}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 104
    :cond_1
    new-instance v3, Lgnu/kawa/swingviews/GapPosition;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    move v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/kawa/swingviews/GapPosition;-><init>(Lgnu/lists/CharBuffer;I)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/swingviews/SwingContent;
    return-object v0
.end method

.method public getChars(IILjavax/swing/text/Segment;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingContent;
    move v1, p1

    .local v1, "where":I
    move v2, p2

    .local v2, "len":I
    move-object v3, p3

    .local v3, "txt":Ljavax/swing/text/Segment;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    move-object v4, v6

    .line 40
    .local v4, "b":Lgnu/lists/CharBuffer;
    move-object v6, v4

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v6

    move v5, v6

    .line 41
    .local v5, "start":I
    move v6, v5

    if-gez v6, :cond_0

    .line 42
    new-instance v6, Ljavax/swing/text/BadLocationException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "invalid offset"

    move v9, v1

    invoke-direct {v7, v8, v9}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 43
    :cond_0
    move-object v6, v3

    move v7, v5

    iput v7, v6, Ljavax/swing/text/Segment;->offset:I

    .line 44
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v7}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v7

    iput-object v7, v6, Ljavax/swing/text/Segment;->array:[C

    .line 45
    move-object v6, v3

    move v7, v2

    iput v7, v6, Ljavax/swing/text/Segment;->count:I

    .line 46
    return-void
.end method

.method public getString(II)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingContent;
    move v1, p1

    .local v1, "where":I
    move v2, p2

    .local v2, "len":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    move-object v3, v5

    .line 52
    .local v3, "b":Lgnu/lists/CharBuffer;
    move-object v5, v3

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v5

    move v4, v5

    .line 53
    .local v4, "start":I
    move v5, v4

    if-gez v5, :cond_0

    .line 54
    new-instance v5, Ljavax/swing/text/BadLocationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "invalid offset"

    move v8, v1

    invoke-direct {v6, v7, v8}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 55
    :cond_0
    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v7

    move v8, v4

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/swingviews/SwingContent;
    return-object v0
.end method

.method public insertString(ILjava/lang/String;)Ljavax/swing/undo/UndoableEdit;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingContent;
    move v1, p1

    .local v1, "where":I
    move-object v2, p2

    .local v2, "str":Ljava/lang/String;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/swingviews/SwingContent;->insertString(ILjava/lang/String;Z)Ljavax/swing/undo/UndoableEdit;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/swingviews/SwingContent;
    return-object v0
.end method

.method public insertString(ILjava/lang/String;Z)Ljavax/swing/undo/UndoableEdit;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingContent;
    move v1, p1

    .local v1, "where":I
    move-object v2, p2

    .local v2, "str":Ljava/lang/String;
    move v3, p3

    .local v3, "beforeMarkers":Z
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    move-object v4, v6

    .line 80
    .local v4, "b":Lgnu/lists/CharBuffer;
    move v6, v1

    if-ltz v6, :cond_0

    move v6, v1

    move-object v7, v4

    invoke-virtual {v7}, Lgnu/lists/CharBuffer;->length()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 81
    :cond_0
    new-instance v6, Ljavax/swing/text/BadLocationException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "bad insert"

    move v9, v1

    invoke-direct {v7, v8, v9}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 82
    :cond_1
    move-object v6, v4

    move v7, v1

    move-object v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lgnu/lists/CharBuffer;->insert(ILjava/lang/String;Z)V

    .line 84
    new-instance v6, Lgnu/kawa/swingviews/GapUndoableEdit;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v1

    invoke-direct {v7, v8}, Lgnu/kawa/swingviews/GapUndoableEdit;-><init>(I)V

    move-object v5, v6

    .line 85
    .local v5, "undo":Lgnu/kawa/swingviews/GapUndoableEdit;
    move-object v6, v5

    move-object v7, v0

    iput-object v7, v6, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    .line 86
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/kawa/swingviews/GapUndoableEdit;->data:Ljava/lang/String;

    .line 87
    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, v6, Lgnu/kawa/swingviews/GapUndoableEdit;->nitems:I

    .line 88
    move-object v6, v5

    const/4 v7, 0x1

    iput-boolean v7, v6, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    .line 89
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lgnu/kawa/swingviews/SwingContent;
    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingContent;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v1}, Lgnu/lists/CharBuffer;->length()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/swingviews/SwingContent;
    return v0
.end method

.method public remove(II)Ljavax/swing/undo/UndoableEdit;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingContent;
    move v1, p1

    .local v1, "where":I
    move v2, p2

    .local v2, "nitems":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    move-object v3, v5

    .line 62
    .local v3, "b":Lgnu/lists/CharBuffer;
    move v5, v2

    if-ltz v5, :cond_0

    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/lists/CharBuffer;->length()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 63
    :cond_0
    new-instance v5, Ljavax/swing/text/BadLocationException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string/jumbo v7, "invalid remove"

    move v8, v1

    invoke-direct {v6, v7, v8}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 65
    :cond_1
    move-object v5, v3

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/lists/CharBuffer;->delete(II)V

    .line 67
    new-instance v5, Lgnu/kawa/swingviews/GapUndoableEdit;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v1

    invoke-direct {v6, v7}, Lgnu/kawa/swingviews/GapUndoableEdit;-><init>(I)V

    move-object v4, v5

    .line 68
    .local v4, "undo":Lgnu/kawa/swingviews/GapUndoableEdit;
    move-object v5, v4

    move-object v6, v0

    iput-object v6, v5, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    .line 69
    move-object v5, v4

    new-instance v6, Ljava/lang/String;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v8

    move-object v9, v3

    iget v9, v9, Lgnu/lists/CharBuffer;->gapEnd:I

    move v10, v2

    sub-int/2addr v9, v10

    move v10, v2

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    iput-object v6, v5, Lgnu/kawa/swingviews/GapUndoableEdit;->data:Ljava/lang/String;

    .line 70
    move-object v5, v4

    move v6, v2

    iput v6, v5, Lgnu/kawa/swingviews/GapUndoableEdit;->nitems:I

    .line 71
    move-object v5, v4

    const/4 v6, 0x0

    iput-boolean v6, v5, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    .line 72
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/swingviews/SwingContent;
    return-object v0
.end method
