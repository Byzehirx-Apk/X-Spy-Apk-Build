.class public Lkawa/GuiConsole;
.super Ljavax/swing/JFrame;
.source "GuiConsole.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Lkawa/ReplDocument$DocumentCloseListener;


# static fields
.field private static CLOSE:Ljava/lang/String;

.field private static EXIT:Ljava/lang/String;

.field private static NEW:Ljava/lang/String;

.field private static NEW_SHARED:Ljava/lang/String;

.field private static PURGE_MESSAGE:Ljava/lang/String;

.field static window_number:I


# instance fields
.field document:Lkawa/ReplDocument;

.field pane:Lkawa/ReplPane;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "Close"

    sput-object v0, Lkawa/GuiConsole;->CLOSE:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "Exit"

    sput-object v0, Lkawa/GuiConsole;->EXIT:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "New"

    sput-object v0, Lkawa/GuiConsole;->NEW:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "New (Shared)"

    sput-object v0, Lkawa/GuiConsole;->NEW_SHARED:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "Purge Buffer"

    sput-object v0, Lkawa/GuiConsole;->PURGE_MESSAGE:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput v0, Lkawa/GuiConsole;->window_number:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lkawa/GuiConsole;
    move-object v1, v0

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .locals 11

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lkawa/GuiConsole;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "penvironment":Lgnu/mapping/Environment;
    move v3, p3

    .local v3, "shared":Z
    move-object v4, v0

    const-string/jumbo v5, "Kawa"

    invoke-direct {v4, v5}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 66
    move-object v4, v0

    new-instance v5, Lkawa/ReplDocument;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lkawa/ReplDocument;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    invoke-virtual {v4, v5}, Lkawa/GuiConsole;->init(Lkawa/ReplDocument;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lkawa/ReplDocument;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lkawa/GuiConsole;
    move-object v1, p1

    .local v1, "doc":Lkawa/ReplDocument;
    move-object v2, v0

    const-string/jumbo v3, "Kawa"

    invoke-direct {v2, v3}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 44
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/GuiConsole;->init(Lkawa/ReplDocument;)V

    .line 45
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    const/4 v2, 0x0

    sput-boolean v2, Lkawa/repl;->noConsole:Z

    .line 29
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    array-length v4, v4

    invoke-static {v2, v3, v4}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    move-result v2

    move v1, v2

    .line 30
    .local v1, "iArg":I
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 31
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 32
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 33
    new-instance v2, Lkawa/GuiConsole;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lkawa/GuiConsole;-><init>()V

    .line 34
    return-void
.end method

.method private setupMenus()V
    .locals 10

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lkawa/GuiConsole;
    new-instance v6, Lkawa/GuiConsole$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lkawa/GuiConsole$1;-><init>(Lkawa/GuiConsole;)V

    move-object v5, v6

    .line 96
    .local v5, "windowExitCmd":Ljava/awt/event/WindowListener;
    new-instance v6, Ljava/awt/MenuBar;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/awt/MenuBar;-><init>()V

    move-object v1, v6

    .line 97
    .local v1, "menubar":Ljava/awt/MenuBar;
    new-instance v6, Ljava/awt/Menu;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "File"

    invoke-direct {v7, v8}, Ljava/awt/Menu;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 98
    .local v2, "fileMenu":Ljava/awt/Menu;
    new-instance v6, Ljava/awt/Menu;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Utilities"

    invoke-direct {v7, v8}, Ljava/awt/Menu;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 100
    .local v3, "utilitiesMenu":Ljava/awt/Menu;
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/awt/MenuBar;->add(Ljava/awt/Menu;)Ljava/awt/Menu;

    move-result-object v6

    .line 101
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/awt/MenuBar;->add(Ljava/awt/Menu;)Ljava/awt/Menu;

    move-result-object v6

    .line 103
    new-instance v6, Ljava/awt/MenuItem;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sget-object v8, Lkawa/GuiConsole;->NEW:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 104
    .local v4, "menuItem":Ljava/awt/MenuItem;
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 105
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    move-result-object v6

    .line 107
    new-instance v6, Ljava/awt/MenuItem;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sget-object v8, Lkawa/GuiConsole;->NEW_SHARED:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 108
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 109
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    move-result-object v6

    .line 111
    new-instance v6, Ljava/awt/MenuItem;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sget-object v8, Lkawa/GuiConsole;->CLOSE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 112
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 113
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    move-result-object v6

    .line 115
    new-instance v6, Ljava/awt/MenuItem;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sget-object v8, Lkawa/GuiConsole;->EXIT:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 116
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 117
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lkawa/GuiConsole;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 118
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    move-result-object v6

    .line 120
    new-instance v6, Ljava/awt/MenuItem;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sget-object v8, Lkawa/GuiConsole;->PURGE_MESSAGE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 121
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 122
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    move-result-object v6

    .line 124
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lkawa/GuiConsole;->setMenuBar(Ljava/awt/MenuBar;)V

    .line 125
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 9

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lkawa/GuiConsole;
    move-object v1, p1

    .local v1, "e":Ljava/awt/event/ActionEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 131
    .local v2, "cmd":Ljava/lang/String;
    move-object v3, v2

    sget-object v4, Lkawa/GuiConsole;->NEW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    new-instance v3, Lkawa/GuiConsole;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    iget-object v5, v5, Lkawa/ReplDocument;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getGlobal()Lgnu/mapping/Environment;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    .line 144
    :goto_0
    return-void

    .line 133
    :cond_0
    move-object v3, v2

    sget-object v4, Lkawa/GuiConsole;->NEW_SHARED:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    new-instance v3, Lkawa/GuiConsole;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    iget-object v5, v5, Lkawa/ReplDocument;->language:Lgnu/expr/Language;

    move-object v6, v0

    iget-object v6, v6, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    iget-object v6, v6, Lkawa/ReplDocument;->environment:Lgnu/mapping/Environment;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    goto :goto_0

    .line 135
    :cond_1
    move-object v3, v2

    sget-object v4, Lkawa/GuiConsole;->EXIT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 137
    :cond_2
    move-object v3, v2

    sget-object v4, Lkawa/GuiConsole;->CLOSE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/GuiConsole;->close()V

    goto :goto_0

    .line 139
    :cond_3
    move-object v3, v2

    sget-object v4, Lkawa/GuiConsole;->PURGE_MESSAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    move-object v3, v0

    iget-object v3, v3, Lkawa/GuiConsole;->pane:Lkawa/ReplPane;

    iget-object v3, v3, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    invoke-virtual {v3}, Lkawa/ReplDocument;->deleteOldText()V

    goto :goto_0

    .line 143
    :cond_4
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown menu action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method close()V
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lkawa/GuiConsole;
    move-object v1, v0

    iget-object v1, v1, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkawa/ReplDocument;->removeDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V

    .line 79
    move-object v1, v0

    invoke-virtual {v1}, Lkawa/GuiConsole;->dispose()V

    .line 80
    return-void
.end method

.method public closed(Lkawa/ReplDocument;)V
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lkawa/GuiConsole;
    move-object v1, p1

    .local v1, "doc":Lkawa/ReplDocument;
    move-object v2, v0

    invoke-virtual {v2}, Lkawa/GuiConsole;->close()V

    .line 75
    return-void
.end method

.method init(Lkawa/ReplDocument;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lkawa/GuiConsole;
    move-object v1, p1

    .local v1, "doc":Lkawa/ReplDocument;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    .line 50
    move-object v2, v0

    iget-object v2, v2, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lkawa/ReplDocument;->addDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V

    .line 51
    move-object v2, v0

    new-instance v3, Lkawa/ReplPane;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    invoke-direct {v4, v5}, Lkawa/ReplPane;-><init>(Lkawa/ReplDocument;)V

    iput-object v3, v2, Lkawa/GuiConsole;->pane:Lkawa/ReplPane;

    .line 52
    sget v2, Lkawa/GuiConsole;->window_number:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    sput v2, Lkawa/GuiConsole;->window_number:I

    .line 53
    move-object v2, v0

    new-instance v3, Ljava/awt/BorderLayout;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/awt/BorderLayout;-><init>(II)V

    invoke-virtual {v2, v3}, Lkawa/GuiConsole;->setLayout(Ljava/awt/LayoutManager;)V

    .line 54
    move-object v2, v0

    const-string/jumbo v3, "Center"

    new-instance v4, Ljavax/swing/JScrollPane;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lkawa/GuiConsole;->pane:Lkawa/ReplPane;

    invoke-direct {v5, v6}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {v2, v3, v4}, Lkawa/GuiConsole;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v2

    .line 55
    move-object v2, v0

    invoke-direct {v2}, Lkawa/GuiConsole;->setupMenus()V

    .line 57
    move-object v2, v0

    const/16 v3, 0x64

    sget v4, Lkawa/GuiConsole;->window_number:I

    mul-int/2addr v3, v4

    const/16 v4, 0x32

    sget v5, Lkawa/GuiConsole;->window_number:I

    mul-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lkawa/GuiConsole;->setLocation(II)V

    .line 58
    move-object v2, v0

    const/16 v3, 0x2bc

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lkawa/GuiConsole;->setSize(II)V

    .line 59
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lkawa/GuiConsole;->setVisible(Z)V

    .line 60
    return-void
.end method
