.class public Lkawa/ReplDocument;
.super Ljavax/swing/text/DefaultStyledDocument;
.source "ReplDocument.java"

# interfaces
.implements Ljavax/swing/event/DocumentListener;
.implements Ljava/awt/event/FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/ReplDocument$DocumentCloseListener;
    }
.end annotation


# static fields
.field static blueStyle:Ljavax/swing/text/Style;

.field public static defaultStyle:Ljavax/swing/text/Style;

.field public static inputStyle:Ljavax/swing/text/Style;

.field static promptStyle:Ljavax/swing/text/Style;

.field public static redStyle:Ljavax/swing/text/Style;

.field public static styles:Ljavax/swing/text/StyleContext;


# instance fields
.field closeListeners:Ljava/lang/Object;

.field content:Lgnu/kawa/swingviews/SwingContent;

.field public endMark:I

.field environment:Lgnu/mapping/Environment;

.field final err_stream:Lkawa/ReplPaneOutPort;

.field final in_p:Lkawa/GuiInPort;

.field final in_r:Lgnu/text/QueueReader;

.field language:Lgnu/expr/Language;

.field length:I

.field final out_stream:Lkawa/ReplPaneOutPort;

.field public outputMark:I

.field pane:Ljavax/swing/JTextPane;

.field paneCount:I

.field thread:Lgnu/mapping/Future;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Ljavax/swing/text/StyleContext;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljavax/swing/text/StyleContext;-><init>()V

    sput-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    .line 24
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string/jumbo v1, "default"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->defaultStyle:Ljavax/swing/text/Style;

    .line 25
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string/jumbo v1, "input"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    .line 26
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string/jumbo v1, "red"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    .line 27
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string/jumbo v1, "blue"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->blueStyle:Ljavax/swing/text/Style;

    .line 28
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string/jumbo v1, "prompt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    .line 30
    sget-object v0, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 31
    sget-object v0, Lkawa/ReplDocument;->blueStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->blue:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 32
    sget-object v0, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 33
    sget-object v0, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setBold(Ljavax/swing/text/MutableAttributeSet;Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .locals 10

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "penvironment":Lgnu/mapping/Environment;
    move v3, p3

    .local v3, "shared":Z
    move-object v4, v0

    new-instance v5, Lgnu/kawa/swingviews/SwingContent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lgnu/kawa/swingviews/SwingContent;-><init>()V

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lkawa/ReplDocument;-><init>(Lgnu/kawa/swingviews/SwingContent;Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    .line 63
    return-void
.end method

.method private constructor <init>(Lgnu/kawa/swingviews/SwingContent;Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .locals 13

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "content":Lgnu/kawa/swingviews/SwingContent;
    move-object v2, p2

    .local v2, "language":Lgnu/expr/Language;
    move-object/from16 v3, p3

    .local v3, "penvironment":Lgnu/mapping/Environment;
    move/from16 v4, p4

    .local v4, "shared":Z
    move-object v5, v0

    move-object v6, v1

    sget-object v7, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    invoke-direct {v5, v6, v7}, Ljavax/swing/text/DefaultStyledDocument;-><init>(Ljavax/swing/text/AbstractDocument$Content;Ljavax/swing/text/StyleContext;)V

    .line 51
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lkawa/ReplDocument;->outputMark:I

    .line 56
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lkawa/ReplDocument;->endMark:I

    .line 58
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lkawa/ReplDocument;->length:I

    .line 68
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lkawa/ReplDocument;->content:Lgnu/kawa/swingviews/SwingContent;

    .line 69
    invoke-static {}, Lgnu/expr/ModuleBody;->exitIncrement()V

    .line 71
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v5, v6}, Lkawa/ReplDocument;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 73
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lkawa/ReplDocument;->language:Lgnu/expr/Language;

    .line 75
    move-object v5, v0

    new-instance v6, Lkawa/ReplDocument$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lkawa/ReplDocument$1;-><init>(Lkawa/ReplDocument;)V

    iput-object v6, v5, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    .line 79
    move-object v5, v0

    new-instance v6, Lkawa/ReplPaneOutPort;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    const-string/jumbo v9, "/dev/stdout"

    sget-object v10, Lkawa/ReplDocument;->defaultStyle:Ljavax/swing/text/Style;

    invoke-direct {v7, v8, v9, v10}, Lkawa/ReplPaneOutPort;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    iput-object v6, v5, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    .line 80
    move-object v5, v0

    new-instance v6, Lkawa/ReplPaneOutPort;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    const-string/jumbo v9, "/dev/stderr"

    sget-object v10, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    invoke-direct {v7, v8, v9, v10}, Lkawa/ReplPaneOutPort;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    iput-object v6, v5, Lkawa/ReplDocument;->err_stream:Lkawa/ReplPaneOutPort;

    .line 81
    move-object v5, v0

    new-instance v6, Lkawa/GuiInPort;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    const-string/jumbo v9, "/dev/stdin"

    invoke-static {v9}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    move-object v11, v0

    invoke-direct {v7, v8, v9, v10, v11}, Lkawa/GuiInPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;Lkawa/ReplDocument;)V

    iput-object v6, v5, Lkawa/ReplDocument;->in_p:Lkawa/GuiInPort;

    .line 83
    move-object v5, v0

    new-instance v6, Lkawa/ReplDocument$2;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v2

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lkawa/ReplDocument$2;-><init>(Lkawa/ReplDocument;Lgnu/expr/Language;Z)V

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lkawa/ReplDocument;->in_p:Lkawa/GuiInPort;

    move-object v9, v0

    iget-object v9, v9, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    move-object v10, v0

    iget-object v10, v10, Lkawa/ReplDocument;->err_stream:Lkawa/ReplPaneOutPort;

    invoke-static {v6, v7, v8, v9, v10}, Lgnu/mapping/Future;->make(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)Lgnu/mapping/Future;

    move-result-object v6

    iput-object v6, v5, Lkawa/ReplDocument;->thread:Lgnu/mapping/Future;

    .line 98
    move-object v5, v0

    iget-object v5, v5, Lkawa/ReplDocument;->thread:Lgnu/mapping/Future;

    invoke-virtual {v5}, Lgnu/mapping/Future;->start()V

    .line 99
    return-void
.end method


# virtual methods
.method public addDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V
    .locals 7

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "listener":Lkawa/ReplDocument$DocumentCloseListener;
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 254
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    .line 268
    :goto_0
    return-void

    .line 258
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 259
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object v2, v3

    .line 266
    .local v2, "vec":Ljava/util/ArrayList;
    :goto_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 262
    .end local v2    # "vec":Ljava/util/ArrayList;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 263
    .restart local v2    # "vec":Ljava/util/ArrayList;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 264
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    goto :goto_1
.end method

.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 4

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "e":Ljavax/swing/event/DocumentEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public checkingPendingInput()V
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    new-instance v1, Lkawa/ReplDocument$4;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkawa/ReplDocument$4;-><init>(Lkawa/ReplDocument;)V

    invoke-static {v1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method close()V
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v2, v0

    iget-object v2, v2, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v2}, Lgnu/text/QueueReader;->appendEOF()V

    .line 237
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 242
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lkawa/ReplDocument;->thread:Lgnu/mapping/Future;

    invoke-virtual {v2}, Lgnu/mapping/Future;->stop()V

    .line 243
    move-object v2, v0

    invoke-virtual {v2}, Lkawa/ReplDocument;->fireDocumentClosed()V

    .line 244
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    .line 245
    return-void

    .line 238
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public declared-synchronized deleteOldText()V
    .locals 9

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v7, p0

    monitor-enter v7

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    :try_start_0
    iget v5, v5, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {v3, v4, v5}, Lkawa/ReplDocument;->getText(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 108
    .local v1, "str":Ljava/lang/String;
    move-object v3, v0

    iget v3, v3, Lkawa/ReplDocument;->outputMark:I

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 110
    .local v2, "lineBefore":I
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lkawa/ReplDocument;->remove(II)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    monitor-exit v7

    return-void

    .line 108
    .end local v2    # "lineBefore":I
    :cond_0
    move-object v3, v1

    const/16 v4, 0xa

    move-object v5, v0

    :try_start_1
    iget v5, v5, Lkawa/ReplDocument;->outputMark:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I
    :try_end_1
    .catch Ljavax/swing/text/BadLocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 116
    .local v1, "ex":Ljavax/swing/text/BadLocationException;
    :try_start_2
    new-instance v3, Ljava/lang/Error;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .end local v1    # "ex":Ljavax/swing/text/BadLocationException;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lkawa/ReplDocument;
    throw v0
.end method

.method fireDocumentClosed()V
    .locals 5

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    instance-of v3, v3, Lkawa/ReplDocument$DocumentCloseListener;

    if-eqz v3, :cond_1

    .line 293
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    check-cast v3, Lkawa/ReplDocument$DocumentCloseListener;

    move-object v4, v0

    invoke-interface {v3, v4}, Lkawa/ReplDocument$DocumentCloseListener;->closed(Lkawa/ReplDocument;)V

    .line 300
    :cond_0
    return-void

    .line 294
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 296
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object v1, v3

    .line 297
    .local v1, "vec":Ljava/util/ArrayList;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_0

    .line 298
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkawa/ReplDocument$DocumentCloseListener;

    move-object v4, v0

    invoke-interface {v3, v4}, Lkawa/ReplDocument$DocumentCloseListener;->closed(Lkawa/ReplDocument;)V

    goto :goto_0
.end method

.method public focusGained(Ljava/awt/event/FocusEvent;)V
    .locals 5

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "e":Ljava/awt/event/FocusEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/awt/event/FocusEvent;->getSource()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 194
    .local v2, "source":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lkawa/ReplPane;

    if-eqz v3, :cond_0

    .line 196
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Lkawa/ReplPane;

    iput-object v4, v3, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 201
    :goto_0
    move-object v3, v0

    move-object v4, v2

    instance-of v4, v4, Lkawa/ReplPane;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lkawa/ReplPane;

    :goto_1
    iput-object v4, v3, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 202
    return-void

    .line 200
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    goto :goto_0

    .line 201
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public focusLost(Ljava/awt/event/FocusEvent;)V
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "e":Ljava/awt/event/FocusEvent;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 207
    return-void
.end method

.method public insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 10

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move v1, p1

    .local v1, "pos":I
    move-object v2, p2

    .local v2, "str":Ljava/lang/String;
    move-object v3, p3

    .local v3, "style":Ljavax/swing/text/AttributeSet;
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    :try_start_0
    invoke-super {v5, v6, v7, v8}, Ljavax/swing/text/DefaultStyledDocument;->insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    return-void

    .line 129
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 132
    .local v4, "ex":Ljavax/swing/text/BadLocationException;
    new-instance v5, Ljava/lang/Error;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "e":Ljavax/swing/event/DocumentEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public removeDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V
    .locals 6

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "listener":Lkawa/ReplDocument$DocumentCloseListener;
    move-object v4, v0

    iget-object v4, v4, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    instance-of v4, v4, Lkawa/ReplDocument$DocumentCloseListener;

    if-eqz v4, :cond_1

    .line 274
    move-object v4, v0

    iget-object v4, v4, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 275
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 279
    move-object v4, v0

    iget-object v4, v4, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, v4

    .line 280
    .local v2, "vec":Ljava/util/ArrayList;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v4

    .local v3, "i":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_3

    .line 282
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_2

    .line 283
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 285
    :cond_3
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 286
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "e":Ljavax/swing/event/DocumentEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public declared-synchronized textValueChanged(Ljavax/swing/event/DocumentEvent;)V
    .locals 9

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "e":Ljavax/swing/event/DocumentEvent;
    move-object v7, p0

    monitor-enter v7

    move-object v4, v1

    :try_start_0
    invoke-interface {v4}, Ljavax/swing/event/DocumentEvent;->getOffset()I

    move-result v4

    move v2, v4

    .line 218
    .local v2, "pos":I
    move-object v4, v0

    invoke-virtual {v4}, Lkawa/ReplDocument;->getLength()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lkawa/ReplDocument;->length:I

    sub-int/2addr v4, v5

    move v3, v4

    .line 219
    .local v3, "delta":I
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lkawa/ReplDocument;->length:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lkawa/ReplDocument;->length:I

    .line 220
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lkawa/ReplDocument;->outputMark:I

    if-ge v4, v5, :cond_2

    .line 221
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lkawa/ReplDocument;->outputMark:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lkawa/ReplDocument;->outputMark:I

    .line 224
    :cond_0
    :goto_0
    move-object v4, v0

    iget v4, v4, Lkawa/ReplDocument;->endMark:I

    if-ltz v4, :cond_1

    .line 226
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lkawa/ReplDocument;->endMark:I

    if-ge v4, v5, :cond_3

    .line 227
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lkawa/ReplDocument;->endMark:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lkawa/ReplDocument;->endMark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_1
    :goto_1
    monitor-exit v7

    return-void

    .line 222
    :cond_2
    move v4, v2

    move v5, v3

    sub-int/2addr v4, v5

    move-object v5, v0

    :try_start_1
    iget v5, v5, Lkawa/ReplDocument;->outputMark:I

    if-ge v4, v5, :cond_0

    .line 223
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lkawa/ReplDocument;->outputMark:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    .end local v2    # "pos":I
    .end local v3    # "delta":I
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lkawa/ReplDocument;
    throw v0

    .line 228
    .restart local v0    # "this":Lkawa/ReplDocument;
    .restart local v2    # "pos":I
    .restart local v3    # "delta":I
    :cond_3
    move v4, v2

    move v5, v3

    sub-int/2addr v4, v5

    move-object v5, v0

    :try_start_2
    iget v5, v5, Lkawa/ReplDocument;->endMark:I

    if-ge v4, v5, :cond_1

    .line 229
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lkawa/ReplDocument;->endMark:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 9

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, p2

    .local v2, "style":Ljavax/swing/text/AttributeSet;
    new-instance v3, Lkawa/ReplDocument$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lkawa/ReplDocument$3;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    invoke-static {v3}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method
