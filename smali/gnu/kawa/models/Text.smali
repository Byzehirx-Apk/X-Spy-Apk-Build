.class public Lgnu/kawa/models/Text;
.super Lgnu/kawa/models/Model;
.source "Text.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# instance fields
.field public final buffer:Lgnu/lists/CharBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Text;
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lgnu/kawa/models/Text;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Text;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/models/Model;-><init>()V

    .line 14
    move-object v2, v0

    new-instance v3, Lgnu/lists/CharBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Lgnu/lists/CharBuffer;-><init>(I)V

    iput-object v3, v2, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    .line 23
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    const/16 v3, 0x63

    iput v3, v2, Lgnu/lists/CharBuffer;->gapEnd:I

    .line 24
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v2}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    iget v3, v3, Lgnu/lists/CharBuffer;->gapEnd:I

    const/16 v4, 0xa

    aput-char v4, v2, v3

    .line 25
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getBuffer()Lgnu/lists/CharBuffer;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Text;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Text;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 9

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Text;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v3}, Lgnu/lists/CharBuffer;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .line 36
    .local v1, "len":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    const/4 v4, 0x0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v3

    move v2, v3

    .line 37
    .local v2, "start":I
    new-instance v3, Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v5}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v5

    move v6, v2

    move v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/models/Text;
    return-object v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Text;
    move-object v1, p1

    .local v1, "display":Lgnu/kawa/models/Display;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/models/Display;->addText(Lgnu/kawa/models/Text;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Text;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v3}, Lgnu/lists/CharBuffer;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .line 43
    .local v2, "size":I
    move v3, v2

    if-lez v3, :cond_0

    .line 44
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/CharBuffer;->delete(II)V

    .line 45
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/CharBuffer;->insert(ILjava/lang/String;Z)V

    .line 46
    move-object v3, v0

    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Lgnu/kawa/models/Text;->notifyListeners(Ljava/lang/String;)V

    .line 47
    return-void
.end method
