.class Lkawa/GuiInPort;
.super Lgnu/mapping/TtyInPort;
.source "GuiInPort.java"


# instance fields
.field document:Lkawa/ReplDocument;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;Lkawa/ReplDocument;)V
    .locals 9

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lkawa/GuiInPort;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "path":Lgnu/text/Path;
    move-object v3, p3

    .local v3, "tie":Lgnu/mapping/OutPort;
    move-object v4, p4

    .local v4, "document":Lkawa/ReplDocument;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    .line 17
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lkawa/GuiInPort;->document:Lkawa/ReplDocument;

    .line 18
    return-void
.end method


# virtual methods
.method public emitPrompt(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lkawa/GuiInPort;
    move-object v1, p1

    .local v1, "prompt":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lkawa/GuiInPort;->document:Lkawa/ReplDocument;

    move-object v3, v1

    sget-object v4, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    invoke-virtual {v2, v3, v4}, Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 23
    return-void
.end method
