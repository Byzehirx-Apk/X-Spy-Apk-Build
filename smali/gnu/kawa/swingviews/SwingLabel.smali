.class Lgnu/kawa/swingviews/SwingLabel;
.super Ljavax/swing/JLabel;
.source "SwingDisplay.java"

# interfaces
.implements Lgnu/kawa/models/ModelListener;


# instance fields
.field model:Lgnu/kawa/models/Label;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Label;)V
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingLabel;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Label;
    move-object v3, v0

    invoke-direct {v3}, Ljavax/swing/JLabel;-><init>()V

    .line 152
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/swingviews/SwingLabel;->model:Lgnu/kawa/models/Label;

    .line 153
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/kawa/models/Label;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 154
    .local v2, "text":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 155
    move-object v3, v0

    move-object v4, v2

    invoke-super {v3, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 156
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/kawa/models/Label;->addListener(Lgnu/kawa/models/ModelListener;)V

    .line 157
    return-void
.end method


# virtual methods
.method public modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingLabel;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Model;
    move-object v2, p2

    .local v2, "key":Ljava/lang/Object;
    move-object v3, v2

    const-string/jumbo v4, "text"

    if-ne v3, v4, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/swingviews/SwingLabel;->model:Lgnu/kawa/models/Label;

    if-ne v3, v4, :cond_0

    .line 162
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/swingviews/SwingLabel;->model:Lgnu/kawa/models/Label;

    invoke-virtual {v4}, Lgnu/kawa/models/Label;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-super {v3, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingLabel;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/SwingLabel;->model:Lgnu/kawa/models/Label;

    if-nez v2, :cond_0

    .line 168
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/SwingLabel;->model:Lgnu/kawa/models/Label;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
