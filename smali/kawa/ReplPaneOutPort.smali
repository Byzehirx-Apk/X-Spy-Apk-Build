.class public Lkawa/ReplPaneOutPort;
.super Lgnu/mapping/OutPort;
.source "ReplPaneOutPort.java"


# instance fields
.field document:Lkawa/ReplDocument;

.field str:Ljava/lang/String;

.field style:Ljavax/swing/text/AttributeSet;

.field tout:Lkawa/TextPaneWriter;


# direct methods
.method public constructor <init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 10

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPaneOutPort;
    move-object v1, p1

    .local v1, "document":Lkawa/ReplDocument;
    move-object v2, p2

    .local v2, "path":Ljava/lang/String;
    move-object v3, p3

    .local v3, "style":Ljavax/swing/text/AttributeSet;
    move-object v4, v0

    new-instance v5, Lkawa/TextPaneWriter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lkawa/TextPaneWriter;-><init>(Lkawa/ReplDocument;Ljavax/swing/text/AttributeSet;)V

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lkawa/ReplPaneOutPort;-><init>(Lkawa/TextPaneWriter;Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 25
    return-void
.end method

.method constructor <init>(Lkawa/TextPaneWriter;Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 10

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPaneOutPort;
    move-object v1, p1

    .local v1, "tout":Lkawa/TextPaneWriter;
    move-object v2, p2

    .local v2, "document":Lkawa/ReplDocument;
    move-object v3, p3

    .local v3, "path":Ljava/lang/String;
    move-object v4, p4

    .local v4, "style":Ljavax/swing/text/AttributeSet;
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v9, v3

    invoke-static {v9}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    .line 19
    move-object v5, v0

    const-string/jumbo v6, ""

    iput-object v6, v5, Lkawa/ReplPaneOutPort;->str:Ljava/lang/String;

    .line 30
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lkawa/ReplPaneOutPort;->tout:Lkawa/TextPaneWriter;

    .line 31
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lkawa/ReplPaneOutPort;->document:Lkawa/ReplDocument;

    .line 32
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lkawa/ReplPaneOutPort;->style:Ljavax/swing/text/AttributeSet;

    .line 33
    return-void
.end method


# virtual methods
.method public print(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPaneOutPort;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Ljava/awt/Component;

    if-eqz v3, :cond_0

    .line 53
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/awt/Component;

    invoke-virtual {v3, v4}, Lkawa/ReplPaneOutPort;->write(Ljava/awt/Component;)V

    .line 71
    :goto_0
    return-void

    .line 55
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/models/Paintable;

    if-eqz v3, :cond_1

    .line 57
    new-instance v3, Ljavax/swing/text/SimpleAttributeSet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljavax/swing/text/SimpleAttributeSet;-><init>()V

    move-object v2, v3

    .line 58
    .local v2, "style":Ljavax/swing/text/MutableAttributeSet;
    move-object v3, v2

    const-string/jumbo v4, "$ename"

    const-string/jumbo v5, "Paintable"

    invoke-interface {v3, v4, v5}, Ljavax/swing/text/MutableAttributeSet;->addAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    move-object v3, v2

    sget-object v4, Lkawa/ReplPane;->PaintableAttribute:Ljava/lang/Object;

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavax/swing/text/MutableAttributeSet;->addAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    move-object v3, v0

    const-string/jumbo v4, " "

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkawa/ReplPaneOutPort;->write(Ljava/lang/String;Ljavax/swing/text/MutableAttributeSet;)V

    .line 61
    goto :goto_0

    .line 62
    .end local v2    # "style":Ljavax/swing/text/MutableAttributeSet;
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/models/Viewable;

    if-eqz v3, :cond_2

    .line 64
    new-instance v3, Ljavax/swing/text/SimpleAttributeSet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljavax/swing/text/SimpleAttributeSet;-><init>()V

    move-object v2, v3

    .line 65
    .restart local v2    # "style":Ljavax/swing/text/MutableAttributeSet;
    move-object v3, v2

    const-string/jumbo v4, "$ename"

    const-string/jumbo v5, "Viewable"

    invoke-interface {v3, v4, v5}, Ljavax/swing/text/MutableAttributeSet;->addAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    move-object v3, v2

    sget-object v4, Lkawa/ReplPane;->ViewableAttribute:Ljava/lang/Object;

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavax/swing/text/MutableAttributeSet;->addAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    move-object v3, v0

    const-string/jumbo v4, " "

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkawa/ReplPaneOutPort;->write(Ljava/lang/String;Ljavax/swing/text/MutableAttributeSet;)V

    .line 68
    goto :goto_0

    .line 70
    .end local v2    # "style":Ljavax/swing/text/MutableAttributeSet;
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized write(Ljava/awt/Component;)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPaneOutPort;
    move-object v1, p1

    .local v1, "c":Ljava/awt/Component;
    move-object v6, p0

    monitor-enter v6

    :try_start_0
    new-instance v3, Ljavax/swing/text/SimpleAttributeSet;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavax/swing/text/SimpleAttributeSet;-><init>()V

    move-object v2, v3

    .line 45
    .local v2, "style":Ljavax/swing/text/MutableAttributeSet;
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Ljavax/swing/text/StyleConstants;->setComponent(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Component;)V

    .line 46
    move-object v3, v0

    const-string/jumbo v4, " "

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkawa/ReplPaneOutPort;->write(Ljava/lang/String;Ljavax/swing/text/MutableAttributeSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v6

    return-void

    .line 44
    .end local v2    # "style":Ljavax/swing/text/MutableAttributeSet;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lkawa/ReplPaneOutPort;
    throw v0
.end method

.method public write(Ljava/lang/String;Ljavax/swing/text/MutableAttributeSet;)V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lkawa/ReplPaneOutPort;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, p2

    .local v2, "style":Ljavax/swing/text/MutableAttributeSet;
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/ReplPaneOutPort;->flush()V

    .line 38
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplPaneOutPort;->document:Lkawa/ReplDocument;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 39
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lkawa/ReplPaneOutPort;->setColumnNumber(I)V

    .line 40
    return-void
.end method
