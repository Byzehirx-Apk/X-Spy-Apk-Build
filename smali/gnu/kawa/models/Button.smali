.class public Lgnu/kawa/models/Button;
.super Lgnu/kawa/models/Model;
.source "Button.java"


# instance fields
.field action:Ljava/lang/Object;

.field background:Ljava/awt/Color;

.field disabled:Z

.field foreground:Ljava/awt/Color;

.field text:Ljava/lang/String;

.field width:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/models/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Button;->action:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Button;
    return-object v0
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Button;->background:Ljava/awt/Color;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Button;
    return-object v0
.end method

.method public getForeground()Ljava/awt/Color;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Button;->foreground:Ljava/awt/Color;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Button;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Button;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Button;
    return-object v0
.end method

.method public isDisabled()Z
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/kawa/models/Button;->disabled:Z

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Button;
    return v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, p1

    .local v1, "display":Lgnu/kawa/models/Display;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/models/Display;->addButton(Lgnu/kawa/models/Button;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public setAction(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, p1

    .local v1, "action":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/models/Button;->action:Ljava/lang/Object;

    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, p1

    .local v1, "bg":Ljava/awt/Color;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/models/Button;->background:Ljava/awt/Color;

    .line 45
    move-object v2, v0

    const-string/jumbo v3, "background"

    invoke-virtual {v2, v3}, Lgnu/kawa/models/Button;->notifyListeners(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setDisabled(Z)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move v1, p1

    .local v1, "disabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/kawa/models/Button;->disabled:Z

    return-void
.end method

.method public setForeground(Ljava/awt/Color;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, p1

    .local v1, "fg":Ljava/awt/Color;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/models/Button;->foreground:Ljava/awt/Color;

    .line 38
    move-object v2, v0

    const-string/jumbo v3, "foreground"

    invoke-virtual {v2, v3}, Lgnu/kawa/models/Button;->notifyListeners(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Button;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/models/Button;->text:Ljava/lang/String;

    .line 28
    move-object v2, v0

    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Lgnu/kawa/models/Button;->notifyListeners(Ljava/lang/String;)V

    .line 29
    return-void
.end method
