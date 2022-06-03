.class Lgnu/kawa/swingviews/GapPosition;
.super Lgnu/lists/SeqPosition;
.source "SwingContent.java"

# interfaces
.implements Ljavax/swing/text/Position;


# direct methods
.method public constructor <init>(Lgnu/lists/CharBuffer;I)V
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/GapPosition;
    move-object v1, p1

    .local v1, "content":Lgnu/lists/CharBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move v6, v2

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-direct {v3, v4, v5, v6}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getOffset()I
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/GapPosition;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/swingviews/GapPosition;->nextIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/swingviews/GapPosition;
    return v0
.end method
