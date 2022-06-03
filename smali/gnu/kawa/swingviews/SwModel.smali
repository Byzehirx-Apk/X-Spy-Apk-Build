.class Lgnu/kawa/swingviews/SwModel;
.super Ljavax/swing/DefaultButtonModel;
.source "SwingButton.java"


# instance fields
.field model:Lgnu/kawa/models/Button;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Button;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwModel;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Button;
    move-object v2, v0

    invoke-direct {v2}, Ljavax/swing/DefaultButtonModel;-><init>()V

    .line 70
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/swingviews/SwModel;->model:Lgnu/kawa/models/Button;

    .line 71
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/kawa/models/Button;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/swingviews/SwModel;->setActionCommand(Ljava/lang/String;)V

    .line 72
    return-void
.end method
