.class public Lgnu/kawa/swingviews/SwingFrame;
.super Ljavax/swing/JFrame;
.source "SwingFrame.java"

# interfaces
.implements Lgnu/kawa/models/Window;


# instance fields
.field display:Lgnu/kawa/swingviews/SwingDisplay;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/swing/JMenuBar;Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingFrame;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    .local v2, "menubar":Ljavax/swing/JMenuBar;
    move-object v3, p3

    .local v3, "contents":Ljava/lang/Object;
    move-object v6, v0

    invoke-direct {v6}, Ljavax/swing/JFrame;-><init>()V

    .line 19
    move-object v6, v0

    move-object v4, v6

    .line 20
    .local v4, "fr":Ljavax/swing/JFrame;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 21
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavax/swing/JFrame;->setTitle(Ljava/lang/String;)V

    .line 22
    :cond_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 23
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavax/swing/JFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 24
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/swingviews/SwingFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v6

    move-object v5, v6

    .line 25
    .local v5, "pane":Ljava/awt/Container;
    move-object v6, v5

    new-instance v7, Ljavax/swing/BoxLayout;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v5

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {v6, v7}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 26
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/kawa/swingviews/SwingFrame;->addComponent(Ljava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method public addComponent(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingFrame;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/FString;

    if-nez v4, :cond_0

    move-object v4, v1

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 44
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/swingviews/SwingFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    new-instance v5, Ljavax/swing/JLabel;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v4

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/AbstractSequence;

    if-eqz v4, :cond_4

    .line 47
    move-object v4, v1

    check-cast v4, Lgnu/lists/AbstractSequence;

    move-object v2, v4

    .line 48
    .local v2, "seq":Lgnu/lists/AbstractSequence;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v4

    move v3, v4

    .local v3, "iter":I
    :goto_1
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    move v3, v5

    if-eqz v4, :cond_3

    .line 49
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/swingviews/SwingFrame;->addComponent(Ljava/lang/Object;)V

    goto :goto_1

    .line 50
    :cond_3
    goto :goto_0

    .line 51
    .end local v2    # "seq":Lgnu/lists/AbstractSequence;
    .end local v3    # "iter":I
    :cond_4
    move-object v4, v1

    instance-of v4, v4, Lgnu/kawa/models/Viewable;

    if-eqz v4, :cond_5

    .line 52
    move-object v4, v1

    check-cast v4, Lgnu/kawa/models/Viewable;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/swingviews/SwingFrame;->getDisplay()Lgnu/kawa/models/Display;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/swingviews/SwingFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_5
    move-object v4, v1

    instance-of v4, v4, Lgnu/kawa/models/Paintable;

    if-eqz v4, :cond_6

    .line 54
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/swingviews/SwingFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    new-instance v5, Lgnu/kawa/swingviews/SwingPaintable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    check-cast v7, Lgnu/kawa/models/Paintable;

    invoke-direct {v6, v7}, Lgnu/kawa/swingviews/SwingPaintable;-><init>(Lgnu/kawa/models/Paintable;)V

    invoke-virtual {v4, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v4

    goto :goto_0

    .line 55
    :cond_6
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 56
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/swingviews/SwingFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/awt/Component;

    invoke-virtual {v4, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v4

    goto :goto_0
.end method

.method public getDisplay()Lgnu/kawa/models/Display;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingFrame;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/swingviews/SwingFrame;->display:Lgnu/kawa/swingviews/SwingDisplay;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/swingviews/SwingFrame;
    return-object v0
.end method

.method public open()V
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingFrame;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/swingviews/SwingFrame;->pack()V

    .line 62
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/kawa/swingviews/SwingFrame;->setVisible(Z)V

    .line 63
    return-void
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingFrame;
    move-object v1, p1

    .local v1, "content":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Ljavax/swing/JPanel;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavax/swing/JPanel;-><init>()V

    invoke-virtual {v2, v3}, Lgnu/kawa/swingviews/SwingFrame;->setContentPane(Ljava/awt/Container;)V

    .line 32
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/swingviews/SwingFrame;->addComponent(Ljava/lang/Object;)V

    .line 33
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/swingviews/SwingFrame;->pack()V

    .line 34
    return-void
.end method

.method public setMenuBar(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingFrame;
    move-object v1, p1

    .local v1, "menubar":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavax/swing/JMenuBar;

    invoke-virtual {v2, v3}, Lgnu/kawa/swingviews/SwingFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 39
    return-void
.end method
