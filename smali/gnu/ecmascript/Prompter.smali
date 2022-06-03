.class Lgnu/ecmascript/Prompter;
.super Lgnu/mapping/Procedure1;
.source "Prompter.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 4
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Prompter;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Prompter;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/mapping/InPort;

    invoke-virtual {v2, v3}, Lgnu/ecmascript/Prompter;->prompt(Lgnu/mapping/InPort;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/ecmascript/Prompter;
    return-object v0
.end method

.method prompt(Lgnu/mapping/InPort;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Prompter;
    move-object v1, p1

    .local v1, "port":Lgnu/mapping/InPort;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(EcmaScript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/ecmascript/Prompter;
    return-object v0
.end method
