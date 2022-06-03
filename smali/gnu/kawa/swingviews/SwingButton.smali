.class public Lgnu/kawa/swingviews/SwingButton;
.super Ljavax/swing/JButton;
.source "SwingButton.java"

# interfaces
.implements Lgnu/kawa/models/ModelListener;


# instance fields
.field model:Lgnu/kawa/models/Button;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Button;)V
    .locals 10

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingButton;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Button;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/kawa/models/Button;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 15
    move-object v5, v0

    new-instance v6, Lgnu/kawa/swingviews/SwModel;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lgnu/kawa/swingviews/SwModel;-><init>(Lgnu/kawa/models/Button;)V

    invoke-virtual {v5, v6}, Lgnu/kawa/swingviews/SwingButton;->setModel(Ljavax/swing/ButtonModel;)V

    .line 16
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    .line 17
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/kawa/models/Button;->getAction()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 18
    .local v2, "action":Ljava/lang/Object;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 19
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Lgnu/kawa/swingviews/SwingDisplay;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/kawa/swingviews/SwingButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 20
    :cond_0
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Lgnu/kawa/models/Button;->addListener(Lgnu/kawa/models/ModelListener;)V

    .line 21
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/kawa/models/Button;->getForeground()Ljava/awt/Color;

    move-result-object v5

    move-object v3, v5

    .line 22
    .local v3, "fg":Ljava/awt/Color;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 23
    move-object v5, v0

    move-object v6, v3

    invoke-super {v5, v6}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 24
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/kawa/models/Button;->getBackground()Ljava/awt/Color;

    move-result-object v5

    move-object v4, v5

    .line 25
    .local v4, "bg":Ljava/awt/Color;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 26
    move-object v5, v0

    move-object v6, v4

    invoke-super {v5, v6}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 27
    :cond_2
    return-void
.end method


# virtual methods
.method public modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingButton;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Model;
    move-object v2, p2

    .local v2, "key":Ljava/lang/Object;
    move-object v3, v2

    const-string/jumbo v4, "text"

    if-ne v3, v4, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-ne v3, v4, :cond_1

    .line 56
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    invoke-virtual {v4}, Lgnu/kawa/models/Button;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-super {v3, v4}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    move-object v3, v2

    const-string/jumbo v4, "foreground"

    if-ne v3, v4, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-ne v3, v4, :cond_2

    .line 58
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    invoke-virtual {v4}, Lgnu/kawa/models/Button;->getForeground()Ljava/awt/Color;

    move-result-object v4

    invoke-super {v3, v4}, Ljavax/swing/JButton;->setForeground(Ljava/awt/Color;)V

    goto :goto_0

    .line 59
    :cond_2
    move-object v3, v2

    const-string/jumbo v4, "background"

    if-ne v3, v4, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-ne v3, v4, :cond_0

    .line 60
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    invoke-virtual {v4}, Lgnu/kawa/models/Button;->getBackground()Ljava/awt/Color;

    move-result-object v4

    invoke-super {v3, v4}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    goto :goto_0
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingButton;
    move-object v1, p1

    .local v1, "bg":Ljava/awt/Color;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-nez v2, :cond_0

    .line 48
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/models/Button;->setBackground(Ljava/awt/Color;)V

    goto :goto_0
.end method

.method public setForeground(Ljava/awt/Color;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingButton;
    move-object v1, p1

    .local v1, "fg":Ljava/awt/Color;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-nez v2, :cond_0

    .line 40
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavax/swing/JButton;->setForeground(Ljava/awt/Color;)V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/models/Button;->setForeground(Ljava/awt/Color;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingButton;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-nez v2, :cond_0

    .line 32
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/models/Button;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
