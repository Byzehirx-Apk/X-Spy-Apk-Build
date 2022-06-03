.class public Lgnu/kawa/models/Label;
.super Lgnu/kawa/models/Model;
.source "Label.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Label;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/models/Model;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Label;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/models/Model;-><init>()V

    .line 17
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/models/Label;->text:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Label;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Label;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Label;
    return-object v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Label;
    move-object v1, p1

    .local v1, "display":Lgnu/kawa/models/Display;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/models/Display;->addLabel(Lgnu/kawa/models/Label;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Label;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/models/Label;->text:Ljava/lang/String;

    .line 33
    move-object v2, v0

    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Lgnu/kawa/models/Label;->notifyListeners(Ljava/lang/String;)V

    .line 34
    return-void
.end method
