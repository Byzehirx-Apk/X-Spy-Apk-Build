.class public Lgnu/kawa/swingviews/SwingDisplay;
.super Lgnu/kawa/models/Display;
.source "SwingDisplay.java"


# static fields
.field private static documents:Ljava/util/WeakHashMap;

.field static final instance:Lgnu/kawa/swingviews/SwingDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/swingviews/SwingDisplay;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/swingviews/SwingDisplay;-><init>()V

    sput-object v0, Lgnu/kawa/swingviews/SwingDisplay;->instance:Lgnu/kawa/swingviews/SwingDisplay;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingDisplay;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/models/Display;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/kawa/models/Display;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lgnu/kawa/swingviews/SwingDisplay;->instance:Lgnu/kawa/swingviews/SwingDisplay;

    return-object v0
.end method

.method static declared-synchronized getSwingDocument(Lgnu/kawa/models/Text;)Ljavax/swing/text/Document;
    .locals 10

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "model":Lgnu/kawa/models/Text;
    const-class v8, Lgnu/kawa/swingviews/SwingDisplay;

    monitor-enter v8

    :try_start_0
    sget-object v3, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    if-nez v3, :cond_0

    .line 53
    new-instance v3, Ljava/util/WeakHashMap;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v3, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    .line 54
    :cond_0
    sget-object v3, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 55
    .local v1, "existing":Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 56
    move-object v3, v1

    check-cast v3, Ljavax/swing/text/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 60
    .end local v0    # "model":Lgnu/kawa/models/Text;
    :goto_0
    monitor-exit v8

    return-object v0

    .line 57
    .restart local v0    # "model":Lgnu/kawa/models/Text;
    :cond_1
    :try_start_1
    new-instance v3, Ljavax/swing/text/PlainDocument;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Lgnu/kawa/swingviews/SwingContent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-direct {v6, v7}, Lgnu/kawa/swingviews/SwingContent;-><init>(Lgnu/lists/CharBuffer;)V

    invoke-direct {v4, v5}, Ljavax/swing/text/PlainDocument;-><init>(Ljavax/swing/text/AbstractDocument$Content;)V

    move-object v2, v3

    .line 59
    .local v2, "doc":Ljavax/swing/text/Document;
    sget-object v3, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 60
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 52
    .end local v1    # "existing":Ljava/lang/Object;
    .end local v2    # "doc":Ljavax/swing/text/Document;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "model":Lgnu/kawa/models/Text;
    throw v0
.end method

.method public static makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "command":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljava/awt/event/ActionListener;

    if-eqz v1, :cond_0

    .line 84
    move-object v1, v0

    check-cast v1, Ljava/awt/event/ActionListener;

    move-object v0, v1

    .line 85
    .end local v0    # "command":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "command":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lgnu/kawa/swingviews/ProcActionListener;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    check-cast v3, Lgnu/mapping/Procedure;

    invoke-direct {v2, v3}, Lgnu/kawa/swingviews/ProcActionListener;-><init>(Lgnu/mapping/Procedure;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addBox(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingDisplay;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Box;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v0

    new-instance v4, Lgnu/kawa/swingviews/SwingBox;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lgnu/kawa/swingviews/SwingBox;-><init>(Lgnu/kawa/models/Box;Lgnu/kawa/models/Display;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public addButton(Lgnu/kawa/models/Button;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingDisplay;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Button;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v0

    new-instance v4, Lgnu/kawa/swingviews/SwingButton;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/kawa/swingviews/SwingButton;-><init>(Lgnu/kawa/models/Button;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public addImage(Lgnu/kawa/models/DrawImage;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingDisplay;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/DrawImage;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v0

    new-instance v4, Ljavax/swing/JLabel;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljavax/swing/ImageIcon;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/kawa/models/DrawImage;->getImage()Ljava/awt/Image;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/swing/ImageIcon;-><init>(Ljava/awt/Image;)V

    invoke-direct {v5, v6}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public addLabel(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingDisplay;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Label;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v0

    new-instance v4, Lgnu/kawa/swingviews/SwingLabel;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/kawa/swingviews/SwingLabel;-><init>(Lgnu/kawa/models/Label;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public addSpacer(Lgnu/kawa/models/Spacer;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingDisplay;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Spacer;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v0

    new-instance v4, Ljavax/swing/Box$Filler;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/kawa/models/Spacer;->getMinimumSize()Ljava/awt/Dimension;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/kawa/models/Spacer;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/kawa/models/Spacer;->getMaximumSize()Ljava/awt/Dimension;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljavax/swing/Box$Filler;-><init>(Ljava/awt/Dimension;Ljava/awt/Dimension;Ljava/awt/Dimension;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public addText(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingDisplay;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Text;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v0

    new-instance v4, Ljavax/swing/JTextField;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-static {v6}, Lgnu/kawa/swingviews/SwingDisplay;->getSwingDocument(Lgnu/kawa/models/Text;)Ljavax/swing/text/Document;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/kawa/models/Text;->getText()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x32

    invoke-direct {v5, v6, v7, v8}, Ljavax/swing/JTextField;-><init>(Ljavax/swing/text/Document;Ljava/lang/String;I)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public addView(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingDisplay;
    move-object v1, p1

    .local v1, "view":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/awt/Container;

    move-object v4, v1

    check-cast v4, Ljava/awt/Component;

    invoke-virtual {v3, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v3

    .line 79
    return-void
.end method

.method public coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingDisplay;
    move-object v1, p1

    .local v1, "component":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/awt/Component;

    if-eqz v2, :cond_0

    .line 92
    new-instance v2, Lgnu/kawa/swingviews/ComponentModel;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    check-cast v4, Ljava/awt/Component;

    invoke-direct {v3, v4}, Lgnu/kawa/swingviews/ComponentModel;-><init>(Ljava/awt/Component;)V

    move-object v0, v2

    .line 96
    .end local v0    # "this":Lgnu/kawa/swingviews/SwingDisplay;
    :goto_0
    return-object v0

    .line 93
    .restart local v0    # "this":Lgnu/kawa/swingviews/SwingDisplay;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/models/Paintable;

    if-eqz v2, :cond_1

    .line 95
    new-instance v2, Lgnu/kawa/swingviews/ComponentModel;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Lgnu/kawa/swingviews/SwingPaintable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    check-cast v6, Lgnu/kawa/models/Paintable;

    invoke-direct {v5, v6}, Lgnu/kawa/swingviews/SwingPaintable;-><init>(Lgnu/kawa/models/Paintable;)V

    invoke-direct {v3, v4}, Lgnu/kawa/swingviews/ComponentModel;-><init>(Ljava/awt/Component;)V

    move-object v0, v2

    goto :goto_0

    .line 96
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/kawa/models/Display;->coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public makeWindow()Lgnu/kawa/models/Window;
    .locals 8

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingDisplay;
    new-instance v2, Lgnu/kawa/swingviews/SwingFrame;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lgnu/kawa/swingviews/SwingFrame;-><init>(Ljava/lang/String;Ljavax/swing/JMenuBar;Ljava/lang/Object;)V

    move-object v1, v2

    .line 19
    .local v1, "window":Lgnu/kawa/swingviews/SwingFrame;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/swingviews/SwingFrame;->display:Lgnu/kawa/swingviews/SwingDisplay;

    .line 20
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/swingviews/SwingDisplay;
    return-object v0
.end method
