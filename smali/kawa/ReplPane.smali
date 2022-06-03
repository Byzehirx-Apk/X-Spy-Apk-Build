.class public Lkawa/ReplPane;
.super Ljavax/swing/JTextPane;
.source "ReplPane.java"

# interfaces
.implements Ljava/awt/event/KeyListener;


# static fields
.field public static final PaintableAttribute:Ljava/lang/Object;

.field public static final PaintableElementName:Ljava/lang/String; = "Paintable"

.field public static final ViewableAttribute:Ljava/lang/Object;

.field public static final ViewableElementName:Ljava/lang/String; = "Viewable"


# instance fields
.field document:Lkawa/ReplDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "Viewable"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/ReplPane;->ViewableAttribute:Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "Paintable"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/ReplPane;->PaintableAttribute:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkawa/ReplDocument;)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPane;
    move-object v1, p1

    .local v1, "document":Lkawa/ReplDocument;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/swing/JTextPane;-><init>(Ljavax/swing/text/StyledDocument;)V

    .line 38
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    .line 39
    move-object v3, v1

    move-object v4, v0

    iput-object v4, v3, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 40
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lkawa/ReplDocument;->paneCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lkawa/ReplDocument;->paneCount:I

    .line 42
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v3, v4}, Lkawa/ReplPane;->addKeyListener(Ljava/awt/event/KeyListener;)V

    .line 43
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lkawa/ReplPane;->addFocusListener(Ljava/awt/event/FocusListener;)V

    .line 45
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/ReplPane;->getEditorKit()Ljavax/swing/text/EditorKit;

    move-result-object v3

    move-object v2, v3

    .line 46
    .local v2, "kit":Ljavax/swing/text/EditorKit;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {v3, v4}, Lkawa/ReplPane;->setCaretPosition(I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected createDefaultEditorKit()Ljavax/swing/text/EditorKit;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPane;
    new-instance v1, Lkawa/ReplEditorKit;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkawa/ReplEditorKit;-><init>(Lkawa/ReplPane;)V

    move-object v0, v1

    .end local v0    # "this":Lkawa/ReplPane;
    return-object v0
.end method

.method enter()V
    .locals 14

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPane;
    move-object v8, v0

    invoke-virtual {v8}, Lkawa/ReplPane;->getCaretPosition()I

    move-result v8

    move v1, v8

    .line 92
    .local v1, "pos":I
    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v8, v8, Lkawa/ReplDocument;->content:Lgnu/kawa/swingviews/SwingContent;

    iget-object v8, v8, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    move-object v2, v8

    .line 93
    .local v2, "b":Lgnu/lists/CharBuffer;
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/lists/CharBuffer;->length()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v3, v8

    .line 94
    .local v3, "len":I
    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    const/4 v9, -0x1

    iput v9, v8, Lkawa/ReplDocument;->endMark:I

    .line 95
    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v9, v9, Lkawa/ReplDocument;->outputMark:I

    if-lt v8, v9, :cond_3

    .line 97
    move-object v8, v2

    const/16 v9, 0xa

    move v10, v1

    invoke-virtual {v8, v9, v10}, Lgnu/lists/CharBuffer;->indexOf(II)I

    move-result v8

    move v4, v8

    .line 98
    .local v4, "lineAfterCaret":I
    move v8, v4

    move v9, v3

    if-ne v8, v9, :cond_0

    .line 100
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v9, v9, Lkawa/ReplDocument;->outputMark:I

    if-le v8, v9, :cond_2

    move-object v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lgnu/lists/CharBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 101
    add-int/lit8 v4, v4, -0x1

    .line 105
    :cond_0
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    move v9, v4

    iput v9, v8, Lkawa/ReplDocument;->endMark:I

    .line 111
    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v8, v8, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v5, v9

    monitor-enter v8

    .line 113
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v8, v8, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 114
    move-object v8, v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    move v8, v1

    move v9, v4

    if-gt v8, v9, :cond_1

    .line 116
    move-object v8, v0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lkawa/ReplPane;->setCaretPosition(I)V

    .line 117
    .line 138
    .end local v4    # "lineAfterCaret":I
    :cond_1
    :goto_1
    return-void

    .line 103
    .restart local v4    # "lineAfterCaret":I
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    move v9, v3

    const-string/jumbo v10, "\n"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lkawa/ReplDocument;->insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v5

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v6

    throw v8

    .line 120
    .end local v4    # "lineAfterCaret":I
    :cond_3
    move v8, v1

    if-nez v8, :cond_5

    const/4 v8, 0x0

    :goto_2
    move v4, v8

    .line 121
    .local v4, "lineBefore":I
    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    move v9, v4

    invoke-virtual {v8, v9}, Lkawa/ReplDocument;->getCharacterElement(I)Ljavax/swing/text/Element;

    move-result-object v8

    move-object v5, v8

    .line 122
    .local v5, "el":Ljavax/swing/text/Element;
    move-object v8, v2

    const/16 v9, 0xa

    move v10, v1

    invoke-virtual {v8, v9, v10}, Lgnu/lists/CharBuffer;->indexOf(II)I

    move-result v8

    move v6, v8

    .line 124
    .local v6, "lineAfter":I
    move-object v8, v5

    invoke-interface {v8}, Ljavax/swing/text/Element;->getAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v8

    sget-object v9, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    invoke-interface {v8, v9}, Ljavax/swing/text/AttributeSet;->isEqual(Ljavax/swing/text/AttributeSet;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 125
    move-object v8, v5

    invoke-interface {v8}, Ljavax/swing/text/Element;->getEndOffset()I

    move-result v8

    move v4, v8

    .line 127
    :cond_4
    move v8, v6

    if-gez v8, :cond_6

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v2

    move v10, v4

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/lists/CharBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 131
    .local v7, "str":Ljava/lang/String;
    :goto_3
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v9, v9, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {v8, v9}, Lkawa/ReplPane;->setCaretPosition(I)V

    .line 132
    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    move-object v9, v7

    sget-object v10, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    invoke-virtual {v8, v9, v10}, Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 134
    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v8, v8, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    if-eqz v8, :cond_1

    .line 135
    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v8, v8, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    move-result-object v8

    goto/16 :goto_1

    .line 120
    .end local v4    # "lineBefore":I
    .end local v5    # "el":Ljavax/swing/text/Element;
    .end local v6    # "lineAfter":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x1

    move-object v9, v2

    const/16 v10, 0xa

    move v11, v1

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Lgnu/lists/CharBuffer;->lastIndexOf(II)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_2

    .line 130
    .restart local v4    # "lineBefore":I
    .restart local v5    # "el":Ljavax/swing/text/Element;
    .restart local v6    # "lineAfter":I
    :cond_6
    move-object v8, v2

    move v9, v4

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Lgnu/lists/CharBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_3
.end method

.method public getInputAttributes()Ljavax/swing/text/MutableAttributeSet;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPane;
    sget-object v1, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    move-object v0, v1

    .end local v0    # "this":Lkawa/ReplPane;
    return-object v0
.end method

.method public getStderr()Lgnu/mapping/OutPort;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPane;
    move-object v1, v0

    iget-object v1, v1, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v1, v1, Lkawa/ReplDocument;->err_stream:Lkawa/ReplPaneOutPort;

    move-object v0, v1

    .end local v0    # "this":Lkawa/ReplPane;
    return-object v0
.end method

.method public getStdout()Lgnu/mapping/OutPort;
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPane;
    move-object v1, v0

    iget-object v1, v1, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v1, v1, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    move-object v0, v1

    .end local v0    # "this":Lkawa/ReplPane;
    return-object v0
.end method

.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPane;
    move-object v1, p1

    .local v1, "e":Ljava/awt/event/KeyEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v3

    move v2, v3

    .line 147
    .local v2, "code":I
    move v3, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 149
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/ReplPane;->enter()V

    .line 150
    move-object v3, v1

    invoke-virtual {v3}, Ljava/awt/event/KeyEvent;->consume()V

    .line 152
    :cond_0
    return-void
.end method

.method public keyReleased(Ljava/awt/event/KeyEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .prologue
    .line 154
    return-void
.end method

.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .prologue
    .line 157
    return-void
.end method

.method public removeNotify()V
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPane;
    move-object v1, v0

    invoke-super {v1}, Ljavax/swing/JTextPane;->removeNotify()V

    .line 60
    move-object v1, v0

    iget-object v1, v1, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lkawa/ReplDocument;->paneCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lkawa/ReplDocument;->paneCount:I

    if-nez v1, :cond_0

    .line 61
    move-object v1, v0

    iget-object v1, v1, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    invoke-virtual {v1}, Lkawa/ReplDocument;->close()V

    .line 62
    :cond_0
    return-void
.end method
